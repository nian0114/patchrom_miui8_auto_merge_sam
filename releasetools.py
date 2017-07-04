import common
import edify_generator
import os

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "assert" in edify.script[i]:
      edify.script[i] = ''
      return

def RemoveDeviceGetprop(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ro.product" in edify.script[i]:
      edify.script[i] = ''
      return

def RemoveBootImage(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "boot.img" in edify.script[i]:
      edify.script[i] = ''
      return

def InstallImage(img_name, img_file, partition, info):
  common.ZipWriteStr(info.output_zip, img_name, img_file)
  info.script.AppendExtra(('package_extract_file("' + img_name + '", "' + partition + '");'))

def AddBootScripts(info):
    path='other/devices'
    fns=[os.path.join(root,fn) for root,dirs,files in os.walk(path) for fn in files]
    for f in fns:
        print(f)
        common.ZipWriteStr(info.output_zip, f.replace("other/",""), open(f).read())

    edify = info.script
    for i in xrange(len(edify.script)):
        if ");" in edify.script[i] and 'show_progress(0.050000, 5);' in edify.script[i] :
			edify.script[i] += '''
ifelse(is_substring("G935", getprop("ro.bootloader")), package_extract_file("devices/g935x/boot.img", "/dev/block/platform/155a0000.ufs/by-name/BOOT"));
ifelse(is_substring("G930", getprop("ro.bootloader")), package_extract_file("devices/g930x/boot.img", "/dev/block/platform/155a0000.ufs/by-name/BOOT"));'''
    return

def AddAdditionsApp(info):
    path='../other/select/system'
    fns=[os.path.join(root,fn) for root,dirs,files in os.walk(path) for fn in files]
    for f in fns:
        print(f)
        common.ZipWriteStr(info.output_zip, f.replace("../other/select/",""), open(f).read())

def FullOTA_InstallEnd(info):
    RemoveDeviceAssert(info)
    RemoveDeviceGetprop(info)
    RemoveBootImage(info)
    AddBootScripts(info)

def IncrementalOTA_InstallEnd(info):
    RemoveDeviceAssert(info)
    RemoveDeviceGetprop(info)
