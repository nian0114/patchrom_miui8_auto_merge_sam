.class Lcom/android/settings_ex/fmm/FindMyMobileSettings$12;
.super Ljava/lang/Object;
.source "FindMyMobileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fmm/FindMyMobileSettings;->showNotificationChargeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fmm/FindMyMobileSettings;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fmm/FindMyMobileSettings;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/android/settings_ex/fmm/FindMyMobileSettings$12;->this$0:Lcom/android/settings_ex/fmm/FindMyMobileSettings;

    iput-object p2, p0, Lcom/android/settings_ex/fmm/FindMyMobileSettings$12;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 648
    iget-object v1, p0, Lcom/android/settings_ex/fmm/FindMyMobileSettings$12;->this$0:Lcom/android/settings_ex/fmm/FindMyMobileSettings;

    # invokes: Lcom/android/settings_ex/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings_ex/fmm/FindMyMobileSettings;->access$900(Lcom/android/settings_ex/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "remote_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 649
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.remotecontrol_on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 650
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "FindMyMobileSettings"

    const-string v2, " onCheckedChanged[remotecontrol_on]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v1, p0, Lcom/android/settings_ex/fmm/FindMyMobileSettings$12;->this$0:Lcom/android/settings_ex/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 653
    iget-object v1, p0, Lcom/android/settings_ex/fmm/FindMyMobileSettings$12;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    sput-boolean v3, Lcom/android/settings_ex/fmm/FindMyMobileSettings;->chkboxFlag:Z

    .line 656
    :cond_0
    return-void
.end method
