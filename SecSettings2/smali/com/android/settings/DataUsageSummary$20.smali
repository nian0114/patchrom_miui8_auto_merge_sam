.class Lcom/android/settings_ex/DataUsageSummary$20;
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
    .line 3271
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$20;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3274
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$20;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$4000(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 3275
    .local v0, "confirmAtBoot":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$20;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data_question"

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3281
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$20;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mConfirmAtBoot:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$4000(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 3282
    return-void

    .end local v0    # "confirmAtBoot":Z
    :cond_0
    move v0, v2

    .line 3274
    goto :goto_0

    .restart local v0    # "confirmAtBoot":Z
    :cond_1
    move v1, v2

    .line 3275
    goto :goto_1
.end method
