.class Lcom/android/settings_ex/DataUsageSummary$29;
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
    .line 3590
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$29;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3593
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.lifeservice.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3594
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "id"

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$29;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mSavedIDlist:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$5500(Lcom/android/settings_ex/DataUsageSummary;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3595
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$29;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    .line 3596
    return-void
.end method
