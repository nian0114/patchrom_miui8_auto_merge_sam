.class Lcom/android/settings_ex/DataUsageSummary$31$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DataUsageSummary$31;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/DataUsageSummary$31;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary$31;)V
    .locals 0

    .prologue
    .line 3615
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$31$1;->this$1:Lcom/android/settings_ex/DataUsageSummary$31;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3618
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$31$1;->this$1:Lcom/android/settings_ex/DataUsageSummary$31;

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary$31;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->resetTimeData(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$5600(Lcom/android/settings_ex/DataUsageSummary;I)V

    .line 3619
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$31$1;->this$1:Lcom/android/settings_ex/DataUsageSummary$31;

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary$31;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mTotalReceive_menu:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$5700(Lcom/android/settings_ex/DataUsageSummary;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$31$1;->this$1:Lcom/android/settings_ex/DataUsageSummary$31;

    iget-object v1, v1, Lcom/android/settings_ex/DataUsageSummary$31;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$2400(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 3620
    return-void
.end method
