#
# Makefile for SM-G9350
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_G9350.zip

# the location for local-ota to save target-file
local-previous-target-dir :=

# All apps from original ZIP, but has smali files chanded
local-modified-apps := SecSettingsProvider2

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps :=  MediaProvider SettingsProvider

local-miui-modified-apps := Mms MiuiSystemUI TeleService

local-miui-modified-apps-smali := Telecom

PORT_PRODUCT := nian_g9350

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := XXXHDPI

# All apps need to be removed from original ZIP file
#local-remove-apps   :=

include phoneapps.mk

# The certificate for release version
local-certificate-dir :=

local-target-bit := 64

# To include the local targets before and after zip the final ZIP file,
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
#updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
#pre_install_data_packages := $(TMP_DIR)/pre_install_apk_pkgname.txt
local-pre-zip-misc:
	@echo Update boot.img
	cp -rf other/nian_boot.img $(ZIP_DIR)/boot.img
	cp -rf other/system $(ZIP_DIR)/
	cp -rf ../other/system/app/Email $(ZIP_DIR)/system/app/
	cp -rf ../other/system/lib $(ZIP_DIR)/system/
	cp -rf ../other/system/lib64 $(ZIP_DIR)/system/
	cp -rf ../other/system/priv-app/MiGuard $(ZIP_DIR)/system/priv-app/
	cp -rf ../other/system/xbin/su $(ZIP_DIR)/system/xbin/

	rm -rf $(ZIP_DIR)/system/preload
	rm -rf $(ZIP_DIR)/system/preloadedmdm
	rm -rf $(ZIP_DIR)/system/container
	rm -rf $(ZIP_DIR)/system/etc/secure_storage/com.sec.knox.store*
