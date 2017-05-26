#/bin/bash
PWD=`pwd`
OUT_DIR=$PWD/out
TARGET_FILES_DIR=$OUT_DIR/target_files
build_prop_file=$TARGET_FILES_DIR/SYSTEM/build.prop
OTHER_DIR=$PWD/other

echo "Use custom updater bin file"
#cp $OTHER_DIR/updater $TARGET_FILES_DIR/OTA/bin
