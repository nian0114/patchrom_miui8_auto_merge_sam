.class public Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;
.super Ljava/lang/Object;
.source "TelecomUtilsMultiSIM.java"


# static fields
.field private static DSDA_FOREGROUND_PHONEID:I

.field private static EXTRA_SIM_ID:Ljava/lang/String;

.field private static final LIVE_CALL_STATES:[I

.field private static final OUTGOING_CALL_STATES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput v0, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->DSDA_FOREGROUND_PHONEID:I

    .line 74
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->LIVE_CALL_STATES:[I

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->OUTGOING_CALL_STATES:[I

    .line 89
    const-string v0, "simSlot"

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->EXTRA_SIM_ID:Ljava/lang/String;

    return-void

    .line 74
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x5
    .end array-data

    .line 77
    :array_1
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public static blockOtherSlotCallForCTCRoaming(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 196
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 217
    :goto_0
    return v0

    .line 200
    :cond_0
    const-string v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 201
    goto :goto_0

    .line 204
    :cond_1
    const-string v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 205
    if-eqz v0, :cond_3

    .line 206
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    .line 207
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 208
    if-nez v0, :cond_2

    sget-object v3, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->LIVE_CALL_STATES:[I

    invoke-static {v2, v3}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getFirstCallWithState(I[I)Lcom/android/server/telecom/Call;

    move-result-object v3

    if-eqz v3, :cond_2

    move v0, v2

    .line 210
    goto :goto_0

    .line 212
    :cond_2
    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->LIVE_CALL_STATES:[I

    invoke-static {v1, v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getFirstCallWithState(I[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 214
    goto :goto_0

    :cond_3
    move v0, v1

    .line 217
    goto :goto_0
.end method

.method public static blockOtherSlotCallForRoaming(Landroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 222
    const-string v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 241
    :goto_0
    return v0

    .line 226
    :cond_0
    const-string v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 227
    if-eqz v0, :cond_2

    .line 228
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    .line 229
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 230
    if-nez v0, :cond_1

    sget-object v3, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->LIVE_CALL_STATES:[I

    invoke-static {v2, v3}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getFirstCallWithState(I[I)Lcom/android/server/telecom/Call;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "slot2call"

    const-string v4, "ril.call_block"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 233
    goto :goto_0

    .line 235
    :cond_1
    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->LIVE_CALL_STATES:[I

    invoke-static {v1, v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getFirstCallWithState(I[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "slot1call"

    const-string v3, "ril.call_block"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 238
    goto :goto_0

    :cond_2
    move v0, v1

    .line 241
    goto :goto_0
.end method

.method public static checkServiceInStateOfCurrentCall()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 458
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v1

    .line 459
    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent(Z)Landroid/content/Intent;

    move-result-object v0

    .line 462
    const-string v4, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 463
    const-string v4, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 464
    if-eqz v0, :cond_2

    .line 465
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    .line 472
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkServiceStateOfCurrentCall, subId : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 474
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getServiceState(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 477
    :goto_1
    return v0

    .line 467
    :cond_0
    sget-object v4, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->EXTRA_SIM_ID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 468
    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->EXTRA_SIM_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 469
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 470
    aget v0, v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static getActiveCall(I)Lcom/android/server/telecom/Call;
    .locals 3

    .prologue
    .line 338
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput v2, v0, v1

    invoke-static {p0, v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getFirstCallWithState(I[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDataSubId()I
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultDataSubId subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 97
    return v0
.end method

.method public static getDefaultVoiceSubId()I
    .locals 3

    .prologue
    .line 101
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultDataSubId subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 103
    return v0
.end method

.method public static varargs getFirstCallWithState(ILcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;
    .locals 6

    .prologue
    .line 357
    array-length v2, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget v3, p2, v1

    .line 359
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 360
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 361
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 386
    :goto_1
    return-object v0

    .line 365
    :cond_0
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v0

    .line 367
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 368
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 373
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v5

    if-nez v5, :cond_1

    .line 377
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v5

    if-ne p0, v5, :cond_1

    .line 381
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v5

    if-ne v3, v5, :cond_1

    goto :goto_1

    .line 357
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 386
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static varargs getFirstCallWithState(I[I)Lcom/android/server/telecom/Call;
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getFirstCallWithState(ILcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method public static getHeldCall(I)Lcom/android/server/telecom/Call;
    .locals 3

    .prologue
    .line 342
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput v2, v0, v1

    invoke-static {p0, v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getFirstCallWithState(I[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method private static getMultiSIMNetworkCombinationType()I
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 256
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 257
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    .line 258
    if-eqz v0, :cond_4

    .line 259
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    aget v0, v0, v1

    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    move v4, v0

    .line 260
    :goto_0
    if-eqz v5, :cond_3

    .line 261
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    aget v5, v5, v1

    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 263
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slot1_Type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 264
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slot2_Type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 266
    if-ne v4, v2, :cond_1

    if-ne v0, v2, :cond_1

    .line 274
    :cond_0
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMultiSIMNetworkCombinationType : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 275
    return v1

    .line 268
    :cond_1
    if-ne v4, v3, :cond_2

    if-ne v0, v2, :cond_2

    move v1, v2

    .line 269
    goto :goto_2

    .line 270
    :cond_2
    if-ne v4, v2, :cond_0

    if-ne v0, v3, :cond_0

    move v1, v3

    .line 271
    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v4, v1

    goto :goto_0
.end method

.method public static getMultiSimDSDAForegoundPhoneId()I
    .locals 3

    .prologue
    .line 320
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimForegroundPhoneId()I

    move-result v0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMultiSimDSDAForegoundPhoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 322
    return v0
.end method

.method public static getMultiSimIccType(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 707
    const-string v0, "0"

    .line 709
    :try_start_0
    const-string v0, "ril.ICC_TYPE"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    const-string v0, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :cond_0
    :goto_0
    return-object v0

    .line 713
    :catch_0
    move-exception v0

    .line 714
    const-string v0, "0"

    goto :goto_0
.end method

.method public static getMultiSimNumeric(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 838
    const-string v0, "0"

    .line 840
    :try_start_0
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 841
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :goto_0
    return-object v0

    .line 842
    :catch_0
    move-exception v0

    .line 843
    const-string v0, "0"

    goto :goto_0
.end method

.method private static varargs getNumMultiSimCallsWithState(Ljava/util/Collection;Lcom/android/server/telecom/Call;[I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;",
            "Lcom/android/server/telecom/Call;",
            "[I)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 122
    array-length v3, p2

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v4, p2, v2

    .line 123
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 124
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v6

    if-ne v6, v4, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v6

    if-ne v0, v6, :cond_2

    .line 127
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_2
    move v1, v0

    .line 129
    goto :goto_1

    .line 122
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 131
    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static varargs getOtherSlotFirstCallWithState(Ljava/util/Collection;Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;",
            "Lcom/android/server/telecom/Call;",
            "[I)",
            "Lcom/android/server/telecom/Call;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 174
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move-object v0, v1

    .line 191
    :goto_0
    return-object v0

    .line 177
    :cond_0
    array-length v3, p2

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    aget v4, p2, v2

    .line 178
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 179
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 182
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 186
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v6

    if-ne v4, v6, :cond_1

    goto :goto_0

    .line 177
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 191
    goto :goto_0
.end method

.method public static getPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    .line 901
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneAccountHandle(ILjava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneAccountHandle(ILjava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    .locals 6

    .prologue
    .line 905
    const-string v0, "TelecomUtilsMultiSIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhoneAccountHandle subId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uriScheme:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v2

    .line 910
    if-eqz p1, :cond_1

    .line 911
    const/4 v0, 0x0

    invoke-virtual {v2, p1, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getCallCapablePhoneAccounts(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 917
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 918
    invoke-virtual {v2, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getSubscriptionIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 940
    :goto_1
    return-object v0

    .line 913
    :cond_1
    const-string v0, "tel"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getCallCapablePhoneAccounts(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 924
    :cond_2
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getDefaultVoiceSubId()I

    move-result v3

    .line 925
    const-string v0, "TelecomUtilsMultiSIM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhoneAccountHandle defualtVoiceSubId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 927
    invoke-virtual {v2, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getSubscriptionIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I

    move-result v5

    if-ne v5, v3, :cond_3

    goto :goto_1

    .line 933
    :cond_4
    const-string v0, "TelecomUtilsMultiSIM"

    const-string v2, "getPhoneAccountHandle return first phoneacounthandle"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    goto :goto_1

    .line 939
    :cond_5
    const-string v0, "TelecomUtilsMultiSIM"

    const-string v1, "getPhoneAccountHandle return null because there is no any phoneAccountHandle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getPhoneId(Lcom/android/server/telecom/Call;)I
    .locals 2

    .prologue
    .line 280
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getSubId(Lcom/android/server/telecom/Call;)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 281
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    .line 282
    if-nez v1, :cond_0

    .line 283
    const/4 v0, 0x0

    .line 284
    :cond_0
    return v0
.end method

.method public static getRingingCall(I)Lcom/android/server/telecom/Call;
    .locals 3

    .prologue
    .line 334
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    invoke-static {p0, v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getFirstCallWithState(I[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method public static getSimState(I)I
    .locals 1

    .prologue
    .line 720
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public static getSubId(Lcom/android/server/telecom/Call;)I
    .locals 4

    .prologue
    .line 288
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    .line 289
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 291
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 296
    :cond_0
    :goto_0
    return v0

    .line 292
    :catch_0
    move-exception v1

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubId failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSubIdUsingPhoneId(I)I
    .locals 2

    .prologue
    .line 303
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 305
    if-eqz v0, :cond_0

    .line 306
    const/4 v1, 0x0

    aget v0, v0, v1

    .line 309
    :goto_0
    return v0

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubscriptionManager.getSubId is null so return defaultVoiceSubId phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getDefaultVoiceSubId()I

    move-result v0

    goto :goto_0
.end method

.method public static hasMultiSimMaximumHoldingCalls(Ljava/util/Collection;Lcom/android/server/telecom/Call;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;",
            "Lcom/android/server/telecom/Call;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 139
    new-array v2, v0, [I

    const/4 v3, 0x6

    aput v3, v2, v1

    invoke-static {p0, p1, v2}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getNumMultiSimCallsWithState(Ljava/util/Collection;Lcom/android/server/telecom/Call;[I)I

    move-result v2

    if-gt v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static hasMultiSimMaximumLiveCalls(Ljava/util/Collection;Lcom/android/server/telecom/Call;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;",
            "Lcom/android/server/telecom/Call;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 135
    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->LIVE_CALL_STATES:[I

    invoke-static {p0, p1, v1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getNumMultiSimCallsWithState(Ljava/util/Collection;Lcom/android/server/telecom/Call;[I)I

    move-result v1

    if-gt v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasMultiSimMaximumOutgoingCalls(Ljava/util/Collection;Lcom/android/server/telecom/Call;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;",
            "Lcom/android/server/telecom/Call;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 147
    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->OUTGOING_CALL_STATES:[I

    invoke-static {p0, p1, v1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getNumMultiSimCallsWithState(Ljava/util/Collection;Lcom/android/server/telecom/Call;[I)I

    move-result v1

    if-gt v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasMultiSimMaximumRingingCalls(Ljava/util/Collection;Lcom/android/server/telecom/Call;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;",
            "Lcom/android/server/telecom/Call;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 143
    new-array v2, v0, [I

    const/4 v3, 0x4

    aput v3, v2, v1

    invoke-static {p0, p1, v2}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getNumMultiSimCallsWithState(Ljava/util/Collection;Lcom/android/server/telecom/Call;[I)I

    move-result v2

    if-gt v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 553
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 555
    if-nez v1, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v0

    .line 558
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAllSlotNoSim()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 875
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 877
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    .line 878
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 879
    const-string v4, "TelecomUtilsMultiSIM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "telephonyManager.getSimState(), SIM1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const-string v4, "TelecomUtilsMultiSIM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "telephonyManager.getSimState(), SIM2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    if-eq v3, v1, :cond_0

    if-eqz v3, :cond_0

    if-ne v3, v7, :cond_4

    :cond_0
    move v3, v1

    .line 888
    :goto_0
    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    if-ne v0, v7, :cond_3

    :cond_1
    move v0, v1

    .line 893
    :goto_1
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    move v0, v1

    .line 896
    :goto_2
    return v0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_0
.end method

.method public static isBoltSIM(I)Z
    .locals 4

    .prologue
    .line 849
    const/4 v0, 0x0

    .line 850
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSimNumeric(I)Ljava/lang/String;

    move-result-object v1

    .line 851
    const-string v2, ""

    .line 852
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigPsOnlyList"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 853
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 854
    const/4 v0, 0x1

    .line 856
    :cond_0
    const-string v1, "TelecomUtilsMultiSIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBoltSIM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    return v0
.end method

.method public static isCMCCUSIM(I)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 863
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSimNumeric(I)Ljava/lang/String;

    move-result-object v0

    .line 864
    const-string v3, "46000"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46002"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46007"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    .line 867
    :goto_0
    const-string v3, "2"

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    .line 870
    :goto_1
    const-string v4, "TelecomUtilsMultiSIM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCMCCUSIM C: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " U:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    :goto_2
    return v2

    :cond_1
    move v2, v1

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isDualCallRinging(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 153
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 154
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 155
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    move v1, v4

    .line 160
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 161
    const-string v0, "isDualCallRinging return true..."

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    move v2, v4

    .line 167
    :goto_2
    return v2

    :cond_0
    move v0, v4

    move v1, v3

    .line 158
    goto :goto_1

    :cond_1
    move v0, v1

    move v1, v3

    :cond_2
    move v3, v1

    move v1, v0

    .line 165
    goto :goto_0

    .line 166
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDualCallRinging: isSIM1Ringing = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " isSIM2Ringing="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static isDualSim()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 797
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 798
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    .line 802
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 804
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 805
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 808
    :goto_0
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "phone1_on"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    .line 809
    :goto_1
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "phone2_on"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v4, v3

    .line 810
    :goto_2
    const-string v6, "feature_multisim"

    invoke-static {v6}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    if-lt v5, v7, :cond_2

    if-lt v0, v7, :cond_2

    .line 814
    :goto_3
    return v3

    :cond_0
    move v2, v1

    .line 808
    goto :goto_1

    :cond_1
    move v4, v1

    .line 809
    goto :goto_2

    :cond_2
    move v3, v1

    .line 810
    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isDualSimInCall(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 820
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 821
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 822
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    move v1, v4

    .line 827
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 828
    const-string v0, "isDualSimInCall return true..."

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    move v2, v4

    .line 834
    :goto_2
    return v2

    :cond_1
    move v0, v4

    move v1, v3

    .line 825
    goto :goto_1

    :cond_2
    move v0, v1

    move v1, v3

    :cond_3
    move v3, v1

    move v1, v0

    .line 832
    goto :goto_0

    .line 833
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDualSimInCall: isSIM1InCall = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " isSIM2InCall="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static isMutiSIMDSDSRadioOff()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 246
    const-string v2, "ril.dsds.radio-off"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isNetworkRoaming(Lcom/android/server/telecom/Call;)Z
    .locals 2

    .prologue
    .line 390
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getSubId(Lcom/android/server/telecom/Call;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method

.method public static isQualcommModem()Z
    .locals 3

    .prologue
    .line 563
    const-string v0, "ril.modem.board"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isQualcommModem modemBoard:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 565
    const-string v1, "MDM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MSM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimCardInserted(I)Z
    .locals 1

    .prologue
    .line 520
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 521
    const/4 v0, 0x0

    .line 523
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSimCardStatusOn(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 532
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 533
    if-nez v3, :cond_0

    .line 548
    :goto_0
    return v1

    .line 538
    :cond_0
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v1

    .line 543
    :goto_1
    if-ne v2, v0, :cond_3

    if-ne p0, v0, :cond_3

    .line 544
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone2_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    :cond_1
    :goto_2
    move v1, v0

    .line 548
    goto :goto_0

    :cond_2
    move v0, v1

    .line 544
    goto :goto_2

    .line 545
    :cond_3
    if-ne v2, v0, :cond_4

    if-nez p0, :cond_4

    .line 546
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone1_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_1

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v2, v0

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1116
    const-string v0, "TelecomUtilsMultiSIM"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    return-void
.end method

.method public static matchCarrierForMultiSIM(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1001
    const-string v0, "feature_multisim_carrier_match"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "carrier_match_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_11

    const-string v0, "extra_carrier_match_custom_intent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1004
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1005
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 1006
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1009
    const-string v0, "feature_multisim_preferred_sim_old"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1010
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "prefered_voice_call"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1015
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1016
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    .line 1018
    if-eqz v2, :cond_13

    .line 1019
    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->isInCall()Z

    move-result v2

    .line 1022
    :goto_1
    const-string v3, "videocall"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 1023
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isDualSim()Z

    move-result v9

    .line 1024
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "carrier_match_enabled"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "carrier_match_smartcsp"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_6

    move v3, v4

    .line 1027
    :goto_2
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getCallSubIdFromIntent(Landroid/content/Intent;)I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    .line 1028
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v6

    if-nez v6, :cond_0

    move v5, v1

    .line 1031
    :cond_0
    const-string v6, "feature_multisim_preferred_sim_old"

    invoke-static {v6}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "simSlot"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    const-string v6, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    if-nez v6, :cond_12

    .line 1034
    if-ne v0, v13, :cond_7

    move v6, v1

    .line 1041
    :goto_3
    if-nez v6, :cond_8

    move v5, v4

    .line 1043
    :goto_4
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v10

    .line 1044
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v11

    .line 1046
    if-eqz v10, :cond_11

    array-length v12, v10

    if-lez v12, :cond_11

    if-eqz v11, :cond_11

    array-length v12, v11

    if-lez v12, :cond_11

    .line 1048
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    aget v10, v10, v1

    invoke-virtual {v12, v10}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v10

    .line 1050
    if-eqz v3, :cond_1

    .line 1051
    invoke-static {v10}, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->carrierCodeFromMccMnc(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->setOldSimCarrierForSmartCSP(I)V

    .line 1052
    invoke-static {p0, v1}, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->changeCSP(Landroid/content/Context;Z)V

    .line 1055
    :cond_1
    const-string v12, "callFromDialer"

    invoke-virtual {p1, v12, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1056
    const-string v2, "TelecomUtilsMultiSIM"

    const-string v3, "Carrier match: Call from dialer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_2
    :goto_5
    const-string v2, "feature_multisim_preferred_sim"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    const-string v2, "feature_multisim_preferred_sim_old"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    if-ne v0, v4, :cond_11

    :cond_4
    if-nez v8, :cond_11

    .line 1106
    invoke-static {p0, p1, v6}, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->sendCarrierMatchBroadcastToReceiver(Landroid/content/Context;Landroid/content/Intent;I)Z

    .line 1112
    :goto_6
    return v1

    .line 1011
    :cond_5
    const-string v0, "feature_multisim_preferred_sim"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1012
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "prefered_voice_call"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_0

    :cond_6
    move v3, v1

    .line 1024
    goto/16 :goto_2

    .line 1036
    :cond_7
    const/4 v6, 0x3

    if-ne v0, v6, :cond_12

    move v6, v4

    .line 1037
    goto :goto_3

    :cond_8
    move v5, v1

    .line 1041
    goto :goto_4

    .line 1057
    :cond_9
    if-eqz v2, :cond_a

    .line 1058
    const-string v2, "TelecomUtilsMultiSIM"

    const-string v3, "Carrier match: Call active! Bypass SIM switch."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1059
    :cond_a
    if-eqz v9, :cond_2

    .line 1060
    invoke-static {p0, v7}, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->queryCarrierCodeFromDb(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 1061
    if-gtz v2, :cond_b

    .line 1062
    const-string v2, "TelecomUtilsMultiSIM"

    const-string v3, "Carrier match: Unknown carrier code"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1064
    :cond_b
    invoke-static {v2}, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->getCarrierCode(I)I

    move-result v7

    .line 1065
    invoke-static {v2}, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->getCarrierType(I)I

    move-result v2

    .line 1066
    invoke-static {v10}, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->carrierCodeFromMccMnc(Ljava/lang/String;)I

    move-result v9

    .line 1067
    if-ne v9, v7, :cond_c

    .line 1068
    const-string v2, "TelecomUtilsMultiSIM"

    const-string v3, "Carrier match: Carrier code and current SIM are the same"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1070
    :cond_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    aget v10, v11, v1

    invoke-virtual {v9, v10}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v9

    .line 1071
    invoke-static {v9}, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->carrierCodeFromMccMnc(Ljava/lang/String;)I

    move-result v9

    .line 1072
    if-ne v9, v7, :cond_10

    if-ne v2, v13, :cond_10

    if-nez v8, :cond_10

    .line 1073
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    aget v9, v11, v1

    invoke-virtual {v2, v9}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v2

    .line 1074
    invoke-static {v2}, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->carrierCodeFromMccMnc(Ljava/lang/String;)I

    move-result v2

    .line 1075
    if-ne v2, v7, :cond_f

    .line 1076
    invoke-static {v2}, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->setNewSimCarrierForSmartCSP(I)V

    .line 1077
    invoke-static {p0, v7, v13}, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->getCarrierName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 1078
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lcom/android/server/telecom/multisim/CarrierMatchDialogActivity;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1079
    const-string v7, "extra_carrier_match_call_intent"

    invoke-virtual {v2, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1080
    const-string v7, "extra_carrier_match_new_sim"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1081
    const-string v7, "extra_carrier_match_old_sim"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1082
    const-string v6, "extra_carrier_match_carrier_name"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1083
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "carrier_match_always_ask"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_e

    .line 1084
    const v2, 0x7f0b00ad

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v1

    invoke-virtual {p0, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1085
    if-eqz v3, :cond_d

    .line 1086
    invoke-static {p0, v4}, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->changeCSP(Landroid/content/Context;Z)V

    .line 1088
    :cond_d
    invoke-static {p0, p1, v5}, Lcom/android/server/telecom/multisim/CarrierMatchUtils;->sendCarrierMatchBroadcastToReceiver(Landroid/content/Context;Landroid/content/Intent;I)Z

    goto/16 :goto_6

    .line 1090
    :cond_e
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 1094
    :cond_f
    const-string v2, "TelecomUtilsMultiSIM"

    const-string v3, "Carrier match: Network operator and SIM operator are different"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1097
    :cond_10
    const-string v2, "TelecomUtilsMultiSIM"

    const-string v3, "Carrier match: Carrier code and other SIM are different"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_11
    move v1, v4

    .line 1112
    goto/16 :goto_6

    :cond_12
    move v6, v5

    goto/16 :goto_3

    :cond_13
    move v2, v1

    goto/16 :goto_1

    :cond_14
    move v0, v1

    goto/16 :goto_0
.end method

.method public static printOutMultiSimExtra(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 985
    const-string v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "printOutMultiSimExtra EXTRA_PHONE_ACCOUNT_HANDLE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 991
    :goto_0
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->EXTRA_SIM_ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "printOutMultiSimExtra EXTRA_SIM_ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->EXTRA_SIM_ID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 996
    :goto_1
    return-void

    .line 988
    :cond_0
    const-string v0, "printOutMultiSimExtra No Phone Account Handle"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 994
    :cond_1
    const-string v0, "printOutMultiSimExtra No EXTRA_SIM_ID"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static printOutMultiSimStatus()V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 945
    :try_start_0
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getDefaultVoiceSubId()I

    move-result v2

    .line 946
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 947
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    .line 948
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getSimState(I)I

    move-result v5

    .line 949
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getSimState(I)I

    move-result v6

    .line 952
    if-eqz v3, :cond_4

    .line 953
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v7, 0x0

    aget v7, v3, v7

    invoke-virtual {v1, v7}, Landroid/telephony/TelephonyManager;->getServiceState(I)I

    move-result v1

    .line 955
    :goto_0
    if-eqz v4, :cond_0

    .line 956
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v7, 0x0

    aget v7, v4, v7

    invoke-virtual {v0, v7}, Landroid/telephony/TelephonyManager;->getServiceState(I)I

    move-result v0

    .line 958
    :cond_0
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v7

    .line 959
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v8

    .line 961
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 962
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "printOutMultiSimStatus defaultVoiceSubId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", Slot1-subId:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v9, 0x0

    aget v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Slot2-subId2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 966
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "printOutMultiSimStatus SimState1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SimState2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 967
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "printOutMultiSimStatus serviceState1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", serviceState2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "printOutMultiSimStatus SimCardStatusOn1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SimCardStatusOn2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 970
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v1

    .line 972
    const-string v0, "tel"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getCallCapablePhoneAccounts(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 974
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 975
    if-eqz v0, :cond_1

    .line 976
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "printOutMultiSimStatus Handle subId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getSubscriptionIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "- handle :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 979
    :catch_0
    move-exception v0

    .line 980
    const-string v0, "printOutMultiSimStatus error"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 982
    :cond_2
    return-void

    .line 964
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "printOutMultiSimStatus defaultVoiceSubId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Slot1-subId or Slot2-subId2 is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_4
    move v1, v0

    goto/16 :goto_0
.end method

.method public static selectPhoneAccountHandle(Landroid/net/Uri;Z)Landroid/telecom/PhoneAccountHandle;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 724
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    .line 726
    const-string v1, "TelecomUtilsMultiSIM"

    const-string v2, "selectPhoneAccountHandle().. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isDualSim()Z

    move-result v2

    .line 728
    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->isInCall()Z

    move-result v0

    .line 729
    const/4 v1, 0x0

    .line 730
    const-string v4, "TelecomUtilsMultiSIM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInCall().. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "isDualSim:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    .line 732
    if-eqz p1, :cond_2

    .line 733
    const-string v0, "feature_multisim_preferred_sim_old"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "prefered_video_call"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 745
    :goto_0
    const-string v2, "TelecomUtilsMultiSIM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preferredSimCondition:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/TelecomSystem;->getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getCallCapablePhoneAccounts(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 749
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 751
    :goto_1
    const/4 v4, 0x2

    if-lt v2, v4, :cond_0

    .line 752
    const-string v2, "feature_multisim_preferred_sim_old"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 753
    packed-switch v0, :pswitch_data_0

    .line 767
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getOutgoingPhoneAccountForScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 770
    if-eqz v0, :cond_7

    :goto_2
    move-object v1, v0

    .line 793
    :cond_0
    :goto_3
    :pswitch_0
    return-object v1

    .line 736
    :cond_1
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "prefered_video_call"

    invoke-static {v0, v2, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 739
    :cond_2
    const-string v0, "feature_multisim_preferred_sim_old"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 740
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "prefered_voice_call"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 742
    :cond_3
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "prefered_voice_call"

    invoke-static {v0, v2, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_0

    :pswitch_1
    move-object v0, v1

    .line 755
    goto :goto_2

    .line 758
    :pswitch_2
    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    goto :goto_2

    .line 762
    :pswitch_3
    invoke-static {v7}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    goto :goto_2

    .line 774
    :cond_4
    packed-switch v0, :pswitch_data_1

    .line 779
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getOutgoingPhoneAccountForScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 782
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_3

    .line 787
    :cond_5
    if-nez v0, :cond_6

    if-nez v2, :cond_0

    .line 788
    :cond_6
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getOutgoingPhoneAccountForScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 791
    if-eqz v0, :cond_0

    move-object v1, v0

    goto/16 :goto_3

    :cond_7
    move-object v0, v1

    goto/16 :goto_2

    :cond_8
    move v2, v3

    goto/16 :goto_1

    .line 753
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 774
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static selectSimForEmergency(I)I
    .locals 15

    .prologue
    .line 570
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 571
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    .line 572
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v5

    .line 573
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 574
    if-eqz v3, :cond_0

    .line 575
    const/4 v0, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getServiceState(I)I

    move-result v1

    aput v1, v6, v0

    .line 577
    :cond_0
    if-eqz v4, :cond_1

    .line 578
    const/4 v0, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v4, v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getServiceState(I)I

    move-result v1

    aput v1, v6, v0

    .line 580
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getSimState(I)I

    move-result v7

    .line 581
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getSimState(I)I

    move-result v8

    .line 582
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v9

    .line 583
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v10

    .line 584
    const/4 v1, 0x0

    .line 585
    const/4 v0, 0x5

    if-ne v7, v0, :cond_5

    if-eqz v9, :cond_5

    const/4 v0, 0x1

    move v2, v0

    .line 586
    :goto_0
    const/4 v0, 0x5

    if-ne v8, v0, :cond_6

    if-eqz v10, :cond_6

    const/4 v0, 0x1

    .line 587
    :goto_1
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isQualcommModem()Z

    move-result v11

    .line 589
    const-string v12, "qcom_cross_mapping"

    invoke-static {v12}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 590
    const-string v12, "persist.radio.multisim.stackid"

    const-string v13, "NONE"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 591
    const-string v13, "1,0"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 592
    const/4 v1, 0x1

    .line 594
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "selectSimForEmergency crossMapping:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", crossMappingSwitched:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 596
    :cond_3
    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    .line 597
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "selectSimForEmergency currentSimId:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", subId1:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget v13, v3, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", subId2:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget v13, v4, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", defaultVoiceSubId:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 601
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "selectSimForEmergency serviceState[SIM_SLOT_1]:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget v13, v6, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", [SIM_SLOT_2]:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget v6, v6, v13

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 602
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "selectSimForEmergency SimState1:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", SimState2:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 603
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "selectSimForEmergency SimCardStatusOn1:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", SimCardStatusOn2:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 604
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "selectSimForEmergency sim1IsReady:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", sim2IsReady:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 605
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "selectSimForEmergency isQualcommModem:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 611
    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    .line 612
    const-string v0, "selectSimForEmergency both sim states are ready so originate call via current sim"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 697
    :cond_4
    :goto_3
    return p0

    .line 585
    :cond_5
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_0

    .line 586
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 599
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "selectSimForEmergency currentSimId:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", subId1 or subId2 is null, defaultVoiceSubId:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 613
    :cond_8
    if-eqz v2, :cond_9

    if-nez v0, :cond_9

    .line 614
    const-string v0, "selectSimForEmergency sim1 is ready / sim2 is not ready so orignate call via slot1"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 615
    const/4 p0, 0x0

    goto :goto_3

    .line 616
    :cond_9
    if-nez v2, :cond_a

    if-eqz v0, :cond_a

    .line 617
    const-string v0, "selectSimForEmergency sim1 is not ready / sim2 is ready so orignate call via slot2"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 618
    const/4 p0, 0x1

    goto :goto_3

    .line 620
    :cond_a
    if-eqz v11, :cond_e

    .line 626
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v3, :cond_b

    const/4 v0, 0x0

    aget v0, v3, v0

    if-eq v5, v0, :cond_b

    if-eqz v4, :cond_b

    const/4 v0, 0x0

    aget v0, v4, v0

    if-eq v5, v0, :cond_b

    const/4 v0, 0x1

    if-ne v7, v0, :cond_b

    if-nez v8, :cond_b

    .line 631
    const-string v0, "selectSimForEmergency airplane mode and only sim card is inserted in slot2 so originate call via slot2"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 641
    :cond_b
    const-string v0, "qcom_cross_mapping"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 642
    if-eqz v1, :cond_c

    .line 643
    const-string v0, "selectSimForEmergency both sim cards are not ready and slot2 is in multimode so originate call via slot2"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 644
    const/4 p0, 0x1

    goto :goto_3

    .line 646
    :cond_c
    const-string v0, "selectSimForEmergency both sim cards are not ready and slot1 is in multimode so originate call via slot1"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 647
    const/4 p0, 0x0

    goto :goto_3

    .line 650
    :cond_d
    const-string v0, "selectSimForEmergency both sim cards are not ready and so slot1 is only available to call"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 651
    const/4 p0, 0x0

    goto :goto_3

    .line 653
    :cond_e
    if-nez v11, :cond_4

    .line 654
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v0

    if-nez v0, :cond_f

    if-nez v9, :cond_f

    .line 662
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "phone1_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 663
    const-string v0, "selectSimForEmergency phone1 on"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 666
    :cond_f
    const/4 v0, 0x1

    if-ne v7, v0, :cond_11

    const/4 v0, 0x2

    if-eq v8, v0, :cond_10

    const/4 v0, 0x3

    if-ne v8, v0, :cond_11

    .line 669
    :cond_10
    const-string v0, "selectSimForEmergency non-qcom models => slot1 absent and slot2 pin or puk, call via slot2"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 670
    const/4 p0, 0x1

    goto/16 :goto_3

    .line 671
    :cond_11
    const/4 v0, 0x2

    if-eq v7, v0, :cond_12

    const/4 v0, 0x3

    if-ne v7, v0, :cond_13

    :cond_12
    const/4 v0, 0x1

    if-ne v8, v0, :cond_13

    .line 674
    const-string v0, "selectSimForEmergency non-qcom models => slot1 pin or puk and slot2 absent, call via slot1"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 675
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 676
    :cond_13
    const/4 v0, 0x2

    if-eq v7, v0, :cond_14

    const/4 v0, 0x3

    if-ne v7, v0, :cond_16

    :cond_14
    const/4 v0, 0x2

    if-eq v8, v0, :cond_15

    const/4 v0, 0x3

    if-ne v8, v0, :cond_16

    .line 680
    :cond_15
    const-string v0, "selectSimForEmergency non-qcom models => slot1 pin or puk and slot2 pin or puk, call via slot1"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 681
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 682
    :cond_16
    const/4 v0, 0x1

    if-ne v10, v0, :cond_17

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v0

    if-eqz v0, :cond_17

    if-nez v9, :cond_17

    .line 684
    const-string v0, "selectSimForEmergency non-qcom models => slot1 off ans slot2 on, call via slot2"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 685
    const/4 p0, 0x1

    goto/16 :goto_3

    .line 686
    :cond_17
    const/4 v0, 0x1

    if-ne v9, v0, :cond_18

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v0

    if-eqz v0, :cond_18

    if-nez v10, :cond_18

    .line 688
    const-string v0, "selectSimForEmergency non-qcom models => slot1 on ans slot2 off, call via slot1"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 689
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 691
    :cond_18
    const-string v0, "selectSimForEmergency non-qcom models => ordinary condition, call via slot1"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 692
    const/4 p0, 0x0

    goto/16 :goto_3
.end method

.method public static setAudioParameters(Lcom/android/server/telecom/Call;Landroid/media/AudioManager;I)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 394
    const-string v2, "TelecomUtilsMultiSIM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAudioParameters : mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v2, "gsm.current.vsid"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 397
    const-string v3, "gsm.current.vsid2"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 398
    const-string v4, "TelecomUtilsMultiSIM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAudioParameters : sVsid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v2, "TelecomUtilsMultiSIM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAudioParameters : sVsid2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    if-eqz p0, :cond_4

    .line 403
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getSubId(Lcom/android/server/telecom/Call;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v2

    .line 406
    :goto_0
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 410
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 429
    :goto_1
    return-void

    .line 414
    :pswitch_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneId(Lcom/android/server/telecom/Call;)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 415
    const-string v0, "setAudioParameters phone_type=cp2"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 416
    const-string v0, "phone_type=cp2"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_1

    .line 417
    :cond_1
    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneId(Lcom/android/server/telecom/Call;)I

    move-result v1

    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    const-string v0, "feature_multisim_modem_type_DCGS"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "feature_multisim_modem_type_DCGGS"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 419
    :cond_2
    const-string v0, "setAudioParameters phone_type=cp2"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 420
    const-string v0, "phone_type=cp2"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_1

    .line 422
    :cond_3
    const-string v0, "setAudioParameters phone_type=cp1"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 423
    const-string v0, "phone_type=cp1"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setAudioPath(I)V
    .locals 2

    .prologue
    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 445
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_0

    .line 448
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 449
    if-nez p0, :cond_1

    .line 450
    const-string v1, "phone_type=cp1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    const-string v1, "phone_type=cp2"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDefaultVoiceSubId(I)Z
    .locals 2

    .prologue
    .line 508
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 509
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 510
    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDefaultVoiceSubId subId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 512
    const/4 v0, 0x1

    return v0
.end method

.method public static setMultiSimDSDAForegoundPhoneId(I)V
    .locals 2

    .prologue
    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMultiSimDSDAForegoundPhoneId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 315
    sput p0, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->DSDA_FOREGROUND_PHONEID:I

    .line 316
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->updateForegroundCallForMulSimDsda()V

    .line 317
    return-void
.end method

.method public static setMultiSimLastRejectIncomingCallPhoneId(I)V
    .locals 3

    .prologue
    .line 327
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->setMultiSimLastRejectIncomingCallPhoneId(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setForegroundPhoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static shouldProcessAsEmergency(Landroid/content/Context;Landroid/net/Uri;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 701
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 702
    if-eqz p1, :cond_0

    aget v1, v1, v0

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static updateAudioPathAfterDisconnected(Lcom/android/server/telecom/Call;)V
    .locals 4

    .prologue
    .line 433
    const-string v0, "updateAudioPathAfterDisconnected"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 434
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneId(Lcom/android/server/telecom/Call;)I

    move-result v1

    .line 435
    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 436
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getFirstCallWithState(I[I)Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 437
    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-static {v1, v3}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getFirstCallWithState(I[I)Lcom/android/server/telecom/Call;

    move-result-object v1

    .line 438
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 439
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->setAudioPath(I)V

    .line 441
    :cond_0
    return-void

    .line 435
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 436
    :array_0
    .array-data 4
        0x1
        0x3
        0x5
        0x6
    .end array-data

    .line 437
    :array_1
    .array-data 4
        0x4
        0x5
        0x6
    .end array-data
.end method
