#/bin/bash

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply

device_name=`grep "ro.product.device=" stockrom/system/build.prop | cut -d '=' -f2`
curdir=`pwd`

function applyPatch () {
    for patch in `find $1 -name "*.patch"`
    do
        cd out
        $GIT_APPLY ../$patch
        cd ..
        for rej in `find $2 -name *.rej`
        do
            echo "Patch $patch fail"
            exit 1
        done
    done
}

function appendSmaliPart() {
  for file in `find $1 -name *.part`
  do
    filepath=`dirname $file`
    filename=`basename $file .part`
    dstfile="out/$filepath/$filename"
    cat $file >> $dstfile
  done
}

function isPatchrom() {
  sed -i -e "s/\"hammerhead\"/\"$device_name\"/g" `grep -lnr "hammerhead" $1/smali`
}

function changeID() {
  $PORT_ROOT/tools/idtoname.py $PORT_ROOT/tools/public-$2.xml $1/smali
  $PORT_ROOT/tools/nametoid.py out/framework-res/res/values/public.xml $1/smali
}

if [ $1 = "MiuiSystemUI" ];then
    appendSmaliPart "MiuiSystemUI"
fi

if [ $1 = "Telecom" ];then
    applyPatch $1 $2
fi
