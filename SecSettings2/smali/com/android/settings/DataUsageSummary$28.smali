.class Lcom/android/settings_ex/DataUsageSummary$28;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 3571
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$28;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3574
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$28;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$5400(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3575
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$28;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const-wide/16 v2, -0x1

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$600(Lcom/android/settings_ex/DataUsageSummary;J)V

    .line 3576
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$28;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mAlertAtWarning:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$5400(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 3586
    :cond_0
    :goto_0
    return-void

    .line 3579
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$28;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "confirmWarning"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3580
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$28;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$3800(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3581
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$28;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$3800(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 3583
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$28;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$28;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmWarningFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v1

    # setter for: Lcom/android/settings_ex/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$3802(Lcom/android/settings_ex/DataUsageSummary;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    goto :goto_0
.end method
