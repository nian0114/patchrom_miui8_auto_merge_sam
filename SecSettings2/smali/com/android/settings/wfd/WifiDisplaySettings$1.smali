.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$1;
.super Landroid/hardware/display/ExtendedDisplayListener;
.source "WifiDisplaySettings.java"


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
    .line 233
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/hardware/display/ExtendedDisplayListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDLNAConnectionStatusChanged(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .prologue
    .line 236
    const-string v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDLNAConnectionStatusChanged connected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$000(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mPreviousConnectionType:Lcom/android/settings_ex/wfd/WifiDisplaySettings$ConnectionType;
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$100(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Lcom/android/settings_ex/wfd/WifiDisplaySettings$ConnectionType;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/wfd/WifiDisplaySettings$ConnectionType;->DLNA:Lcom/android/settings_ex/wfd/WifiDisplaySettings$ConnectionType;

    if-ne v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    # invokes: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->prepareConnection()V
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$200(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V

    .line 240
    :cond_0
    return-void
.end method
