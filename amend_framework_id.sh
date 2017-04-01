#!/bin/bash
#
# Add miui smali files
#
# $1:pre add smalis
# $2: target src dir

if [ $2 = "out/framework" ]
then
  sed -i 's/.field static final TRANSACTION_deleteApplicationCacheFilesForUser:I = 0x5c/.field static final TRANSACTION_deleteApplicationCacheFilesForUser:I = 0xbf/g' $1/framework/smali/android/content/pm/IPackageManager\$Stub.smali.part
  sed -i 's/.field static final TRANSACTION_setMiuiTelephony:I = 0x20/.field static final TRANSACTION_setMiuiTelephony:I = 0xfe/g' $1/framework/smali/com/android/internal/telephony/ITelephonyRegistry\$Stub.smali.part
  sed -i 's/.field static final TRANSACTION_getMiuiTelephony:I = 0x21/.field static final TRANSACTION_getMiuiTelephony:I = 0xff/g' $1/framework/smali/com/android/internal/telephony/ITelephonyRegistry\$Stub.smali.part
  sed -i 's/0x20/0xfe/g' $1/framework/smali/com/android/internal/telephony/ITelephonyRegistry\$Stub\$Proxy.smali.part
  sed -i 's/0x21/0xff/g' $1/framework/smali/com/android/internal/telephony/ITelephonyRegistry\$Stub\$Proxy.smali.part
fi

if [ $2 = "out/services" ]
then
  sed -i 's/Lcom\/android\/server\/pm\/PackageManagerService\$16/Lcom\/android\/server\/pm\/PackageManagerService\$44/g' $1/services/smali/com/android/server/pm/PackageManagerService.smali.part
fi
