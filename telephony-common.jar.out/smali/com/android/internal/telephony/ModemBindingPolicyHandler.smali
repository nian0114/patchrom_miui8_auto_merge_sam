.class public Lcom/android/internal/telephony/ModemBindingPolicyHandler;
.super Landroid/os/Handler;
.source "ModemBindingPolicyHandler.java"


# static fields
.field private static final EVENT_GET_PREF_MODE_DONE:I = 0x5

.field private static final EVENT_MODEM_RAT_CAPS_AVAILABLE:I = 0x1

.field private static final EVENT_SET_PREF_MODE:I = 0x3

.field private static final EVENT_SET_PREF_MODE_DONE:I = 0x4

.field private static final EVENT_UPDATE_BINDING_DONE:I = 0x2

.field private static final FAILURE:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "ModemBindingPolicyHandler"

.field private static final NETWORK_MASK_CDMA:I = 0x31f0

.field private static final NETWORK_MASK_CDMA_NO_EVDO:I = 0x70

.field private static final NETWORK_MASK_EVDO_NO_CDMA:I = 0x3180

.field private static final NETWORK_MASK_GLOBAL:I = 0x1bffe

.field private static final NETWORK_MASK_GSM_ONLY:I = 0x10006

.field private static final NETWORK_MASK_GSM_UMTS:I = 0x18e0e

.field private static final NETWORK_MASK_LTE_CDMA_EVDO:I = 0x71f0

.field private static final NETWORK_MASK_LTE_CMDA_EVDO_GSM_WCDMA:I = 0x1fffe

.field private static final NETWORK_MASK_LTE_GSM_WCDMA:I = 0x1ce0e

.field private static final NETWORK_MASK_LTE_ONLY:I = 0x4000

.field private static final NETWORK_MASK_LTE_WCDMA:I = 0xce08

.field private static final NETWORK_MASK_TD_SCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x3bffe

.field private static final NETWORK_MASK_TD_SCDMA_GSM:I = 0x30006

.field private static final NETWORK_MASK_TD_SCDMA_GSM_LTE:I = 0x34006

.field private static final NETWORK_MASK_TD_SCDMA_GSM_WCDMA:I = 0x38e0e

.field private static final NETWORK_MASK_TD_SCDMA_GSM_WCDMA_LTE:I = 0x3ce0e

.field private static final NETWORK_MASK_TD_SCDMA_LTE:I = 0x24000

.field private static final NETWORK_MASK_TD_SCDMA_LTE_CDMA_EVDO_GSM_WCDMA:I = 0x3fffe

.field private static final NETWORK_MASK_TD_SCDMA_ONLY:I = 0x20000

.field private static final NETWORK_MASK_TD_SCDMA_WCDMA:I = 0x28e08

.field private static final NETWORK_MASK_TD_SCDMA_WCDMA_LTE:I = 0x2ce08

.field private static final NETWORK_MASK_WCDMA_ONLY:I = 0x8e08

.field private static final NETWORK_MASK_WCDMA_PREF:I = 0x18e0e

.field private static final SUCCESS:I = 0x1

.field private static mModemStackController:Lcom/android/internal/telephony/ModemStackController;

.field private static sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentStackId:[I

.field private mIsSetPrefNwModeInProgress:Z

.field private mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

.field private mModemRatCapabilitiesAvailable:Z

.field private mNumPhones:I

.field private mPrefNwMode:[I

.field private mPreferredStackId:[I

.field private mStoredResponse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiccManager"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    iput-boolean v7, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemRatCapabilitiesAvailable:Z

    iput-boolean v7, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    iget v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    iget v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    iget v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    iput-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    const-string v0, "Constructor - Enter"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iput-object p1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    iget v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v0, v0, [Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    sget-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v0, p0, v4, v5}, Lcom/android/internal/telephony/ModemStackController;->registerForModemRatCapsAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_1
    iget v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v6, v0, :cond_3

    const-string v0, "1"

    const-string v1, "persist.radio.multisim.stackid"

    const-string v5, "0"

    invoke-static {v6, v1, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v4

    .local v2, "stackId":I
    :goto_2
    if-nez v2, :cond_2

    const v3, 0x3ce0e

    .local v3, "netMask":I
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aput v2, v0, v6

    iget-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aput v2, v0, v6

    iget-object v8, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    new-instance v0, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    sget-object v1, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;-><init>(Lcom/android/internal/telephony/ModemStackController;IIII)V

    aput-object v0, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v2    # "stackId":I
    .end local v3    # "netMask":I
    :cond_1
    move v2, v7

    goto :goto_2

    .restart local v2    # "stackId":I
    :cond_2
    const v3, 0x10006

    goto :goto_3

    .end local v2    # "stackId":I
    :cond_3
    const-string v0, "Constructor - Exit"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/ModemBindingPolicyHandler;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ModemBindingPolicyHdlr.getInstance called before make()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    return-object v0
.end method

.method private getNumOfRatSupportedForNwMode(ILcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;)I
    .locals 7
    .param p1, "nwMode"    # I
    .param p2, "modemCaps"    # Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    .prologue
    const v6, 0x3ce0e

    const v5, 0x38e0e

    const v4, 0x28e08

    const v3, 0x18e0e

    const/4 v0, 0x0

    .local v0, "supportedRatMaskForNwMode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumOfRATsSupportedForNwMode: nwMode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] modemCaps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumOfRATsSupportedForNwMode: supportedRatMaskForNwMode: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->getNumRatSupportedInMask(I)I

    move-result v1

    return v1

    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->getTdscdmaPresent()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v5

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v3

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x10006

    and-int v0, v1, v2

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->getTdscdmaPresent()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x8e08

    and-int v0, v1, v2

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v3

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit16 v0, v1, 0x31f0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit8 v0, v1, 0x70

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit16 v0, v1, 0x3180

    goto :goto_0

    :pswitch_7
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x1bffe

    and-int v0, v1, v2

    goto :goto_0

    :pswitch_8
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit16 v0, v1, 0x71f0

    goto :goto_0

    :pswitch_9
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->getTdscdmaPresent()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v6

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x1ce0e

    and-int v0, v1, v2

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x1fffe

    and-int v0, v1, v2

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit16 v0, v1, 0x4000

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0xce08

    and-int v0, v1, v2

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const/high16 v2, 0x20000

    and-int v0, v1, v2

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v4

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x24000

    and-int v0, v1, v2

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x30006

    and-int v0, v1, v2

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x34006

    and-int v0, v1, v2

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v5

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x2ce08

    and-int v0, v1, v2

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v6

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x3bffe

    and-int v0, v1, v2

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x3fffe

    and-int v0, v1, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method private getNumRatSupportedInMask(I)I
    .locals 2
    .param p1, "mask"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "noOfOnes":I
    :goto_0
    if-eqz p1, :cond_0

    add-int/lit8 v1, p1, -0x1

    and-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getTdscdmaPresent()I
    .locals 3

    .prologue
    const-string v1, "persist.radio.tdscdma_present"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "tdscdmaPresent":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleModemRatCapsAvailable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemRatCapabilitiesAvailable:Z

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updateStackBindingIfRequired(Z)I

    move-result v2

    if-ne v3, v2, :cond_1

    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v2, :cond_0

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0, v4}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private handleUpdateBindingDone(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v1, v3, :cond_2

    const/4 v0, 0x0

    .local v0, "errorCode":I
    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .local v2, "resp":Landroid/os/Message;
    if-eqz v2, :cond_1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sendResponseToTarget(Landroid/os/Message;I)V

    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "errorCode":I
    .end local v2    # "resp":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private isNwModeSupportedOnStack(II)Z
    .locals 7
    .param p1, "nwMode"    # I
    .param p2, "stackId"    # I

    .prologue
    iget v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v4, v5, [I

    .local v4, "numRatSupported":[I
    const/4 v3, 0x0

    .local v3, "maxNumRatSupported":I
    const/4 v2, 0x0

    .local v2, "isSupported":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v1, v5, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    aget-object v5, v5, v1

    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->getNumOfRatSupportedForNwMode(ILcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;)I

    move-result v5

    aput v5, v4, v1

    aget v5, v4, v1

    if-ge v3, v5, :cond_0

    aget v3, v4, v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v5, 0x0

    aput v5, v4, v1

    const-string v5, "modemCapInfo is null until now"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_1
    aget v5, v4, p2

    if-ne v5, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nwMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", on stack:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_3

    const-string v5, "Supported"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    return v2

    :cond_3
    const-string v5, "Not Supported"

    goto :goto_2
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const-string v0, "ModemBindingPolicyHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const-string v0, "ModemBindingPolicyHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static make(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ModemBindingPolicyHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uiccMgr"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const-string v0, "ModemBindingPolicyHandler"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    sget-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ModemBindingPolicyHandler.make() should be called once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onGetPrefNwModeDone(Landroid/os/AsyncResult;I)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetPrefNwModeDone(SUB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): got Exception ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .local v0, "getNwMode":[I
    aget v1, v0, v3

    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v2, v2, p2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetPrefNwModeDone(SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Not matched"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getNwMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPrefNwMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v2, v2, p2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private onSetPrefNwModeDone(Landroid/os/AsyncResult;II)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I
    .param p3, "retryCount"    # I

    .prologue
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetPrefNwModeDone(SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") retryCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsSetPrefNwModeInProgress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", got Exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "2"

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCount(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetPrefNwModeDone(SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendResponseToTarget(Landroid/os/Message;I)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "responseCode"    # I

    .prologue
    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private syncCurrentStackInfo()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    sget-object v2, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ModemStackController;->getCurrentStackIdForPhoneId(I)I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v2, v2, v0

    sget-object v3, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/ModemStackController;->getModemRatCapsForPhoneId(I)Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v1, v1, v0

    :goto_1
    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private syncPreferredNwModeFromDB()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    const/4 v3, 0x1

    aput v3, v2, v0

    goto :goto_1

    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    return-void
.end method

.method private updatePreferredStackIds()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-boolean v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemRatCapabilitiesAvailable:Z

    if-nez v10, :cond_1

    const-string v8, "updatePreferredStackIds: Modem Capabilites are not Available. Return!!"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    sget-object v8, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v8}, Lcom/android/internal/telephony/ModemStackController;->getModemCaps()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v10, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v10}, Lcom/android/internal/telephony/ModemStackController;->isStackIdError()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "updatePreferredStackIds() StatckId Error"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aput v9, v10, v9

    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aput v8, v9, v8

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->syncPreferredNwModeFromDB()V

    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->syncCurrentStackInfo()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    new-array v0, v12, [Ljava/lang/String;

    const-string v10, "IS_CTC"

    aput-object v10, v0, v9

    const-string v10, "IS_CTC2"

    aput-object v10, v0, v8

    .local v0, "ctcKey":[Ljava/lang/String;
    new-array v6, v12, [Ljava/lang/String;

    const-string v10, "phone1_on"

    aput-object v10, v6, v9

    const-string v10, "phone2_on"

    aput-object v10, v6, v8

    .local v6, "simOn":[Ljava/lang/String;
    const/4 v1, -0x1

    .local v1, "ctcSlot":I
    const/4 v2, 0x0

    .local v2, "ctcSlotCount":I
    const/4 v7, 0x0

    .local v7, "slot":I
    :goto_1
    iget v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v7, v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    aget-object v11, v0, v7

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_3

    move v1, v7

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    if-le v2, v8, :cond_6

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_2
    iget v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v7, v10, :cond_6

    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    aget-object v11, v6, v7

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_5

    move v1, v7

    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    if-le v2, v8, :cond_7

    const/4 v7, 0x0

    :goto_3
    iget v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v7, v10, :cond_7

    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v10, v10, v7

    if-eq v10, v8, :cond_8

    move v1, v7

    const/4 v2, 0x1

    :cond_7
    if-ltz v1, :cond_a

    if-ne v2, v8, :cond_a

    if-nez v1, :cond_9

    move v5, v8

    .local v5, "otherSlot":I
    :goto_4
    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aput v9, v10, v1

    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aput v8, v9, v5

    .end local v5    # "otherSlot":I
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatePreferredStackIds() 7+5Mode, ctcSlot="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    move v5, v9

    goto :goto_4

    :cond_a
    const/4 v1, -0x1

    goto :goto_5

    .end local v0    # "ctcKey":[Ljava/lang/String;
    .end local v1    # "ctcSlot":I
    .end local v2    # "ctcSlotCount":I
    .end local v6    # "simOn":[Ljava/lang/String;
    .end local v7    # "slot":I
    :cond_b
    const/4 v3, 0x0

    .local v3, "curPhoneId":I
    :goto_6
    iget v8, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v3, v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v8, v8, v3

    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v9, v9, v3

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->isNwModeSupportedOnStack(II)Z

    move-result v8

    if-eqz v8, :cond_d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatePreferredStackIds: current stack["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]supports NwMode["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] on phoneId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    const/4 v4, 0x0

    .local v4, "otherPhoneId":I
    :goto_7
    iget v8, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v4, v8, :cond_c

    if-ne v4, v3, :cond_f

    :cond_e
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_f
    iget-object v8, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v8, v8, v3

    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v9, v9, v4

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->isNwModeSupportedOnStack(II)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v8, v8, v4

    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v9, v9, v3

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->isNwModeSupportedOnStack(II)Z

    move-result v8

    if-eqz v8, :cond_e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatePreferredStackIds: Cross Binding is possible between phoneId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] and phoneId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v9, v9, v4

    aput v9, v8, v3

    iget-object v8, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v9, v9, v3

    aput v9, v8, v4

    goto :goto_8
.end method

.method private updateStackBindingIfRequired(Z)I
    .locals 7
    .param p1, "isBootUp"    # Z

    .prologue
    const/4 v1, 0x0

    .local v1, "isUpdateStackBindingRequired":Z
    const/4 v3, 0x0

    .local v3, "response":I
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updatePreferredStackIds()V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPreferredStatck["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentStackId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mModemCapInfo["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v6, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v6, v6, v0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v5, v5, v0

    if-eq v4, v5, :cond_3

    const/4 v1, 0x1

    const-string v4, "isUpdateStackBindingRequired : true"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    sget-object v4, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    invoke-virtual {v4, v5, p1, v2}, Lcom/android/internal/telephony/ModemStackController;->updateStackBinding([IZLandroid/os/Message;)I

    move-result v3

    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .local v1, "phoneId":I
    const/4 v3, 0x0

    .local v3, "retryCount":I
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->handleUpdateBindingDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->handleModemRatCapsAvailable()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SET_PREF_MODE(SUB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") nwMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", retryCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-virtual {p0, v4, v1, v3}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .local v2, "resp":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v5, v5, v1

    invoke-interface {v4, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "resp":Landroid/os/Message;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v3}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->onSetPrefNwModeDone(Landroid/os/AsyncResult;II)V

    goto :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->onGetPrefNwModeDone(Landroid/os/AsyncResult;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setPreferredNetworkType(IILandroid/os/Message;)V
    .locals 6
    .param p1, "networkType"    # I
    .param p2, "phoneId"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v1, v2, [I

    .local v1, "oldPrefNwMode":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    if-eqz v2, :cond_1

    const-string v2, "setPreferredNetworkType: In Progress:"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-direct {p0, p3, v2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sendResponseToTarget(Landroid/os/Message;I)V

    :goto_1
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType: nwMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", on phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updateStackBindingIfRequired(Z)I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p2

    invoke-interface {v2, p1, p3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v2, :cond_5

    if-ne p2, v0, :cond_4

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v2, v2, v0

    aget v3, v1, v0

    if-eq v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType: nwMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", on otherPhoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v3, v3, v0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_3

    :cond_5
    iput-boolean v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    goto/16 :goto_1
.end method

.method public updatePrefNwTypeIfRequired()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x0

    .local v8, "updateRequired":Z
    const/4 v0, 0x0

    .local v0, "hasNwGsmOnly":Z
    const/4 v4, -0x1

    .local v4, "secondaryStackSlot":I
    iget v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v2, v9, [I

    .local v2, "nwModeinSubIdTable":[I
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->syncPreferredNwModeFromDB()V

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    .local v5, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v1, v9, :cond_2

    const/4 v9, 0x1

    aput v9, v2, v1

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v7

    .local v7, "subIdList":[I
    if-eqz v7, :cond_0

    aget v9, v7, v12

    if-lez v9, :cond_0

    aget v9, v7, v12

    const v10, 0x7ffffffb

    add-int/2addr v10, v1

    if-ne v9, v10, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    aget v6, v7, v12

    .local v6, "subId":I
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SubscriptionController;->getNwMode(I)I

    move-result v9

    aput v9, v2, v1

    aget v9, v2, v1

    const/4 v10, -0x1

    if-ne v9, v10, :cond_4

    const/4 v8, 0x0

    .end local v6    # "subId":I
    .end local v7    # "subIdList":[I
    :cond_2
    sget-object v9, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v9}, Lcom/android/internal/telephony/ModemStackController;->isStackIdError()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "updatePrefNwTypeIfRequired() StatckId Error"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    const/4 v8, 0x1

    :cond_3
    if-eqz v8, :cond_6

    const/4 v1, 0x0

    :goto_2
    iget v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v1, v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating Value in DB for slot["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v2, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    aget v11, v2, v1

    invoke-static {v9, v10, v1, v11}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .restart local v6    # "subId":I
    .restart local v7    # "subIdList":[I
    :cond_4
    aget v9, v2, v1

    iget-object v10, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v10, v10, v1

    if-eq v9, v10, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    .end local v6    # "subId":I
    .end local v7    # "subIdList":[I
    :cond_5
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updateStackBindingIfRequired(Z)I

    move-result v9

    if-nez v9, :cond_7

    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->syncPreferredNwModeFromDB()V

    const/4 v1, 0x0

    :goto_3
    iget v9, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v1, v9, :cond_7

    const/4 v3, 0x0

    .local v3, "retryCount":I
    const/4 v9, 0x3

    invoke-virtual {p0, v9, v1, v3}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v3    # "retryCount":I
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updateStackBindingIfRequired(Z)I

    :cond_7
    return-void
.end method
