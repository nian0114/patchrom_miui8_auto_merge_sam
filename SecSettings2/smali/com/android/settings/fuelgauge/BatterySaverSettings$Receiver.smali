.class final Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "BatterySaverSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;->this$0:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;
    .param p2, "x1"    # Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$1;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;-><init>(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 189
    # getter for: Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->DEBUG:Z
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BatterySaverSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;->this$0:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    # getter for: Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->access$500(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;->this$0:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    # getter for: Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mUpdateSwitch:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->access$400(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 194
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;->mRegistered:Z

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;->this$0:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    # getter for: Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->access$600(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;->mRegistered:Z

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;->this$0:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    # getter for: Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->access$600(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$Receiver;->mRegistered:Z

    goto :goto_0
.end method
