.class public Lcom/android/nfc/NfcFeatureUtil;
.super Ljava/lang/Object;
.source "NfcFeatureUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcFeatureUtil$1;,
        Lcom/android/nfc/NfcFeatureUtil$Singleton;
    }
.end annotation


# instance fields
.field private mDefaultState:Ljava/lang/String;

.field private mEnableAidFilter:Z

.field private mEnableAutoSwitching:Z

.field private mEnableEce:Z

.field private mEnableHceWithScreenOff:Z

.field private mEnableInvalidPopup:Z

.field private mEnableTechnologyChange:Z

.field private mEnableUce:Z

.field private mHideTerminal:Ljava/lang/String;

.field private mIconType:Ljava/lang/String;

.field private mIsBroadcomChip:Z

.field private mIsNxpChip:Z

.field private mIsSamsungChip:Z

.field private mIsSonyChip:Z

.field private mIsoDepRoute:Ljava/lang/String;

.field private mNfcChipName:Ljava/lang/String;

.field private mOperatorSettingUiType:Ljava/lang/String;

.field private mRoutingTypeForEce:Ljava/lang/String;

.field private mRoutingTypeForHce:Ljava/lang/String;

.field private mRoutingTypeForUce:Ljava/lang/String;

.field private mSecureEventType:Ljava/lang/String;

.field private mSecurityPopupType:Ljava/lang/String;

.field private mSupportAdvancedSettings:Z

.field private mSupportChinaNalSecurity:Z

.field private mSupportFelica:Z

.field private mSupportOtherCategory:Z

.field private mSupportReaderModeApi:Z

.field private mSupportUrgentFirmwareUpdate:Z

.field private mTechnologyRoute:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mEnableUce:Z

    .line 19
    iput-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mEnableEce:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mEnableAidFilter:Z

    .line 24
    iput-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mEnableAutoSwitching:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mSupportOtherCategory:Z

    .line 28
    iput-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mEnableTechnologyChange:Z

    .line 29
    iput-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mEnableHceWithScreenOff:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mSupportReaderModeApi:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mSupportFelica:Z

    .line 51
    iput-object v1, p0, Lcom/android/nfc/NfcFeatureUtil;->mSecureEventType:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/android/nfc/NfcFeatureUtil;->mHideTerminal:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/android/nfc/NfcFeatureUtil;->mIconType:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/android/nfc/NfcFeatureUtil;->mDefaultState:Ljava/lang/String;

    .line 55
    iput-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mIsSamsungChip:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mIsBroadcomChip:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mIsNxpChip:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mIsSonyChip:Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mSupportAdvancedSettings:Z

    .line 72
    invoke-direct {p0}, Lcom/android/nfc/NfcFeatureUtil;->loadNfcFeature()V

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/NfcFeatureUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/NfcFeatureUtil$1;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/nfc/NfcFeatureUtil;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/nfc/NfcFeatureUtil;
    .locals 1

    .prologue
    .line 68
    # getter for: Lcom/android/nfc/NfcFeatureUtil$Singleton;->INSTANCE:Lcom/android/nfc/NfcFeatureUtil;
    invoke-static {}, Lcom/android/nfc/NfcFeatureUtil$Singleton;->access$100()Lcom/android/nfc/NfcFeatureUtil;

    move-result-object v0

    return-object v0
.end method

.method private loadNfcFeature()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 78
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    .line 82
    .local v0, "cscFeature":Lcom/sec/android/app/CscFeature;
    iput-boolean v6, p0, Lcom/android/nfc/NfcFeatureUtil;->mEnableUce:Z

    .line 83
    iget-boolean v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mEnableUce:Z

    if-eqz v5, :cond_0

    .line 84
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_NFC_DisableUiccCardMode"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mEnableUce:Z

    .line 89
    :cond_0
    iput-boolean v6, p0, Lcom/android/nfc/NfcFeatureUtil;->mEnableEce:Z

    .line 90
    iget-boolean v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mEnableEce:Z

    if-eqz v5, :cond_2

    .line 91
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_NFC_DisableEseCardMode"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    move v7, v6

    :cond_1
    iput-boolean v7, p0, Lcom/android/nfc/NfcFeatureUtil;->mEnableEce:Z

    .line 96
    :cond_2
    const/4 v2, 0x0

    .line 97
    .local v2, "enableHceWithScreenOff":Z
    if-eqz v2, :cond_7

    .line 99
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_NFC_ConfigCardmodeRoutingTypeForHce"

    const-string v8, "ROUTE_ON_WHEN_POWER_ON"

    invoke-virtual {v5, v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mRoutingTypeForHce:Ljava/lang/String;

    .line 108
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_NFC_SupportAidFiltering"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mEnableAidFilter:Z

    .line 111
    iput-boolean v6, p0, Lcom/android/nfc/NfcFeatureUtil;->mEnableAutoSwitching:Z

    .line 113
    iput-boolean v6, p0, Lcom/android/nfc/NfcFeatureUtil;->mSupportOtherCategory:Z

    .line 120
    iput-boolean v6, p0, Lcom/android/nfc/NfcFeatureUtil;->mEnableTechnologyChange:Z

    .line 122
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_NFC_ConfigCardModeRoutingTypeForUicc"

    const-string v8, "ROUTE_ON_ALWAYS"

    invoke-virtual {v5, v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mRoutingTypeForUce:Ljava/lang/String;

    .line 127
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_NFC_ConfigCardModeRoutingTypeForEse"

    const-string v8, "ROUTE_ON_ALWAYS"

    invoke-virtual {v5, v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mRoutingTypeForEce:Ljava/lang/String;

    .line 133
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_NFC_DefaultCardModeConfig"

    const-string v8, "UICC"

    invoke-virtual {v5, v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "defaultCardModeConfig":Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, ":"

    invoke-direct {v3, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .local v3, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mIsoDepRoute:Ljava/lang/String;

    .line 139
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    :goto_2
    iput-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mTechnologyRoute:Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_NFC_EnableInvalidTagPopup"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mEnableInvalidPopup:Z

    .line 146
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_NFC_ConfigSecurityPromptPopup"

    const-string v8, "NONE"

    invoke-virtual {v5, v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mSecurityPopupType:Ljava/lang/String;

    .line 151
    const-string v5, "NXP_PN551"

    iput-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mNfcChipName:Ljava/lang/String;

    .line 152
    iget-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mNfcChipName:Ljava/lang/String;

    const-string v7, "S"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 153
    iput-boolean v6, p0, Lcom/android/nfc/NfcFeatureUtil;->mIsSamsungChip:Z

    .line 161
    :cond_3
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_NFC_ConfigOperatorSettingUI"

    const-string v8, "NONE"

    invoke-virtual {v5, v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mOperatorSettingUiType:Ljava/lang/String;

    .line 165
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_NFC_SupportReaderModeApi"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mSupportReaderModeApi:Z

    .line 168
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mSupportFelica:Z

    .line 171
    const-string v5, "persist.nfc.secure_event_type"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mSecureEventType:Ljava/lang/String;

    .line 173
    iget-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mSecureEventType:Ljava/lang/String;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mSecureEventType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_c

    iget-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mSecureEventType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    :goto_4
    iput-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mSecureEventType:Ljava/lang/String;

    .line 179
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_SmartcardSvc_HideTerminalCapability"

    const-string v8, "NONE"

    invoke-virtual {v5, v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mHideTerminal:Ljava/lang/String;

    .line 181
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_NFC_StatusBarIconType"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mIconType:Ljava/lang/String;

    .line 183
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_NFC_DefStatus"

    invoke-virtual {v5, v7, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "state":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 185
    const-string v4, "OFF"

    .line 186
    :cond_4
    const-string v5, "ON"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 187
    const-string v5, "ON"

    iput-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mDefaultState:Ljava/lang/String;

    .line 191
    :cond_5
    :goto_5
    iput-boolean v6, p0, Lcom/android/nfc/NfcFeatureUtil;->mSupportUrgentFirmwareUpdate:Z

    .line 193
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_NFC_ConfigAdvancedSettings"

    const-string v7, "ENABLE"

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ENABLE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mSupportAdvancedSettings:Z

    .line 197
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_ConfigLocalSecurityPolicy"

    const-string v7, "NONE"

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ChinaNalSecurity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mSupportChinaNalSecurity:Z

    .line 199
    return-void

    .end local v1    # "defaultCardModeConfig":Ljava/lang/String;
    .end local v2    # "enableHceWithScreenOff":Z
    .end local v3    # "st":Ljava/util/StringTokenizer;
    .end local v4    # "state":Ljava/lang/String;
    :cond_6
    move v5, v7

    .line 84
    goto/16 :goto_0

    .line 105
    .restart local v2    # "enableHceWithScreenOff":Z
    :cond_7
    const-string v5, "ROUTE_ON_WHEN_SCREEN_ON"

    iput-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mRoutingTypeForHce:Ljava/lang/String;

    goto/16 :goto_1

    .line 139
    .restart local v1    # "defaultCardModeConfig":Ljava/lang/String;
    .restart local v3    # "st":Ljava/util/StringTokenizer;
    :cond_8
    iget-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mIsoDepRoute:Ljava/lang/String;

    goto/16 :goto_2

    .line 154
    :cond_9
    iget-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mNfcChipName:Ljava/lang/String;

    const-string v7, "N"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 155
    iput-boolean v6, p0, Lcom/android/nfc/NfcFeatureUtil;->mIsNxpChip:Z

    goto/16 :goto_3

    .line 156
    :cond_a
    iget-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mNfcChipName:Ljava/lang/String;

    const-string v7, "B"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 157
    iput-boolean v6, p0, Lcom/android/nfc/NfcFeatureUtil;->mIsBroadcomChip:Z

    goto/16 :goto_3

    .line 158
    :cond_b
    iget-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mNfcChipName:Ljava/lang/String;

    const-string v7, "C"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 159
    iput-boolean v6, p0, Lcom/android/nfc/NfcFeatureUtil;->mIsSonyChip:Z

    goto/16 :goto_3

    .line 173
    :cond_c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_NFC_SetSecureEventType"

    const-string v8, "GSMA_V40"

    invoke-virtual {v5, v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 188
    .restart local v4    # "state":Ljava/lang/String;
    :cond_d
    const-string v5, "OFF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 189
    const-string v5, "OFF"

    iput-object v5, p0, Lcom/android/nfc/NfcFeatureUtil;->mDefaultState:Ljava/lang/String;

    goto/16 :goto_5
.end method


# virtual methods
.method public getDefaultProtocolRoute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mIsoDepRoute:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mDefaultState:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultTechnologyRoute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mTechnologyRoute:Ljava/lang/String;

    return-object v0
.end method

.method public getEceRutingInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mRoutingTypeForEce:Ljava/lang/String;

    return-object v0
.end method

.method public getHceRutingInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mRoutingTypeForHce:Ljava/lang/String;

    return-object v0
.end method

.method public getHideTerminal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mHideTerminal:Ljava/lang/String;

    return-object v0
.end method

.method public getNfcChipName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mNfcChipName:Ljava/lang/String;

    return-object v0
.end method

.method public getNfcIconType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mIconType:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorSettingUiType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mOperatorSettingUiType:Ljava/lang/String;

    return-object v0
.end method

.method public getSecureEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mSecureEventType:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityPopupType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mSecurityPopupType:Ljava/lang/String;

    return-object v0
.end method

.method public getUceRutingInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mRoutingTypeForUce:Ljava/lang/String;

    return-object v0
.end method

.method public isBroadcomChip()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mIsBroadcomChip:Z

    return v0
.end method

.method public isNxpChip()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mIsNxpChip:Z

    return v0
.end method

.method public isSamsungChip()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mIsSamsungChip:Z

    return v0
.end method

.method public isSonyChip()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mIsSonyChip:Z

    return v0
.end method

.method public supportAdvancedSettings()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mSupportAdvancedSettings:Z

    return v0
.end method

.method public supportAidFiltering()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mEnableAidFilter:Z

    return v0
.end method

.method public supportAutoSwitching()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mEnableAutoSwitching:Z

    return v0
.end method

.method public supportChinaNalSecurity()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mSupportChinaNalSecurity:Z

    return v0
.end method

.method public supportEce()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mEnableEce:Z

    return v0
.end method

.method public supportFelica()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mSupportFelica:Z

    return v0
.end method

.method public supportInvalidPopup()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mEnableInvalidPopup:Z

    return v0
.end method

.method public supportOtherCategory()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mSupportOtherCategory:Z

    return v0
.end method

.method public supportReaderModeApi()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mSupportReaderModeApi:Z

    return v0
.end method

.method public supportTechnologyChange()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mEnableTechnologyChange:Z

    return v0
.end method

.method public supportUce()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mEnableUce:Z

    return v0
.end method

.method public supportUrgentFirmwareUpdate()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/nfc/NfcFeatureUtil;->mSupportUrgentFirmwareUpdate:Z

    return v0
.end method
