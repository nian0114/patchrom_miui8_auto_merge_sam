.class public Lcom/sec/android/app/camera/receiver/SettingSoftResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingSoftResetReceiver.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    const-string v0, "SettingSoftReset"

    iput-object v0, p0, Lcom/sec/android/app/camera/receiver/SettingSoftResetReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const-string v1, "com.sec.android.app.camera_preferences"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/sec/android/app/camera/receiver/SettingSoftResetReceiver;->TAG:Ljava/lang/String;

    const-string v2, "update setting db for double tab launch as default value"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "double_tab_launch"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 43
    :cond_0
    return-void
.end method
