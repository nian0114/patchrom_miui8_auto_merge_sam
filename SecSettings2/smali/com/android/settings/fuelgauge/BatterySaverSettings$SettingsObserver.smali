.class final Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatterySaverSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final LOW_POWER_MODE_TRIGGER_LEVEL_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    .line 209
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 205
    const-string v0, "low_power_trigger_level"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;->LOW_POWER_MODE_TRIGGER_LEVEL_URI:Landroid/net/Uri;

    .line 210
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;->LOW_POWER_MODE_TRIGGER_LEVEL_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    # getter for: Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mTriggerPref:Lcom/android/settings_ex/notification/SettingPref;
    invoke-static {v0}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->access$700(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)Lcom/android/settings_ex/notification/SettingPref;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    # getter for: Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->access$600(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 217
    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;->this$0:Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    # invokes: Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;->access$800(Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 221
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings$SettingsObserver;->LOW_POWER_MODE_TRIGGER_LEVEL_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
