.class Lcom/android/settings_ex/DataUsageSummary$33;
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
    .line 3654
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$33;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 3657
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$33;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$5900(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 3659
    .local v0, "restrictBackground":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 3663
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$33;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 3667
    :goto_1
    return-void

    .end local v0    # "restrictBackground":Z
    :cond_0
    move v0, v1

    .line 3657
    goto :goto_0

    .line 3665
    .restart local v0    # "restrictBackground":Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$33;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setAppRestrictBackground(Z)V
    invoke-static {v2, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$6000(Lcom/android/settings_ex/DataUsageSummary;Z)V

    goto :goto_1
.end method
