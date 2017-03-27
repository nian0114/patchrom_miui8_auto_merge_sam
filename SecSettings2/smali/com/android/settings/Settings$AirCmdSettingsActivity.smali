.class public Lcom/android/settings_ex/Settings$AirCmdSettingsActivity;
.super Lcom/android/settings_ex/SettingsActivityWrapper;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AirCmdSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivityWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 427
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 428
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.samsung.android.service.aircommand"

    const-string v2, "com.samsung.android.service.aircommand.AirCommandService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v1, "cause"

    const-string v2, "settings_back"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/Settings$AirCmdSettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 432
    invoke-super {p0}, Lcom/android/settings_ex/SettingsActivityWrapper;->onBackPressed()V

    .line 434
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 437
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 443
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivityWrapper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 439
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings$AirCmdSettingsActivity;->onBackPressed()V

    .line 440
    const/4 v0, 0x1

    goto :goto_0

    .line 437
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
