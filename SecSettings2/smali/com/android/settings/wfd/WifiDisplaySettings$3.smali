.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$3;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1000
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1003
    const-string v0, "WifiDisplaySettings"

    const-string v1, "mScanTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    iget-object v0, v0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->stopScanWifiDisplays()V

    .line 1007
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$500(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mRestartScan:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$400(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1009
    :cond_0
    return-void
.end method
