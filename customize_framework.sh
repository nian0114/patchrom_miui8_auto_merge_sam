#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
GIT_APPLY=$PORT_ROOT/tools/git.apply
BUILD_OUT=out

function appendSmaliPart() {
  	cd overlay
    for file in `find $1/smali -name *.part`
    do
        filepath=`dirname $file`
        filename=`basename $file .part`
        dstfile="../out/$filepath/$filename"
        cat $file >> $dstfile
    done
	  cd ..
}

function overlaySmali() {
    for file in `find $1/smali -name *.smali`
    do
        filepath=`dirname $file`
        cp -f $file out/$filepath
    done
}

function applyPatch() {
	for file in $1/*.patch
	do
		cp $file out/
		cd out
		git.apply `basename $file`
        for file2 in `find $2 -name *.rej`
        do
            echo "$file2 fail"
            exit 1
        done
		cd ..
	done
}

if [ $2 = "$BUILD_OUT/framework" ]
then
    rm -rf $2/smali/android/widget/Editor*
    cp -rf $1/smali/android/widget/Editor*.smali $2/smali/android/widget/
    sed -i 's/qemu.sf.lcd_density/persist.nian.dens/g' $2/smali/android/util/DisplayMetrics.smali
    appendSmaliPart "framework"
    cp -rf overlay/framework/smali/miui/provider/ExtraGuard.smali $2/smali/miui/provider/
    applyPatch "overlay/framework"
    appendSmaliPart "framework"
fi

if [ $2 = "$BUILD_OUT/services" ]
then
    find $2/smali/com/android/server/pm/ -type f |xargs sed -i "s#iget-object \(v[0-9]*\), [pv][0-9]*, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;#sget-object \1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;#g"
    applyPatch "overlay/services"
    cp -rf overlay/backup/* $2/smali/com/android/server/backup/
    appendSmaliPart "services"
    cp -rf overlay/services/smali/com/android/server/AppOpsServiceState.smali $2/smali/com/android/server/
    cp -rf overlay/services/smali/com/android/server/pm/DefaultPermissionGrantPolicyInjector.smali $2/smali/com/android/server/pm/
    sed -i 's/user_setup_complete/xbt_setup_complete/g' `grep -lnr "user_setup_complete" $2/smali`
    sed -i 's/screen_buttons_timeout/button_key_light/g' `grep -lnr "screen_buttons_timeout" $2/smali`
fi

if [ $2 = "$BUILD_OUT/telephony-common" ]
then
    appendSmaliPart "telephony-common"
fi

if [ $2 = "$BUILD_OUT/wifi-service" ]
then
    applyPatch "overlay/wifi-service"
fi
