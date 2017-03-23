rm -rf out/$1*
make out/$1.jar
adb  -s 311b85ea remount
adb  -s 311b85ea push out/$1.jar /system/framework/
adb  -s 311b85ea reboot
