.class Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment;)V
    .locals 0

    .prologue
    .line 5451
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment$1;->this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 5454
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment$1;->this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageSummary;

    .line 5455
    .local v0, "target":Lcom/android/settings_ex/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 5456
    const/4 v1, 0x1

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setAppRestrictBackground(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$6000(Lcom/android/settings_ex/DataUsageSummary;Z)V

    .line 5458
    :cond_0
    return-void
.end method
