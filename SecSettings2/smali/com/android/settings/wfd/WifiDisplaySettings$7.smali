.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$7;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 1377
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V
    .locals 2
    .param p1, "deviceType"    # Lcom/samsung/android/allshare/Device$DeviceType;
    .param p2, "device"    # Lcom/samsung/android/allshare/Device;
    .param p3, "error"    # Lcom/samsung/android/allshare/ERROR;

    .prologue
    .line 1384
    const-string v0, "WifiDisplaySettings"

    const-string v1, "mImageFinderListener - onDeviceAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    const/16 v1, 0x8

    # invokes: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$1100(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V

    .line 1386
    return-void
.end method

.method public onDeviceRemoved(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V
    .locals 2
    .param p1, "deviceType"    # Lcom/samsung/android/allshare/Device$DeviceType;
    .param p2, "device"    # Lcom/samsung/android/allshare/Device;
    .param p3, "error"    # Lcom/samsung/android/allshare/ERROR;

    .prologue
    .line 1379
    const-string v0, "WifiDisplaySettings"

    const-string v1, "mImageFinderListener - onDeviceRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    const/16 v1, 0x8

    # invokes: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$1100(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V

    .line 1381
    return-void
.end method
