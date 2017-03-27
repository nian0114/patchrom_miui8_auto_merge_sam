.class Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6$1;
.super Ljava/lang/Object;
.source "NetworkConnectActivity.java"

# interfaces
.implements Lcom/android/settings_ex/networkconnect/FirewallAdapter$OnItemCheckBoxListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6$1;->this$1:Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemCheckBoxChanged(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 419
    if-nez p1, :cond_4

    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 422
    sget-object v2, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    add-int/lit8 v0, v0, 0x1

    .line 421
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    :cond_1
    sget-object v2, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 427
    iget-object v2, p0, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6$1;->this$1:Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;

    iget-object v2, v2, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;->this$0:Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;

    # getter for: Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;->mMobileCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;->access$1000(Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 428
    iget-object v2, p0, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6$1;->this$1:Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;

    iget-object v2, v2, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;->this$0:Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;

    # setter for: Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;->mDataSelectAllFlag:Z
    invoke-static {v2, v3}, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;->access$1102(Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;Z)Z

    .line 452
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 430
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6$1;->this$1:Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;

    iget-object v2, v2, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;->this$0:Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;

    # getter for: Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;->mDataSelectAllFlag:Z
    invoke-static {v2}, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;->access$1100(Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 431
    iget-object v2, p0, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6$1;->this$1:Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;

    iget-object v2, v2, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;->this$0:Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;

    # getter for: Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;->mMobileCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;->access$1000(Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 432
    iget-object v2, p0, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6$1;->this$1:Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;

    iget-object v2, v2, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;->this$0:Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;

    # setter for: Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;->mDataSelectAllFlag:Z
    invoke-static {v2, v4}, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;->access$1102(Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;Z)Z

    goto :goto_1

    .line 435
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_4
    if-ne p1, v3, :cond_2

    .line 436
    const/4 v0, 0x0

    .line 437
    .restart local v0    # "count":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    sget-object v2, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 438
    sget-object v2, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;->isWlanAllowed()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 439
    add-int/lit8 v0, v0, 0x1

    .line 437
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 442
    :cond_6
    sget-object v2, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 443
    iget-object v2, p0, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6$1;->this$1:Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;

    iget-object v2, v2, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;->this$0:Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;

    # getter for: Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;->mWIFICheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;->access$1200(Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 444
    iget-object v2, p0, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6$1;->this$1:Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;

    iget-object v2, v2, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;->this$0:Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;

    # setter for: Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;->mWIFISelectAllFlag:Z
    invoke-static {v2, v3}, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;->access$1302(Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;Z)Z

    goto :goto_1

    .line 446
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6$1;->this$1:Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;

    iget-object v2, v2, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;->this$0:Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;

    # getter for: Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;->mWIFISelectAllFlag:Z
    invoke-static {v2}, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;->access$1300(Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 447
    iget-object v2, p0, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6$1;->this$1:Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;

    iget-object v2, v2, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;->this$0:Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;

    # getter for: Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;->mWIFICheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;->access$1200(Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 448
    iget-object v2, p0, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6$1;->this$1:Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;

    iget-object v2, v2, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$6;->this$0:Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;

    # setter for: Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;->mWIFISelectAllFlag:Z
    invoke-static {v2, v4}, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;->access$1302(Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;Z)Z

    goto :goto_1
.end method
