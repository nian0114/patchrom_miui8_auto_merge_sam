.class Lcom/android/settings_ex/fmm/FindMyMobileSettings$1;
.super Landroid/database/ContentObserver;
.source "FindMyMobileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fmm/FindMyMobileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fmm/FindMyMobileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fmm/FindMyMobileSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings_ex/fmm/FindMyMobileSettings$1;->this$0:Lcom/android/settings_ex/fmm/FindMyMobileSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 146
    iget-object v2, p0, Lcom/android/settings_ex/fmm/FindMyMobileSettings$1;->this$0:Lcom/android/settings_ex/fmm/FindMyMobileSettings;

    # invokes: Lcom/android/settings_ex/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings_ex/fmm/FindMyMobileSettings;->access$000(Lcom/android/settings_ex/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "remote_control"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 149
    .local v0, "Enabled":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 150
    const-string v2, "FindMyMobileSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remote_control value is changed to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v2, p0, Lcom/android/settings_ex/fmm/FindMyMobileSettings$1;->this$0:Lcom/android/settings_ex/fmm/FindMyMobileSettings;

    # getter for: Lcom/android/settings_ex/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/android/settings_ex/fmm/FindMyMobileSettings;->access$100(Lcom/android/settings_ex/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 153
    :cond_1
    return-void
.end method
