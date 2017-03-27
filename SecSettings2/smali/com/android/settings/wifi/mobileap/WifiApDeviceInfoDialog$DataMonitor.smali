.class Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;
.super Landroid/os/Handler;
.source "WifiApDeviceInfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataMonitor"
.end annotation


# instance fields
.field private running:Z

.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 127
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 125
    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;->running:Z

    .line 128
    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;->running:Z

    .line 129
    return-void
.end method


# virtual methods
.method getRunning()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;->running:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 149
    sget-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mApDeviceInfoDialogShow:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;->running:Z

    if-ne v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;->this$0:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->updateRestData()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->access$000(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;)V

    .line 151
    const/4 v0, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;->sendEmptyMessageDelayed(IJ)Z

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;->pause()V

    goto :goto_0
.end method

.method pause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;->running:Z

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;->removeMessages(I)V

    .line 141
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;->running:Z

    .line 133
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog$DataMonitor;->sendEmptyMessage(I)Z

    .line 136
    :cond_0
    return-void
.end method
