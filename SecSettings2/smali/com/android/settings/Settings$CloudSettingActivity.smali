.class public Lcom/android/settings_ex/Settings$CloudSettingActivity;
.super Lcom/android/settings_ex/SettingsActivityWrapper;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudSettingActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivityWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 400
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivityWrapper;->onCreate(Landroid/os/Bundle;)V

    .line 402
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings$CloudSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings$CloudSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0e128d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 404
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings$CloudSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0e128e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings$CloudSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 408
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings$CloudSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 410
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 414
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 420
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivityWrapper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 416
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings$CloudSettingActivity;->finish()V

    .line 417
    const/4 v0, 0x1

    goto :goto_0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
