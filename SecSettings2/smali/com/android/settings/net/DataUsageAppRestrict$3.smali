.class Lcom/android/settings_ex/net/DataUsageAppRestrict$3;
.super Landroid/os/Handler;
.source "DataUsageAppRestrict.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/net/DataUsageAppRestrict;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/net/DataUsageAppRestrict;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/net/DataUsageAppRestrict;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/settings_ex/net/DataUsageAppRestrict$3;->this$0:Lcom/android/settings_ex/net/DataUsageAppRestrict;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 385
    # getter for: Lcom/android/settings_ex/net/DataUsageAppRestrict;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/settings_ex/net/DataUsageAppRestrict;->access$400()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    # getter for: Lcom/android/settings_ex/net/DataUsageAppRestrict;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/settings_ex/net/DataUsageAppRestrict;->access$400()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    # getter for: Lcom/android/settings_ex/net/DataUsageAppRestrict;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/settings_ex/net/DataUsageAppRestrict;->access$400()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 388
    const/4 v0, 0x0

    # setter for: Lcom/android/settings_ex/net/DataUsageAppRestrict;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/net/DataUsageAppRestrict;->access$402(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 389
    iget-object v0, p0, Lcom/android/settings_ex/net/DataUsageAppRestrict$3;->this$0:Lcom/android/settings_ex/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings_ex/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings_ex/net/DataUsageAppRestrict$DataUsageRestrictAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/net/DataUsageAppRestrict;->access$200(Lcom/android/settings_ex/net/DataUsageAppRestrict;)Lcom/android/settings_ex/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    move-result-object v0

    # getter for: Lcom/android/settings_ex/net/DataUsageAppRestrict;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {}, Lcom/android/settings_ex/net/DataUsageAppRestrict;->access$500()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->setEnabled(Z)V

    .line 390
    iget-object v0, p0, Lcom/android/settings_ex/net/DataUsageAppRestrict$3;->this$0:Lcom/android/settings_ex/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings_ex/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings_ex/net/DataUsageAppRestrict$DataUsageRestrictAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/net/DataUsageAppRestrict;->access$200(Lcom/android/settings_ex/net/DataUsageAppRestrict;)Lcom/android/settings_ex/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->notifyDataSetChanged()V

    .line 394
    :cond_0
    return-void
.end method
