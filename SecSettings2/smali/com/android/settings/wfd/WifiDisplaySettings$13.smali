.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$13;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1636
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1639
    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange selfChange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    # invokes: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$2000(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1642
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    .line 1645
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$000(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mReadyToConnect:Z
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$1800(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1646
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$13;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    const/4 v2, 0x1

    # invokes: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$1100(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1652
    :cond_2
    :goto_0
    return-void

    .line 1648
    :catch_0
    move-exception v0

    .line 1649
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WifiDisplaySettings"

    const-string v2, "Print call stack for debugging."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
