.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$4;
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
    .line 1011
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1014
    const-string v0, "WifiDisplaySettings"

    const-string v1, "mRestartScan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    iget-object v0, v0, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->startScanWifiDisplays()V

    .line 1018
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->updateDLNAList()V

    .line 1020
    :cond_0
    return-void
.end method
