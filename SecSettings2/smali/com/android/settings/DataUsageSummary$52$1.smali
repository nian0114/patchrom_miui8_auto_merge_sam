.class Lcom/android/settings_ex/DataUsageSummary$52$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DataUsageSummary$52;->onConnected(Lcom/opera/max/sdk/traffic/ITrafficService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/DataUsageSummary$52;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary$52;)V
    .locals 0

    .prologue
    .line 6996
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$52$1;->this$1:Lcom/android/settings_ex/DataUsageSummary$52;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6998
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$52$1;->this$1:Lcom/android/settings_ex/DataUsageSummary$52;

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary$52;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updateSavedTvState()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$9000(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 6999
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$52$1;->this$1:Lcom/android/settings_ex/DataUsageSummary$52;

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary$52;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updateSavedDataCircleView()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$1100(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 7000
    return-void
.end method
