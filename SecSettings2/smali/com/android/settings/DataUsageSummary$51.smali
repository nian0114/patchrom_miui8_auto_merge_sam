.class Lcom/android/settings_ex/DataUsageSummary$51;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings_ex/datasaving/DataSavingHelper$SavingServiceConnectionListener;


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
    .line 6964
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$51;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Lcom/opera/max/sdk/saving/ISavingService;)V
    .locals 4
    .param p1, "service"    # Lcom/opera/max/sdk/saving/ISavingService;

    .prologue
    const/4 v2, 0x1

    .line 6967
    if-eqz p1, :cond_0

    .line 6970
    :try_start_0
    invoke-interface {p1}, Lcom/opera/max/sdk/saving/ISavingService;->getSavingState()I

    move-result v1

    .line 6971
    .local v1, "state":I
    if-ne v1, v2, :cond_1

    .line 6972
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$51;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const/4 v3, 0x1

    # setter for: Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$1002(Lcom/android/settings_ex/DataUsageSummary;Z)Z

    .line 6978
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$51;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # invokes: Lcom/android/settings_ex/DataUsageSummary;->updateSavingState()V
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$8800(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 6979
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$51;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mDataSavingHelper:Lcom/android/settings_ex/datasaving/DataSavingHelper;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$7100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/datasaving/DataSavingHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$51;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    # getter for: Lcom/android/settings_ex/DataUsageSummary;->mSavingServiceStateListener:Lcom/opera/max/sdk/saving/IStateListener;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$9300(Lcom/android/settings_ex/DataUsageSummary;)Lcom/opera/max/sdk/saving/IStateListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/datasaving/DataSavingHelper;->registerSavingStateListener(Lcom/opera/max/sdk/saving/IStateListener;)V

    .line 6984
    .end local v1    # "state":I
    :cond_0
    :goto_1
    return-void

    .line 6974
    .restart local v1    # "state":I
    :cond_1
    const-string v2, "DataUsage"

    const-string v3, "mSSCListener state != DataSavingHelper.SAVING_ENABLED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6975
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$51;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const/4 v3, 0x0

    # setter for: Lcom/android/settings_ex/DataUsageSummary;->mIsDataCompressionEnabled:Z
    invoke-static {v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$1002(Lcom/android/settings_ex/DataUsageSummary;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6980
    .end local v1    # "state":I
    :catch_0
    move-exception v0

    .line 6981
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onDisconnected()V
    .locals 0

    .prologue
    .line 6989
    return-void
.end method
