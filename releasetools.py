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

def AddArgsForFormatSystem(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "mount(" in edify.script[i] and "system" in edify.script[i]:
      edify.script[i] = 'mount("ext4", "EMMC", "/dev/block/bootdevice/by-name/system", "/system");'
      return

def AddArgsForFormatData(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "mount(" in edify.script[i] and "userdata" in edify.script[i]:
      edify.script[i] = 'mount("ext4", "EMMC", "/dev/block/bootdevice/by-name/userdata", "/data");'
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
    AddArgsForFormatSystem(info)
    AddArgsForFormatData(info)

def IncrementalOTA_InstallEnd(info):
    RemoveDeviceAssert(info)
    RemoveDeviceGetprop(info)
