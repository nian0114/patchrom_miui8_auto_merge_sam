.class Lcom/android/settings_ex/applock/AppLockSettingsActivity$1;
.super Landroid/database/ContentObserver;
.source "AppLockSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applock/AppLockSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applock/AppLockSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applock/AppLockSettingsActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity$1;->this$0:Lcom/android/settings_ex/applock/AppLockSettingsActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 49
    # getter for: Lcom/android/settings_ex/applock/AppLockSettingsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mLockedAppsDBObserver DB changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity$1;->this$0:Lcom/android/settings_ex/applock/AppLockSettingsActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mIsDBChanged:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->access$102(Lcom/android/settings_ex/applock/AppLockSettingsActivity;Z)Z

    .line 51
    return-void
.end method
