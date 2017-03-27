.class final Lcom/android/settings_ex/DataUsageSummary$41;
.super Lcom/android/settings_ex/search/BaseSearchIndexProvider;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5909
    invoke-direct {p0}, Lcom/android/settings_ex/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const v6, 0x7f0e0c6b

    .line 5922
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5924
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 5925
    .local v2, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v1

    .line 5928
    .local v1, "hasRadio":Z
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 5929
    .local v0, "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 5930
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 5931
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5934
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMultisimModel()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaCTCModel()Z

    move-result v4

    if-nez v4, :cond_1

    .line 5935
    :cond_0
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 5936
    .restart local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string v4, "data_usage_enable_mobile"

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 5937
    const v4, 0x7f0e0c97

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 5938
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 5939
    if-eqz v1, :cond_b

    .line 5940
    iput-boolean v7, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->enabled:Z

    .line 5944
    :goto_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5948
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5949
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 5950
    .restart local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string v4, "data_usage_disable_mobile_limit"

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 5951
    const v4, 0x7f0e0c8b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 5952
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 5953
    if-eqz v1, :cond_c

    .line 5954
    iput-boolean v7, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->enabled:Z

    .line 5958
    :goto_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5961
    :cond_2
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->isSupportVolteSettings(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5962
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 5963
    .restart local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string v4, "data_roaming_enable_mobile"

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 5964
    const v4, 0x7f0e1531

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 5965
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 5966
    if-eqz v1, :cond_d

    .line 5967
    iput-boolean v7, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->enabled:Z

    .line 5971
    :goto_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5975
    :cond_3
    invoke-static {}, Lcom/android/settings_ex/Utils;->getAppDataRestrictionType()I

    move-result v4

    if-eqz v4, :cond_4

    .line 5976
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 5977
    .restart local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string v4, "app_data_restriction"

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 5978
    invoke-static {}, Lcom/android/settings_ex/Utils;->getAppDataRestrictionType()I

    move-result v4

    if-ne v4, v7, :cond_e

    .line 5979
    const v4, 0x7f0e16ae

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 5983
    :goto_3
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 5984
    if-eqz v1, :cond_f

    .line 5985
    iput-boolean v7, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->enabled:Z

    .line 5989
    :goto_4
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5993
    :cond_4
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-nez v4, :cond_5

    .line 5994
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 5995
    .restart local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string v4, "data_usage_cycle"

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 5996
    const v4, 0x7f0e0c72

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 5997
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 5998
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6001
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_ShowDataSelectPopupOnBootup"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6005
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 6006
    .restart local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string v4, "data_usage_confirm_boot"

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 6007
    const v4, 0x7f0e1096

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 6008
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 6009
    if-eqz v1, :cond_10

    .line 6010
    iput-boolean v7, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->enabled:Z

    .line 6015
    :goto_5
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6018
    :cond_6
    const-string v4, "trafficmanager"

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "networkmanager"

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_8

    .line 6019
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 6020
    .restart local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string v4, "data_usage_cycle"

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 6021
    const v4, 0x7f0e1717

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 6022
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 6023
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6027
    :cond_8
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v4

    if-nez v4, :cond_9

    .line 6028
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 6029
    .restart local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string v4, "data_usage_cycle"

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 6030
    const v4, 0x7f0e16f8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 6031
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 6032
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6036
    :cond_9
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_a

    .line 6037
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 6038
    .restart local v0    # "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    const-string v4, "data_usage_cycle"

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 6039
    const v4, 0x7f0e16f4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 6040
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 6041
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6043
    :cond_a
    return-object v3

    .line 5942
    :cond_b
    iput-boolean v8, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->enabled:Z

    goto/16 :goto_0

    .line 5956
    :cond_c
    iput-boolean v8, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->enabled:Z

    goto/16 :goto_1

    .line 5969
    :cond_d
    iput-boolean v8, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->enabled:Z

    goto/16 :goto_2

    .line 5981
    :cond_e
    const v4, 0x7f0e16ac

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    goto/16 :goto_3

    .line 5987
    :cond_f
    iput-boolean v8, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->enabled:Z

    goto/16 :goto_4

    .line 6012
    :cond_10
    iput-boolean v8, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->enabled:Z

    goto/16 :goto_5
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5914
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 5915
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const-class v1, Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 5916
    sget v1, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 5917
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
