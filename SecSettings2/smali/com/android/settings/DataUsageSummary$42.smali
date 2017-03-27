.class Lcom/android/settings_ex/DataUsageSummary$42;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummary.java"


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
    .line 6058
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$42;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6060
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6061
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.settings.ACTION_DATA_KEY_NEGATIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6062
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$42;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$42;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->isMobileDataEnabled()Z
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$8300(Lcom/android/settings_ex/DataUsageSummary;)Z

    move-result v2

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->access$3900(Lcom/android/settings_ex/DataUsageSummary;Z)V

    .line 6066
    :cond_0
    :goto_0
    return-void

    .line 6063
    :cond_1
    const-string v1, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6064
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$42;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
