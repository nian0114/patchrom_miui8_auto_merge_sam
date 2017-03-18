.class public Lcom/android/server/telecom/secutils/TelecomUtils;
.super Ljava/lang/Object;
.source "TelecomUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;
    }
.end annotation


# static fields
.field private static BOOSTING_TIMEOUT:I

.field public static final DELETE_PREFIX_CONTENT_URI:Landroid/net/Uri;

.field static EXTRA_SIM_ID:Ljava/lang/String;

.field private static IP_CALL_NUMBER:Ljava/lang/String;

.field private static LGTSendEmptyFlash:Z

.field private static mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private static final mHandler:Landroid/os/Handler;

.field private static mHasInCallUIWindowFocus:Z

.field private static mIsFolderOpen:Z

.field private static mIsIncomingCallAnswered:Z

.field private static mIsMutedMusicStream:Z

.field private static mIsPSBarring:Z

.field private static mIsUseSpamCache:Z

.field private static mModifyCallRequestInProgress:I

.field private static mModifyCallRequested:Z

.field public static mRedialNumber:Ljava/lang/String;

.field private static mShowAutoCspPopup:Z

.field private static mSmartCallInfo:Ljava/lang/String;

.field private static mState:I

.field private static mTagType:I

.field private static mToast:Landroid/widget/Toast;

.field public static mVolteRedialNumber:Ljava/lang/String;

.field private static misAutoReject:Z

.field private static sCoreNumLockHelper:Landroid/os/DVFSHelper;

.field private static sLastMoCallCloneIntent:Landroid/content/Intent;

.field private static sLastMoCallIntent:Landroid/content/Intent;

.field private static final sPatternJapanEmergency:Ljava/util/regex/Pattern;

.field private static final sPatternJapanNumber:Ljava/util/regex/Pattern;

.field private static sWfcLastMoCallIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 193
    const-string v0, "content://com.android.phone.callsettings/delete_prefix"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->DELETE_PREFIX_CONTENT_URI:Landroid/net/Uri;

    .line 241
    const-string v0, "(^\\*31#|^#31#)?(184|186)?(131[1-9])?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->sPatternJapanNumber:Ljava/util/regex/Pattern;

    .line 242
    const-string v0, "^110|^118|^119"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->sPatternJapanEmergency:Ljava/util/regex/Pattern;

    .line 244
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mHasInCallUIWindowFocus:Z

    .line 246
    sput-object v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mToast:Landroid/widget/Toast;

    .line 249
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsPSBarring:Z

    .line 251
    sput-object v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mRedialNumber:Ljava/lang/String;

    .line 253
    sput-object v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mVolteRedialNumber:Ljava/lang/String;

    .line 256
    sput v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mState:I

    .line 258
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsIncomingCallAnswered:Z

    .line 261
    const-string v0, "simSlot"

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->EXTRA_SIM_ID:Ljava/lang/String;

    .line 265
    const-string v0, "IP_CALL_NUMBER"

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->IP_CALL_NUMBER:Ljava/lang/String;

    .line 281
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mShowAutoCspPopup:Z

    .line 290
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsMutedMusicStream:Z

    .line 292
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsFolderOpen:Z

    .line 294
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsUseSpamCache:Z

    .line 295
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->misAutoReject:Z

    .line 296
    sput v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mTagType:I

    .line 298
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mModifyCallRequested:Z

    .line 299
    const/4 v0, -0x1

    sput v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mModifyCallRequestInProgress:I

    .line 301
    const-string v0, ""

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mSmartCallInfo:Ljava/lang/String;

    .line 303
    sput-object v2, Lcom/android/server/telecom/secutils/TelecomUtils;->sCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 304
    const/16 v0, 0x7d0

    sput v0, Lcom/android/server/telecom/secutils/TelecomUtils;->BOOSTING_TIMEOUT:I

    .line 309
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static CheckDisplayPLettrering()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4093
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 4098
    :goto_0
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oneline_greeting"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4100
    const-string v3, "ims_support_multimedia_caller_id"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4101
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "photoring_reject_all"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 4102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "photoring reject all : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v3, :cond_1

    const-string v0, "false"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->log(Ljava/lang/String;)V

    .line 4103
    if-ne v3, v1, :cond_2

    move v1, v2

    .line 4113
    :cond_0
    :goto_2
    const-string v0, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CheckDisplayPLettrering, bEnableLettering : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4115
    return v1

    .line 4102
    :cond_1
    const-string v0, "true"

    goto :goto_1

    .line 4105
    :cond_2
    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isMcidBlockedNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    move v1, v2

    goto :goto_2

    .line 4107
    :cond_4
    const-string v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4109
    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public static OutgoingCallAbroad(Ljava/lang/String;)Z
    .locals 11

    .prologue
    const/4 v4, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2586
    new-array v3, v4, [Ljava/lang/String;

    const-string v0, "00"

    aput-object v0, v3, v1

    const-string v0, "*23#00"

    aput-object v0, v3, v2

    const-string v0, "+"

    aput-object v0, v3, v10

    .line 2587
    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "+82232100404"

    aput-object v0, v4, v1

    const-string v0, "0082114"

    aput-object v0, v4, v2

    const-string v0, "+82114"

    aput-object v0, v4, v10

    .line 2588
    const-string v5, "+"

    .line 2589
    const-string v6, "+82263439000"

    .line 2590
    const-string v7, "+82221900901"

    .line 2592
    if-nez p0, :cond_1

    move v1, v2

    .line 2663
    :cond_0
    :goto_0
    return v1

    .line 2595
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2598
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "internationalcall_settings"

    invoke-static {v0, v9, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2600
    const-string v9, "extended_restrict_international_call"

    invoke-static {v9}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2601
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "outging_intcall_lock"

    invoke-static {v0, v9, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2603
    :cond_2
    if-lez v0, :cond_e

    .line 2604
    const-string v0, "emergency_find_lost_phone"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2605
    if-eqz v8, :cond_4

    const-string v0, "+82263439000"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "0000"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    .line 2607
    goto :goto_0

    .line 2610
    :cond_4
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "+82"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v2

    .line 2612
    goto :goto_0

    .line 2614
    :cond_5
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_6
    move v0, v1

    .line 2616
    :goto_1
    array-length v9, v4

    if-ge v0, v9, :cond_a

    .line 2617
    aget-object v9, v4, v0

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2618
    const-string v0, "TelecomUtils"

    const-string v3, "OutgoingCallAbroad - international rad restrict number"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 2619
    goto/16 :goto_0

    .line 2621
    :cond_7
    const-string v9, "feature_skt"

    invoke-static {v9}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2622
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2623
    const-string v0, "TelecomUtils"

    const-string v3, "OutgoingCallAbroad - T Roaming Customer Center number"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 2624
    goto/16 :goto_0

    .line 2626
    :cond_8
    const-string v9, "feature_ktt"

    invoke-static {v9}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2627
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2628
    const-string v0, "TelecomUtils"

    const-string v3, "OutgoingCallAbroad - OLLEH Roaming Customer Center number"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 2629
    goto/16 :goto_0

    .line 2616
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2635
    :cond_a
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingAutoDialEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2636
    invoke-virtual {v8, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 2637
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v10, :cond_0

    :cond_b
    move v0, v1

    .line 2652
    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_d

    .line 2653
    aget-object v4, v3, v0

    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_c

    .line 2654
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v10, :cond_0

    .line 2652
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    move v1, v2

    .line 2660
    goto/16 :goto_0

    :cond_e
    move v1, v2

    .line 2663
    goto/16 :goto_0
.end method

.method static synthetic access$000()Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .prologue
    .line 187
    sput-object p0, Lcom/android/server/telecom/secutils/TelecomUtils;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static addCallLogForNotRegisteredCall(Lcom/android/server/telecom/Call;II)V
    .locals 5

    .prologue
    const/4 v1, 0x6

    const/4 v2, 0x3

    .line 1826
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    if-eq p2, v0, :cond_1

    .line 1827
    :cond_0
    const-string v0, "TelecomUtils"

    const-string v1, "addCallLogForNotRegisteredCall : Do not make a log for not registered MO call"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1868
    :goto_0
    return-void

    .line 1831
    :cond_1
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    .line 1832
    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 1833
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v3

    .line 1836
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCdmaCallIncomingBarringOn(Lcom/android/server/telecom/Call;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    .line 1861
    :goto_1
    const-string v3, "dcm_not_support_extra_callog_type"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-ne v0, v1, :cond_b

    .line 1863
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/CallsManager;->mSecCallLogManager:Lcom/android/server/telecom/secutils/SecCallLogManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;I)V

    goto :goto_0

    .line 1838
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->hasAutoRejectBundleExtra(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    .line 1839
    goto :goto_1

    .line 1840
    :cond_3
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAccessControlOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    .line 1841
    goto :goto_1

    .line 1842
    :cond_4
    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isCarAppRunning()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isMirrorLinkReceiveCall()Z

    move-result v4

    if-nez v4, :cond_5

    move v0, v1

    .line 1843
    goto :goto_1

    .line 1849
    :cond_5
    invoke-static {p0}, Lcom/android/server/telecom/LowBatteryManager;->supportLowBatteryManager(Lcom/android/server/telecom/Call;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/telecom/LowBatteryManager;->isLowBatt()Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v2

    .line 1851
    goto :goto_1

    .line 1852
    :cond_6
    const-string v4, "missed_noti_during_call"

    invoke-static {v4}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v3, :cond_7

    if-nez v3, :cond_8

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v0, v2

    .line 1855
    goto :goto_1

    .line 1856
    :cond_8
    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_9
    if-nez v3, :cond_a

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    move v0, v2

    .line 1858
    goto/16 :goto_1

    .line 1866
    :cond_b
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/telecom/CallsManager;->mSecCallLogManager:Lcom/android/server/telecom/secutils/SecCallLogManager;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;I)V

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto/16 :goto_1
.end method

.method private static alreadyHaveNoDisconnectingCsCalls()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3619
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 3621
    if-eqz v2, :cond_0

    .line 3622
    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 3633
    :cond_0
    :goto_0
    return v0

    .line 3626
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    .line 3627
    if-eqz v2, :cond_0

    .line 3628
    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 3629
    goto :goto_0
.end method

.method public static boostCPU()V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    .line 5071
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5073
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->sCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 5074
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "Telecom"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->sCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 5075
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->sCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 5076
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->sCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    .line 5077
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 5078
    aget v0, v0, v8

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 5079
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->sCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v2, "CORE_NUM"

    const-wide/16 v6, 0x2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 5084
    :cond_0
    sget v6, Lcom/android/server/telecom/secutils/TelecomUtils;->BOOSTING_TIMEOUT:I

    .line 5085
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->sCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 5087
    :try_start_0
    const-string v0, "TelecomUtils"

    const-string v2, "CoreNumLockHelper.acquire()"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5088
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->sCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5095
    :cond_1
    :goto_0
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "Telecom"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 5096
    if-eqz v0, :cond_3

    .line 5097
    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v1

    .line 5098
    if-eqz v1, :cond_2

    .line 5099
    const-string v2, "CPU"

    aget v1, v1, v8

    int-to-long v4, v1

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 5102
    :cond_2
    :try_start_1
    const-string v1, "TelecomUtils"

    const-string v2, "CpuBooster.acquire()"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5103
    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5109
    :cond_3
    :goto_1
    return-void

    .line 5089
    :catch_0
    move-exception v0

    .line 5090
    const-string v2, "TelecomUtils"

    const-string v3, "CoreNumLockHelper.acquire() is failed"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v2, v3, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5091
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 5104
    :catch_1
    move-exception v0

    .line 5105
    const-string v1, "TelecomUtils"

    const-string v2, "CpuBooster.acquire() is failed"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static canUseHoldInVoIP()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3314
    :try_start_0
    const-string v0, "voip"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 3315
    if-eqz v0, :cond_0

    .line 3316
    invoke-interface {v0}, Landroid/os/IVoIPInterface;->canUseHoldInVoIP()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    .line 3318
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canUseHoldInVoIP - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->log(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3322
    :goto_1
    return v0

    .line 3319
    :catch_0
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 3320
    :goto_2
    :try_start_2
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canUseHoldInVoIP - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/server/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3322
    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 3319
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static changeRtsMEssage(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 11

    .prologue
    const/16 v10, 0xb

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v2, 0x0

    const/4 v7, 0x2

    .line 1352
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1353
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1354
    const-string v1, "%s"

    .line 1358
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getRtsValueForKor()[Ljava/lang/Integer;

    move-result-object v1

    .line 1360
    if-eqz v1, :cond_1e

    .line 1361
    aget-object v3, v1, v9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1362
    aget-object v3, v1, v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1363
    aget-object v1, v1, v8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1366
    :goto_0
    const v6, 0x7f0b0050

    if-eq p1, v6, :cond_0

    const v6, 0x7f0b0051

    if-ne p1, v6, :cond_7

    .line 1368
    :cond_0
    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v2

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1385
    :cond_1
    :goto_1
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1386
    const v2, 0x7f0b004b

    if-eq p1, v2, :cond_2

    const v2, 0x7f0b004c

    if-eq p1, v2, :cond_2

    const v2, 0x7f0b005a

    if-ne p1, v2, :cond_d

    .line 1388
    :cond_2
    if-nez v3, :cond_c

    .line 1389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1432
    :cond_3
    :goto_2
    const-string v2, "feature_kor_open"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1433
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isLTEDomain()Z

    move-result v0

    if-nez v0, :cond_5

    if-ne v4, v10, :cond_4

    if-nez v3, :cond_4

    if-eq v1, v10, :cond_5

    :cond_4
    if-ne v4, v8, :cond_1d

    if-nez v3, :cond_1d

    if-ne v1, v8, :cond_1d

    .line 1434
    :cond_5
    const-string v0, "%d"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1439
    :cond_6
    :goto_3
    return-object v0

    .line 1369
    :cond_7
    const v2, 0x7f0b004a

    if-eq p1, v2, :cond_8

    const v2, 0x7f0b004e

    if-ne p1, v2, :cond_b

    .line 1370
    :cond_8
    const-string v0, "ril.currentplmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1371
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1372
    const-string v0, "%s"

    const-string v2, "+82-2-6343-9000"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1380
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1374
    :cond_9
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1375
    const-string v0, "%s"

    const-string v2, "1599-0011"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1377
    :cond_a
    const-string v0, "%s"

    const-string v2, "+82-2-6343-9000"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1381
    :cond_b
    const v2, 0x7f0b004d

    if-ne p1, v2, :cond_1

    .line 1382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1391
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1392
    :cond_d
    const v2, 0x7f0b0056

    if-ne p1, v2, :cond_11

    .line 1393
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1394
    const-string v0, "%s"

    const-string v2, "1544-0010"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1398
    :goto_5
    if-eqz v4, :cond_e

    if-ne v4, v7, :cond_10

    :cond_e
    if-nez v3, :cond_10

    if-ne v1, v7, :cond_10

    .line 1399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(2)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1396
    :cond_f
    const-string v0, "%s"

    const-string v2, "+82-2-3416-7010"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1401
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1403
    :cond_11
    const v2, 0x7f0b0057

    if-eq p1, v2, :cond_12

    const v2, 0x7f0b0058

    if-eq p1, v2, :cond_12

    const v2, 0x7f0b0059

    if-eq p1, v2, :cond_12

    const v2, 0x7f0b005d

    if-ne p1, v2, :cond_15

    .line 1405
    :cond_12
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1406
    const-string v0, "%s"

    const-string v2, "1544-0010"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1411
    :goto_6
    if-nez v3, :cond_14

    .line 1412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1408
    :cond_13
    const-string v0, "%s"

    const-string v2, "+82-2-3416-7010"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1414
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1415
    :cond_15
    const v2, 0x7f0b0069

    if-eq p1, v2, :cond_16

    const v2, 0x7f0b0068

    if-eq p1, v2, :cond_16

    const v2, 0x7f0b0067

    if-ne p1, v2, :cond_17

    .line 1416
    :cond_16
    const-string v0, "%s"

    const-string v2, "1544-0010"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1417
    :cond_17
    const v2, 0x7f0b005b

    if-ne p1, v2, :cond_18

    .line 1418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1419
    :cond_18
    const v2, 0x7f0b005e

    if-eq p1, v2, :cond_19

    const v2, 0x7f0b0060

    if-eq p1, v2, :cond_19

    const v2, 0x7f0b0061

    if-eq p1, v2, :cond_19

    const v2, 0x7f0b005f

    if-ne p1, v2, :cond_3

    .line 1421
    :cond_19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0062

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1422
    const-string v2, "%s"

    const-string v6, "+82-2-3416-7010"

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1423
    if-eqz v4, :cond_1a

    if-ne v4, v7, :cond_1b

    :cond_1a
    if-nez v3, :cond_1b

    if-ne v1, v7, :cond_1b

    .line 1424
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "2)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1425
    :cond_1b
    if-nez v3, :cond_1c

    .line 1426
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1428
    :cond_1c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1436
    :cond_1d
    const-string v0, "%d"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_1e
    move v1, v2

    move v3, v2

    move v4, v2

    goto/16 :goto_0
.end method

.method public static checkAndCopyExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3126
    const-string v0, "support_emergency_report_helper_app"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3127
    const-string v0, "startFlag"

    const-string v1, "startFlag"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3129
    :cond_0
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "getNumFromIntentIfResultDataIsNull"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3130
    const-string v0, "getNumFromIntentIfResultDataIsNull"

    const-string v1, "getNumFromIntentIfResultDataIsNull"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3132
    :cond_1
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "videocall"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3133
    const-string v0, "videocall"

    const-string v1, "videocall"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3135
    :cond_2
    return-void
.end method

.method public static checkAndParseNumberDuringCSVTCall(Landroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3637
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 3638
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 3639
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 3640
    const-string v0, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone Number : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3641
    const-string v4, "TelecomUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check number starts with * or # :"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v0, "*"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3642
    const-string v0, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check number ends with # :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3643
    const-string v0, "*"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    return v1

    :cond_2
    move v0, v2

    .line 3641
    goto :goto_0

    :cond_3
    move v1, v2

    .line 3643
    goto :goto_1
.end method

.method public static checkAndUpdateForAudio(Lcom/android/server/telecom/Call;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3418
    const-string v0, "TelecomUtils"

    const-string v1, "checkAndUpdateForAudio"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3420
    const/4 v0, 0x0

    .line 3421
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    .line 3423
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-eq v2, v3, :cond_7

    .line 3424
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3425
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 3432
    :cond_0
    if-eqz v0, :cond_8

    .line 3434
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v2

    .line 3435
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgCall()Z

    move-result v3

    .line 3437
    const-string v4, "TelecomUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAndUpdateForAudio oldDomain:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getDomain()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newDomain:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3438
    const-string v4, "TelecomUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAndUpdateForAudio oldEpdg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getIsEpdgCall()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newEpdg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3439
    const-string v4, "TelecomUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAndUpdateForAudio oldCallType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getCallType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newCallType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3442
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getDomain()I

    move-result v4

    if-eq v4, v2, :cond_4

    .line 3443
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v4

    if-nez v4, :cond_3

    .line 3444
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getDomain()I

    move-result v4

    if-ne v4, v8, :cond_1

    if-eq v2, v10, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getDomain()I

    move-result v4

    if-ne v4, v10, :cond_3

    if-ne v2, v8, :cond_3

    .line 3446
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/telecom/CallAudioManager;->onEpdgStateChanged()V

    .line 3449
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/telecom/Call;->setDomain(I)V

    .line 3453
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getIsEpdgCall()Z

    move-result v2

    if-eq v2, v3, :cond_5

    .line 3454
    invoke-virtual {p0, v3}, Lcom/android/server/telecom/Call;->setIsEpdgCall(Z)V

    .line 3455
    invoke-virtual {v1, p0}, Lcom/android/server/telecom/CallAudioManager;->onEpdgStateChanged(Lcom/android/server/telecom/Call;)V

    .line 3458
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getCallType()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    if-eq v1, v0, :cond_6

    .line 3459
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/CallsManager;->onModifiedCall(Lcom/android/server/telecom/Call;)V

    .line 3465
    :cond_6
    :goto_0
    return-void

    .line 3428
    :cond_7
    const-string v0, "TelecomUtils"

    const-string v1, "checkAndUpdateForAudio call is empty"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3462
    :cond_8
    const-string v0, "TelecomUtils"

    const-string v1, "checkAndUpdateForAudio secCallExtra is empty"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static checkDriveLink(Landroid/content/Context;ZZ)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1945
    const-string v0, "drivelink_mode"

    .line 1948
    if-nez p2, :cond_2

    .line 1949
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDriveLinkEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1950
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDriveLinkNaviEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1951
    const/4 v0, 0x2

    .line 1958
    :goto_0
    if-eqz p1, :cond_1

    .line 1959
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DRIVELINK] checkDriveLink for Incoming call... CarModeON:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1963
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "drivelink_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1964
    return-void

    :cond_0
    move v0, v1

    .line 1953
    goto :goto_0

    .line 1961
    :cond_1
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DRIVELINK] checkDriveLink for Outgoing call... CarModeON:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public static checkForLGTCDMA(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4181
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->phoneIsCdma()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4182
    const-string v2, "com.android.phone.extra.FLASH_DTMF"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 4183
    const-string v3, "videocall"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 4184
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    .line 4185
    const-string v5, "TelecomUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bDTMFflag : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4186
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_2

    .line 4187
    if-eqz v2, :cond_0

    .line 4188
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->sendEmptyFlash()V

    .line 4189
    sput-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtils;->LGTSendEmptyFlash:Z

    .line 4213
    :goto_0
    return v0

    .line 4192
    :cond_0
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4193
    const v1, 0x7f0b00a4

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4196
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4197
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 4198
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 4200
    const-string v4, "*22"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/server/telecom/secutils/TelecomUtils;->LGTSendEmptyFlash:Z

    if-nez v3, :cond_2

    .line 4201
    const v2, 0x7f0b00a5

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4206
    :cond_2
    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->isInCall()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4207
    const-string v2, "TelecomUtils"

    const-string v3, "in idle cannot flash with dtmf"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 4213
    goto :goto_0
.end method

.method public static checkForVZWVoWiFi(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5059
    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isWiFiCallEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isWiFiPreffered()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isImsRegistered()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5063
    :cond_0
    const-string v1, "TelecomUtils"

    const-string v2, "checkForVZWVoWiFi - false"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5067
    :goto_0
    return v0

    .line 5066
    :cond_1
    const-string v1, "TelecomUtils"

    const-string v2, "checkForVZWVoWiFi - true"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5067
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkMultiSimDsda()Z
    .locals 2

    .prologue
    .line 3046
    const-string v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3047
    const-string v1, "dsda"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3048
    const/4 v0, 0x1

    .line 3050
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkResultNumber(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3138
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    const-string v0, "getNumFromIntentIfResultDataIsNull"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3141
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getNumFromIntentIfResultDataIsNull extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getNumFromIntentIfResultDataIsNull"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3142
    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3145
    :cond_0
    return-object p0
.end method

.method public static checkToInitiateOutgoingCall(Landroid/content/Context;Landroid/content/Intent;Z)I
    .locals 8

    .prologue
    const v7, 0x7f0b0078

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3648
    const-string v0, "handle_emergency_call_error"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3650
    invoke-static {p1, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3651
    sget-object v5, Lcom/android/server/telecom/secutils/TelecomUtils;->sPatternJapanNumber:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 3653
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3654
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3655
    sget-object v5, Lcom/android/server/telecom/secutils/TelecomUtils;->sPatternJapanEmergency:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 3656
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3657
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 3660
    :cond_0
    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 3665
    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 3666
    const-string v0, "checkToInitiateOutgoingCall - can not dial emergency video call"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->log(Ljava/lang/String;)V

    .line 3667
    const/4 v1, 0x6

    .line 3779
    :cond_1
    :goto_0
    return v1

    .line 3671
    :cond_2
    if-eqz p2, :cond_f

    .line 3672
    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3673
    const-string v0, "feature_kor_open"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3674
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v3

    .line 3675
    goto :goto_0

    .line 3678
    :cond_3
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "roaming_volte_kor"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3680
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v3

    .line 3681
    goto :goto_0

    .line 3684
    :cond_4
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3685
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3686
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v5, "CscFeature_IMS_SupportVolteDuringRoaming"

    invoke-virtual {v0, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailablePSVT()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move v1, v3

    .line 3687
    goto :goto_0

    .line 3692
    :cond_6
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3693
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v0

    if-nez v0, :cond_f

    .line 3694
    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3695
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "feature_kor_open"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3698
    :cond_7
    const-string v0, "handle_not_registered"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailablePSVT()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3699
    const/4 v1, 0x2

    goto/16 :goto_0

    .line 3703
    :cond_8
    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3704
    const-string v0, "ril.ims.ltevoicesupport"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_a

    move v0, v1

    .line 3705
    :goto_1
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailablePSVT()Z

    move-result v5

    if-eqz v5, :cond_9

    if-nez v0, :cond_b

    .line 3706
    :cond_9
    invoke-static {p0, v7, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v1, v4

    .line 3708
    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 3704
    goto :goto_1

    .line 3712
    :cond_b
    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "canada_volte_ui"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "concept_aus_voda"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3715
    :cond_c
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailablePSVT()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3716
    invoke-static {p0, v7, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v1, v4

    .line 3718
    goto/16 :goto_0

    .line 3722
    :cond_d
    const-string v0, "support_psvt_only"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3723
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailablePSVT()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getCallSubIdFromIntent(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailablePSVT(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 3726
    :cond_e
    const/16 v1, 0xc

    goto/16 :goto_0

    .line 3732
    :cond_f
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->hasAnyCalls()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3733
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 3734
    if-eqz v0, :cond_11

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSDomain(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v4, v1

    .line 3735
    :goto_2
    if-eqz v4, :cond_12

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/telecom/CallsManager;->isPotentialInCallMMICode(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    move v1, v2

    .line 3779
    goto/16 :goto_0

    :cond_11
    move v4, v2

    .line 3734
    goto :goto_2

    .line 3737
    :cond_12
    const-string v0, "common_volte_in"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p2, :cond_13

    if-eqz v4, :cond_13

    .line 3738
    const-string v0, "TelecomUtils"

    const-string v3, "RNK : checkToInitiateOutgoingCall :  New Video Call in CS Domain - CALL_FAILED"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3741
    :cond_13
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v5, "CscFeature_RIL_SupportVolteVtCall"

    invoke-virtual {v0, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "us_volte_ui"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "ee_volte_ui"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "common_volte_in"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_14
    move v0, v1

    .line 3745
    :goto_3
    if-eqz p2, :cond_15

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    .line 3748
    :cond_15
    const-string v0, "concept_kor_common"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3749
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 3750
    if-eqz v0, :cond_16

    .line 3751
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 3752
    if-eqz v0, :cond_16

    .line 3753
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 3772
    :cond_16
    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isEasyModeOn()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3773
    const-string v0, "TelecomUtils"

    const-string v3, "Cannot place second call during easy mode"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_17
    move v0, v2

    .line 3741
    goto :goto_3

    .line 3760
    :cond_18
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 3761
    if-eqz v0, :cond_1a

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move v3, v1

    .line 3762
    :goto_4
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_1b

    move v0, v1

    .line 3763
    :goto_5
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkAndParseNumberDuringCSVTCall(Landroid/content/Intent;)Z

    move-result v4

    .line 3764
    if-eqz v3, :cond_19

    if-eqz v0, :cond_19

    if-eqz v4, :cond_1

    .line 3767
    :cond_19
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->hasRingingCall()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/CallsManager;->isPotentialInCallMMICode(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 3768
    const-string v0, "TelecomUtils"

    const-string v3, "Cannot place outgoing call if ringing is present and not potential MMI code"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1a
    move v3, v2

    .line 3761
    goto :goto_4

    :cond_1b
    move v0, v2

    .line 3762
    goto :goto_5
.end method

.method public static checkVideoRecorder()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2405
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2406
    const-string v3, "service.camera.rec.running"

    .line 2407
    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2411
    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2413
    :try_start_0
    const-string v0, "service.camera.rec.running"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    move v2, v0

    .line 2422
    :goto_1
    sget-object v0, Lcom/android/server/telecom/Log;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TelecomUtils : video recording = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    return v2

    .line 2416
    :catch_0
    move-exception v0

    .line 2417
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2420
    :cond_0
    const-string v0, "TelecomUtils"

    const-string v1, "checkVideoRecorder: isRecordActive() is false"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static checkVoiceRecorder()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2428
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2429
    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2431
    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2432
    invoke-virtual {v0}, Landroid/media/AudioManager;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2434
    const-string v4, "com.sec.android.app.voicenote"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.sec.android.app.voicerecorder"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2436
    :cond_0
    const-string v0, "TelecomUtils"

    const-string v3, "checkVoiceRecorder VoiceRecorder is running"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 2447
    :goto_0
    return v0

    .line 2442
    :cond_1
    const-string v3, "fm_record_enable"

    const/4 v4, -0x2

    invoke-static {v3, v2, v4}, Lcom/android/server/telecom/TelecomSystemDB;->getSettingDB(Ljava/lang/String;II)I

    move-result v3

    .line 2443
    invoke-virtual {v0}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne v3, v1, :cond_2

    .line 2444
    const-string v0, "TelecomUtils"

    const-string v3, "checkVoiceRecorder: FM radio is running"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 2445
    goto :goto_0

    :cond_2
    move v0, v2

    .line 2447
    goto :goto_0
.end method

.method public static clearLGTSendEmptyFlashFlag()V
    .locals 1

    .prologue
    .line 4177
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtils;->LGTSendEmptyFlash:Z

    .line 4178
    return-void
.end method

.method public static displayToast(I)V
    .locals 1

    .prologue
    .line 3397
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(Ljava/lang/String;)V

    .line 3398
    return-void
.end method

.method public static displayToast(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 3401
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 3402
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 3403
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mToast:Landroid/widget/Toast;

    .line 3405
    :cond_0
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3406
    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/telecom/secutils/TelecomUtils$4;

    invoke-direct {v2, v0, p0}, Lcom/android/server/telecom/secutils/TelecomUtils$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3415
    return-void
.end method

.method private static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 3193
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 3194
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 3196
    :cond_0
    return-object p0
.end method

.method public static formatNumberForVideoConference(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 3175
    const-string v1, ""

    .line 3176
    if-eqz p0, :cond_1

    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 3177
    const-string v0, "\\$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3178
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    array-length v2, v3

    if-ge v1, v2, :cond_2

    .line 3179
    aget-object v2, v3, v1

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3180
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3181
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 3182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "$"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3184
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3178
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 3189
    :cond_2
    return-object v0
.end method

.method public static getAutoIpCallNumber(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3953
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 3954
    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getNetworkOperator(I)Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    move-result-object v0

    .line 3955
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->phoneIsCdma(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->phoneIsCdma()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3958
    :cond_1
    const-string v0, "17901"

    .line 3982
    :goto_0
    return-object v0

    .line 3959
    :cond_2
    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->CMCC:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3960
    const-string v0, "17951"

    goto :goto_0

    .line 3961
    :cond_3
    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->CU:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3962
    const-string v0, "17911"

    goto :goto_0

    .line 3964
    :cond_4
    const-string v0, "ipcall_number_chm"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3966
    const-string v0, "17951"

    goto :goto_0

    .line 3967
    :cond_5
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3968
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->phoneIsCdma(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3970
    const-string v0, "17901"

    goto :goto_0

    .line 3972
    :cond_6
    const-string v0, "17911"

    goto :goto_0

    .line 3974
    :cond_7
    const-string v0, "ipcall_number_chu"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3976
    const-string v0, "17911"

    goto :goto_0

    .line 3979
    :cond_8
    const-string v0, "17911"

    goto :goto_0
.end method

.method public static getCallSubIdFromIntent(Landroid/content/Intent;)I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 697
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getDefaultVoiceSubId()I

    move-result v1

    .line 699
    const-string v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    const-string v0, "TelecomUtils"

    const-string v2, "For multisim models, TelecomManager.EXTRA_PHONE_ACCOUNT_HANDLE"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 701
    const-string v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 710
    :goto_0
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "For multisim models, phoneAccountHandle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isEmergnecyCall(intent):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isEmergnecyCall(Landroid/content/Intent;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 711
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isEmergnecyCall(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 712
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 713
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "For multisim models, after re-calculate phoneAccountHandle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    :cond_0
    if-eqz v0, :cond_3

    .line 717
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    .line 720
    :goto_1
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallSubIdFromIntent subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 721
    return v0

    .line 702
    :cond_1
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->EXTRA_SIM_ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 703
    const-string v0, "TelecomUtils"

    const-string v2, "For multisim models, EXTRA_SIM_ID"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 704
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneAccountHandleFromIntent(Landroid/content/Intent;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    goto/16 :goto_0

    .line 706
    :cond_2
    const-string v0, "TelecomUtils"

    const-string v2, "For multisim models, no extra information so use default phoneaccounthandle"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 707
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v0

    const-string v2, "tel"

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getOutgoingPhoneAccountForScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    .line 1665
    const-string v0, ""

    .line 1666
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1667
    const-string v1, "%02d-%02d %02d:%02d:%02d.%03d"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x3

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1672
    return-object v0
.end method

.method public static getCurrentToneStream()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2191
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    .line 2193
    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 2194
    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 2195
    const/4 v0, 0x6

    .line 2201
    :goto_0
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentToneStream : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2202
    return v0

    .line 2196
    :cond_0
    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2198
    const/16 v0, 0xb

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static getCurrentUserId(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 1915
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1916
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 1917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->log(Ljava/lang/String;Z)V

    .line 1918
    return v0
.end method

.method public static getDefaultLauncher(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 5112
    if-nez p0, :cond_0

    .line 5132
    :goto_0
    return-object v0

    .line 5114
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5118
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 5120
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5126
    :goto_1
    if-eqz v1, :cond_1

    .line 5127
    const-string v0, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current default home is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5128
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5121
    :catch_0
    move-exception v1

    .line 5122
    const-string v2, "TelecomUtils"

    const-string v3, "getHomeActivities() is failed"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5123
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    goto :goto_1

    .line 5130
    :cond_1
    const-string v1, "TelecomUtils"

    const-string v2, "Current default home is: null"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getDefaultVoiceCallSubId()I
    .locals 1

    .prologue
    .line 758
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    return v0
.end method

.method public static getDriveLinkLocale(Landroid/content/Context;)I
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 1985
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1986
    const-string v0, "ko-KR"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1987
    const-string v0, "en-US"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1988
    const-string v0, "zh-CN"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1989
    const-string v0, "es-ES"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1990
    const-string v0, "fr-FR"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1991
    const-string v0, "de-DE"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1992
    const-string v0, "it-IT"

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1993
    const-string v0, "ja-JP"

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1994
    const-string v0, "ru-RU"

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1995
    const-string v0, "pt-BR"

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1996
    const-string v0, "en-GB"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1997
    const-string v0, "v-es-LA"

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1998
    const-string v0, "zh-TW"

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1999
    const-string v0, "zh-HK"

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    const-string v0, "zh-SG"

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "carmode_language"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2008
    const-string v1, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "carmode_language = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2010
    if-nez v0, :cond_0

    .line 2011
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2021
    :goto_0
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2022
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2025
    :goto_1
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get CarMode Locale - carmode_language : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", setLanguage : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2026
    return v0

    .line 2014
    :cond_0
    const-string v1, "es_US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2015
    const-string v0, "v-es-LA"

    move-object v1, v0

    goto :goto_0

    .line 2016
    :cond_1
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2017
    const-string v1, "_"

    const-string v4, "-"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method private static getErrorMsgResId(Landroid/telecom/DisconnectCause;)I
    .locals 10

    .prologue
    const v2, 0x7f0b005f

    const v5, 0x7f0b0050

    const v0, 0x7f0b0060

    const v4, 0x7f0b0059

    const v3, 0x7f0b005e

    .line 1197
    const/4 v1, -0x2

    .line 1198
    invoke-virtual {p0}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/telecom/secutils/TelecomUtils;->getTelephonyDisconnectCause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1199
    const-string v7, "TelecomUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RTSLOG : getErrorMsgResId() disconnectReason = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1201
    const-string v7, "RESTRICT_CALL_FACTORY_MODE"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1202
    const v1, 0x7f0b0010

    .line 1332
    :cond_0
    :goto_0
    return v1

    .line 1203
    :cond_1
    const-string v7, "ETC_CAUSE_REJECT"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1204
    const-string v2, "ril.currentplmn"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1206
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1207
    const-string v3, "domestic"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1208
    const v0, 0x7f0b005b

    :cond_2
    :goto_1
    move v1, v0

    .line 1213
    goto :goto_0

    .line 1209
    :cond_3
    const-string v3, "oversea"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    move v0, v1

    goto :goto_1

    .line 1213
    :cond_5
    const-string v7, "NOT_REGISTERED_NUMBER"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1214
    const-string v0, "feature_kor_open"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1215
    const v1, 0x7f0b0063

    goto :goto_0

    .line 1216
    :cond_6
    invoke-static {}, Lcom/android/server/telecom/TelecomConfig;->isSKTSIM()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1217
    const v1, 0x7f0b004d

    goto :goto_0

    .line 1219
    :cond_7
    const v1, 0x7f0b004e

    goto :goto_0

    .line 1221
    :cond_8
    const-string v7, "IMSI_UNKNOWN"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1222
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1223
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_9

    move v1, v3

    .line 1224
    goto :goto_0

    .line 1226
    :cond_9
    const v1, 0x7f0b0056

    goto :goto_0

    .line 1229
    :cond_a
    const v1, 0x7f0b004f

    goto :goto_0

    .line 1231
    :cond_b
    const-string v7, "ILLEGAL_MS"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1232
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1233
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_c

    move v1, v3

    .line 1234
    goto/16 :goto_0

    .line 1236
    :cond_c
    const v1, 0x7f0b0057

    goto/16 :goto_0

    .line 1238
    :cond_d
    const-string v0, "feature_kor_open"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1239
    const v1, 0x7f0b0063

    goto/16 :goto_0

    .line 1241
    :cond_e
    const v1, 0x7f0b0054

    goto/16 :goto_0

    .line 1243
    :cond_f
    const-string v7, "ILLEGAL_ME"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1244
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1245
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_10

    move v1, v3

    .line 1246
    goto/16 :goto_0

    .line 1248
    :cond_10
    const v1, 0x7f0b0058

    goto/16 :goto_0

    .line 1251
    :cond_11
    const v1, 0x7f0b0055

    goto/16 :goto_0

    .line 1253
    :cond_12
    const-string v7, "LOCATION_REG_FAIL"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1254
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1255
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v0

    .line 1256
    goto/16 :goto_0

    :cond_13
    move v1, v4

    .line 1258
    goto/16 :goto_0

    .line 1260
    :cond_14
    const-string v0, "feature_kor_open"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1261
    const v1, 0x7f0b0066

    goto/16 :goto_0

    :cond_15
    move v1, v5

    .line 1263
    goto/16 :goto_0

    .line 1265
    :cond_16
    const-string v7, "LOCATION_REGSTERING"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1266
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1267
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1268
    const v1, 0x7f0b0061

    goto/16 :goto_0

    .line 1270
    :cond_17
    const v1, 0x7f0b005a

    goto/16 :goto_0

    .line 1272
    :cond_18
    const-string v0, "feature_kor_open"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1273
    const v1, 0x7f0b0065

    goto/16 :goto_0

    .line 1275
    :cond_19
    const v1, 0x7f0b0051

    goto/16 :goto_0

    .line 1277
    :cond_1a
    const-string v7, "FREQ_SEARCHING"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 1278
    const v1, 0x7f0b0052

    goto/16 :goto_0

    .line 1279
    :cond_1b
    const-string v7, "NETWORK_REG_FAIL"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 1280
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1281
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v1

    if-eqz v1, :cond_1c

    move v1, v0

    .line 1282
    goto/16 :goto_0

    :cond_1c
    move v1, v4

    .line 1284
    goto/16 :goto_0

    .line 1286
    :cond_1d
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSDomain(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1287
    const v1, 0x7f0b0053

    goto/16 :goto_0

    :cond_1e
    move v1, v5

    .line 1289
    goto/16 :goto_0

    .line 1291
    :cond_1f
    const-string v0, "GPRS_SERVICE_NOT_ALLOWED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1292
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1293
    const-string v0, "ril.currentplmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1294
    const-string v1, "domestic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "single_lte"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1295
    const v0, 0x7f0b005c

    :goto_2
    move v1, v0

    .line 1303
    goto/16 :goto_0

    .line 1297
    :cond_20
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v2

    .line 1298
    goto :goto_2

    .line 1300
    :cond_21
    const v0, 0x7f0b004b

    goto :goto_2

    .line 1303
    :cond_22
    const-string v0, "feature_kor_open"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    const v1, 0x7f0b0064

    goto/16 :goto_0

    .line 1306
    :cond_23
    const-string v0, "GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1307
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1308
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_24

    move v1, v2

    .line 1309
    goto/16 :goto_0

    .line 1311
    :cond_24
    const v1, 0x7f0b004c

    goto/16 :goto_0

    .line 1314
    :cond_25
    const-string v0, "GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1315
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1316
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_26

    move v1, v3

    .line 1317
    goto/16 :goto_0

    :cond_26
    move v1, v4

    .line 1319
    goto/16 :goto_0

    .line 1322
    :cond_27
    const-string v0, "IMS_NOT_REGISTERED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1323
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1324
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 1326
    :cond_28
    const-string v0, "RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1327
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVoLTERoamingAvailable()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1328
    const v1, 0x7f0b0089

    goto/16 :goto_0

    .line 1330
    :cond_29
    const v1, 0x7f0b0092

    goto/16 :goto_0
.end method

.method public static getHasBeenVideoCall(Lcom/android/server/telecom/Call;)Z
    .locals 1

    .prologue
    .line 808
    if-eqz p0, :cond_0

    .line 809
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 810
    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getHasBeenVideoCall()Z

    move-result v0

    .line 814
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getImageIconForMissedCall(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 4327
    const-string v0, "TelecomUtils"

    const-string v1, "getImageIconForMissedCall"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4329
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 4330
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f08000a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 4331
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 4332
    invoke-static {p1, v0, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4335
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4337
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4338
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 4339
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v1, v2, v2, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4342
    new-instance v8, Landroid/graphics/BitmapShader;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v8, p1, v9, v10}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 4343
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4344
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 4345
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 4346
    const-string v6, "tablet_device"

    invoke-static {v6}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4347
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    invoke-direct {v1, v2, v2, v6, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4349
    :cond_1
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4350
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 4352
    return-object v7
.end method

.method private static getImsErrorFromDisconnectCause(Landroid/telecom/DisconnectCause;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2293
    invoke-virtual {p0}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v2

    .line 2294
    const-string v3, "0"

    .line 2295
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2296
    if-eqz v2, :cond_0

    .line 2297
    const-string v3, "\\, "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2298
    array-length v3, v3

    if-le v3, v0, :cond_0

    .line 2299
    const-string v3, "IMS_ERROR"

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->getTelephonyDisconnectCause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2304
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getInitialVTSpeakerState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3000
    const-string v1, "tc_initial_speaker_settings"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3001
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3002
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "videocall_speaker"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 3005
    :cond_0
    return v0
.end method

.method public static getIsTTYOn()Z
    .locals 1

    .prologue
    .line 818
    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->getTtySetting()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getLastMoCallIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1450
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent(Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getLastMoCallIntent(Z)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1454
    if-eqz p0, :cond_0

    .line 1455
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->sLastMoCallCloneIntent:Landroid/content/Intent;

    .line 1457
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->sLastMoCallIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getLine1Number(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2969
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2970
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 2971
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLogNumber(Lcom/android/server/telecom/Call;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3792
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getOriginalNumber(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    .line 3794
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3795
    invoke-static {v0}, Lcom/android/server/telecom/operator/OperatorUtils;->getSKTCallLogNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3800
    :cond_0
    :goto_0
    return-object v0

    .line 3796
    :cond_1
    const-string v1, "presentation_convert_to_private_number"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3797
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3798
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPresentationString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getModifyVoiceCallRequest()Z
    .locals 1

    .prologue
    .line 4942
    sget-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mModifyCallRequested:Z

    return v0
.end method

.method public static getNameOrNumberFromCall(Lcom/android/server/telecom/Call;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3113
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3114
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3121
    :goto_0
    return-object v0

    .line 3117
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 3118
    if-eqz v0, :cond_1

    .line 3119
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 3121
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNetworkOperator(I)Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3901
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    .line 3902
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3903
    :goto_0
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operatorNumeric : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3905
    packed-switch v0, :pswitch_data_0

    .line 3917
    :pswitch_0
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->OTHERS:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 3902
    goto :goto_0

    .line 3909
    :pswitch_1
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->CMCC:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    goto :goto_1

    .line 3912
    :pswitch_2
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->CU:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    goto :goto_1

    .line 3915
    :pswitch_3
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->CTC:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    goto :goto_1

    .line 3905
    :pswitch_data_0
    .packed-switch 0xb3b0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getOperatorCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 3329
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3330
    if-nez p0, :cond_8

    .line 3331
    const-string v0, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TelecomFeature.Operator.FEATURE_KTT PRESENTATION_RESTRICTED mHandlePresentation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3332
    const/4 v0, 0x2

    if-ne p2, v0, :cond_8

    .line 3333
    if-eqz p1, :cond_7

    .line 3334
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3336
    :goto_0
    const-string v2, "anonymous"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Anonymous"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    move-object p1, v0

    move-object v0, v1

    .line 3343
    :goto_1
    if-nez p0, :cond_2

    .line 3352
    :cond_1
    :goto_2
    return-object v0

    .line 3344
    :cond_2
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3345
    const-string v2, "unknown"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "unknown"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    const-string v2, "anonymous"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "anonymous"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const-string v2, "anonymous"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Anonymous"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3348
    :cond_5
    const-string v0, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KTT PRESENTATION_RESTRICTED -number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cnap ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 3349
    goto :goto_2

    :cond_6
    move-object v5, p1

    move-object p1, v0

    move-object v0, v5

    goto :goto_1

    :cond_7
    move-object v0, p1

    goto :goto_0

    :cond_8
    move-object v0, p1

    goto :goto_1
.end method

.method public static getOriginalNumber(Lcom/android/server/telecom/Call;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3806
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getOriginalHandle()Landroid/net/Uri;

    move-result-object v0

    .line 3808
    if-nez v0, :cond_1

    .line 3809
    const/4 v0, 0x0

    .line 3821
    :cond_0
    :goto_0
    return-object v0

    .line 3812
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 3813
    const-string v1, "att_volte_ui"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "canada_volte_ui"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "Conference call"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3818
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3819
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPhoneAccountHandleFromIntent(Landroid/content/Intent;)Landroid/telecom/PhoneAccountHandle;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 725
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->EXTRA_SIM_ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->EXTRA_SIM_ID:Ljava/lang/String;

    invoke-virtual {p0, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 727
    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 728
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneAccountHandleFromIntent - simSlotID :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", phoneAccountHandle : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 731
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1538
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isSimSubscriptionPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1554
    :goto_0
    return v0

    .line 1543
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1544
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1552
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 1553
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneTypeFromCall : PhoneType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1546
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1

    .line 1548
    :catch_0
    move-exception v0

    .line 1549
    const-string v0, "TelecomUtils"

    const-string v2, "getPhoneTypeFromCall failed : NumberFormatException"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1550
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    goto :goto_1
.end method

.method public static getPresentationString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3200
    const-string v0, "usa_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3201
    invoke-static {p0, p1, p2}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPresentationString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3214
    :cond_0
    :goto_0
    return-object p2

    .line 3204
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eqz p2, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "anonymous"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const-string v0, "presentation_convert_to_private_number"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3205
    :cond_3
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3206
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3207
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 3209
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 3210
    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 3211
    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 3212
    const v0, 0x7f0b0008

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static getPreviousState()I
    .locals 1

    .prologue
    .line 4119
    sget v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mState:I

    return v0
.end method

.method public static getRadDisplayNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 4492
    const/16 v0, 0x8

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "+82"

    aput-object v0, v3, v2

    const-string v0, "+0082"

    aput-object v0, v3, v9

    const/4 v0, 0x2

    const-string v1, "0082"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "+082"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "082"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "82"

    aput-object v1, v3, v0

    const/4 v0, 0x6

    const-string v1, "00682"

    aput-object v1, v3, v0

    const/4 v0, 0x7

    const-string v1, "+00682"

    aput-object v1, v3, v0

    .line 4493
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 4494
    array-length v4, v3

    move v1, v2

    move-object v0, p0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 4495
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4496
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4497
    const-string v5, "TelecomUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getRadDisplayNumber: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4494
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object p0, v0

    .line 4501
    :cond_2
    return-object p0
.end method

.method private static getRtsValueForKor()[Ljava/lang/Integer;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1336
    const-string v0, "ril.skt.network_regist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1337
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Idle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v5, :cond_0

    .line 1338
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    .line 1339
    const-string v2, ";"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 1340
    aget-object v2, v1, v6

    const-string v3, "Status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    .line 1341
    aget-object v2, v1, v4

    const-string v3, "Idle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    .line 1342
    aget-object v2, v1, v7

    const-string v3, "CS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v7

    .line 1343
    aget-object v1, v1, v8

    const-string v2, "PS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    .line 1344
    const/4 v1, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1347
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSIPErrorFromDisconnectCause(Landroid/telecom/DisconnectCause;)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2278
    invoke-virtual {p0}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v1

    .line 2279
    const-string v0, "0"

    .line 2280
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2281
    if-eqz v1, :cond_0

    .line 2282
    const-string v2, "\\, "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2283
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 2284
    const-string v3, "IMS_ERROR"

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getTelephonyDisconnectCause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2285
    aget-object v0, v2, v5

    .line 2289
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getScoverManager()Lcom/samsung/android/sdk/cover/ScoverManager;
    .locals 2

    .prologue
    .line 3009
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v0, :cond_0

    .line 3010
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 3012
    :cond_0
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    return-object v0
.end method

.method public static getServiceStatus()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2568
    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2569
    const/4 v2, 0x0

    .line 2571
    const/4 v0, 0x7

    :try_start_0
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2577
    :goto_0
    if-eqz v0, :cond_0

    .line 2578
    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getServiceStatus()Z

    move-result v0

    .line 2580
    :goto_1
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getServiceStatus:isServiceStatusEnabled :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2581
    return v0

    .line 2573
    :catch_0
    move-exception v0

    .line 2574
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getServiceStatus:RuntimeException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1
.end method

.method public static getSmartCallInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5008
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSmartCallInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mSmartCallInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5009
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mSmartCallInfo:Ljava/lang/String;

    return-object v0
.end method

.method public static getSpamCallType()I
    .locals 3

    .prologue
    .line 4874
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSpamCallType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mTagType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4875
    sget v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mTagType:I

    return v0
.end method

.method public static getSpamCallType(Lcom/android/server/telecom/Call;)I
    .locals 4

    .prologue
    .line 1033
    const/4 v0, -0x1

    .line 1034
    if-eqz p0, :cond_0

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    .line 1036
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getisSpam()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1037
    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSpamTagType()I

    move-result v0

    .line 1040
    :cond_0
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpamCallType retValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1041
    return v0
.end method

.method public static getSubIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 682
    const/4 v1, -0x1

    .line 684
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 685
    const-string v0, "telecom"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 686
    invoke-virtual {v0, p0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v3

    .line 687
    if-eqz v3, :cond_0

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    const-string v0, "phone"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 689
    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v0

    .line 691
    :goto_0
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubIdForPhoneAccount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getSubPrefix(ILandroid/content/Intent;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4967
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubPrefix ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4969
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4970
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getCallSubIdFromIntent(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 4972
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 4998
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4974
    :pswitch_0
    if-nez v0, :cond_1

    .line 4975
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_NUMBER_PREFIX_ONE"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4978
    :cond_1
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_NUMBER_PREFIX_ONE_SIM2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4982
    :pswitch_1
    if-nez v0, :cond_2

    .line 4983
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_NUMBER_PREFIX_TWO"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4986
    :cond_2
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_NUMBER_PREFIX_TWO_SIM2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4990
    :pswitch_2
    if-nez v0, :cond_3

    .line 4991
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_NUMBER_PREFIX_THREE"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4994
    :cond_3
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_NUMBER_PREFIX_THREE_SIM2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4972
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getTelephonyDisconnectCause(Landroid/telecom/DisconnectCause;)I
    .locals 1

    .prologue
    .line 1181
    invoke-virtual {p0}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getTelephonyDisconnectCause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->disconnectCauseId(Ljava/lang/String;)I

    move-result v0

    .line 1184
    return v0
.end method

.method private static getTelephonyDisconnectCause(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1188
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1189
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1190
    array-length v1, v0

    .line 1191
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    aget-object p0, v0, v1

    .line 1193
    :cond_0
    return-object p0
.end method

.method public static getTextIconForMissedCall(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 4356
    const-string v0, "TelecomUtils"

    const-string v1, "getTextIconForMissedCall"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4358
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    .line 4359
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f090017

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v4, v0

    .line 4360
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f08000a

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 4361
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f08000b

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 4363
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 4364
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4365
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v0, v1

    int-to-float v9, v1

    invoke-direct {v8, v10, v10, v0, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4366
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 4367
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4368
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 4369
    invoke-virtual {v0, v8, v6}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 4370
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 4371
    int-to-float v4, v4

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4372
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 4373
    const-string v4, "sec-roboto-light"

    invoke-static {v4, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4374
    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, v1, 0x4

    sub-int/2addr v1, v5

    int-to-float v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 4376
    return-object v9
.end method

.method public static getTwoPhoneDialNumber(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 4505
    if-eqz p1, :cond_0

    const-string v0, "*77"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4506
    const-string v0, "tel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*77"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4508
    :cond_0
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTwoPhoneDialNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4509
    return-object p0
.end method

.method public static getTwoPhoneDisplayNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 4513
    if-eqz p0, :cond_0

    const-string v0, "*77"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4514
    const-string v0, "*77"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 4516
    :cond_0
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTwoPhoneDisplayNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4517
    return-object p0
.end method

.method public static getTwoPhoneUserId(Landroid/content/Context;)I
    .locals 6

    .prologue
    .line 4557
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 4558
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 4560
    const/16 v2, -0x2710

    .line 4562
    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isTwoPhoneAccount()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4563
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 4564
    const-string v4, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTwoPhoneUserId: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v1, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4566
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    if-eqz v1, :cond_0

    .line 4568
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 4573
    :goto_1
    return v0

    .line 4564
    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public static getUseSpamCallCache()Z
    .locals 1

    .prologue
    .line 5032
    sget-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsUseSpamCache:Z

    return v0
.end method

.method public static getVoicetalkLocale()Ljava/util/Locale;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2113
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2114
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 2115
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 2118
    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isCarModeOn()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2120
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "voicetalk_language"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2121
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "voicetalk_language = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2122
    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isCarmodeHome()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2124
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "carmode_language"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2125
    const-string v1, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "carmode_language = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2126
    if-eqz v0, :cond_0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2127
    const-string v1, "_"

    const-string v3, "-"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2138
    :cond_0
    :goto_0
    if-nez v0, :cond_7

    .line 2139
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2148
    :cond_1
    :goto_1
    const-string v1, "en-gb_GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2149
    const-string v0, "en_GB"

    .line 2151
    :cond_2
    const-string v1, "feature_hktw"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isCarModeOn()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2152
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2153
    const-string v0, "en-US"

    .line 2157
    :cond_3
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2160
    const/4 v1, 0x2

    array-length v4, v3

    if-ne v1, v4, :cond_9

    .line 2161
    new-instance v1, Ljava/util/Locale;

    aget-object v4, v3, v6

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-direct {v1, v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    :goto_2
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVoicetalkLocale - previousLocale : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " voiceLocale : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " voicetalkLocale : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2167
    return-object v1

    .line 2130
    :cond_4
    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "HK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "TW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2131
    :cond_5
    const-string v0, "en-US"

    goto/16 :goto_0

    .line 2134
    :cond_6
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2140
    :cond_7
    const-string v1, "v-es-LA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2141
    const-string v0, "es"

    goto/16 :goto_1

    .line 2142
    :cond_8
    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2143
    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2144
    const-string v0, "zh-CN"

    goto/16 :goto_1

    .line 2163
    :cond_9
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getWfcLastMoCallIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1468
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->sWfcLastMoCallIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public static handleModifyCallException(Ljava/lang/String;I)V
    .locals 6

    .prologue
    const v5, 0x7f0b0083

    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 3226
    if-eqz p0, :cond_8

    .line 3227
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3230
    :goto_0
    const/16 v2, 0x456

    if-ne v0, v2, :cond_2

    .line 3231
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_dcm"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_can"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3237
    :cond_0
    const v0, 0x7f0b0081

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    .line 3255
    :cond_1
    :goto_1
    return-void

    .line 3239
    :cond_2
    const/16 v2, 0x455

    if-ne v0, v2, :cond_6

    .line 3240
    if-nez p1, :cond_3

    .line 3241
    const v0, 0x7f0b0082

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    goto :goto_1

    .line 3242
    :cond_3
    if-eq p1, v3, :cond_4

    if-ne p1, v4, :cond_1

    .line 3243
    :cond_4
    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3244
    const v0, 0x7f0b0084

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    goto :goto_1

    .line 3246
    :cond_5
    invoke-static {v5}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    goto :goto_1

    .line 3248
    :cond_6
    const-string v2, "dcm_volte_popup_message"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x1e8

    if-ne v0, v2, :cond_7

    if-ne p1, v3, :cond_7

    .line 3251
    invoke-static {v5}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    goto :goto_1

    .line 3253
    :cond_7
    const-string v0, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleModifyCallException Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    move v0, v1

    goto/16 :goto_0
.end method

.method public static hasAutoRejectBundleExtra(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1483
    if-nez p0, :cond_1

    .line 1490
    :cond_0
    :goto_0
    return v0

    .line 1486
    :cond_1
    invoke-static {p0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    .line 1487
    if-eqz v1, :cond_0

    .line 1488
    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->isAutoRejectCall()Z

    move-result v0

    goto :goto_0
.end method

.method public static hasInCallUIWindowFocus()Z
    .locals 1

    .prologue
    .line 3059
    sget-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mHasInCallUIWindowFocus:Z

    return v0
.end method

.method private static ignoretheAllIncomingCalls()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2717
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2719
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "user_setup_complete"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 2721
    :goto_0
    const-string v4, "TelecomUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USER_SETUP_COMPLETE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2723
    const-string v4, "skip_provisioning_check_on_encrypting"

    invoke-static {v4}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v0, :cond_0

    .line 2724
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.DEVICE_INITIALIZATION_WIZARD"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 2727
    if-nez v3, :cond_0

    .line 2728
    const-string v3, "TelecomUtils"

    const-string v4, "SetupWizard is disabled, provisioned is false"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2730
    const-string v3, "encrypted"

    const-string v4, "ro.crypto.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "trigger_restart_min_framework"

    const-string v4, "vold.decrypt"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2732
    const-string v0, "TelecomUtils"

    const-string v3, "encrypted is not completed, provision set to true"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 2739
    :cond_0
    if-nez v0, :cond_2

    .line 2743
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 2719
    goto :goto_0

    :cond_2
    move v1, v2

    .line 2743
    goto :goto_1
.end method

.method public static isAccessControlOn(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1585
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "access_control_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1587
    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1589
    :goto_0
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAccessControlOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1590
    return v0

    :cond_0
    move v0, v1

    .line 1587
    goto :goto_0
.end method

.method public static isActiveTwoPhone(Lcom/android/server/telecom/Call;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 4547
    if-nez p0, :cond_1

    .line 4553
    :cond_0
    :goto_0
    return v0

    .line 4548
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    .line 4549
    if-eqz v1, :cond_0

    .line 4550
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActiveTwoPhone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getIsTwoPhone()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4551
    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getIsTwoPhone()Z

    move-result v0

    goto :goto_0
.end method

.method public static isAdditionalPrivilegedDialer(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5036
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 5038
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 5039
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5040
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAdditionalPrivilegedDialer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5044
    :goto_1
    return v0

    .line 5038
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 5044
    goto :goto_1
.end method

.method public static isAllCallDisconnected()Z
    .locals 1

    .prologue
    .line 1016
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->hasAnyCallsExceptDisconnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAutoRedialCall(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 870
    const/4 v0, 0x0

    .line 872
    if-eqz p0, :cond_0

    .line 873
    invoke-static {p0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    .line 874
    if-eqz v1, :cond_0

    .line 875
    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->isRedialCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 876
    const/4 v0, 0x1

    .line 880
    :cond_0
    return v0
.end method

.method public static isAvailableInternationCall(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2850
    const-string v0, "restrict_international_call"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "extended_restrict_international_call"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2852
    :cond_0
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 2853
    if-eqz v3, :cond_1

    invoke-static {p1, v3}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 2854
    :goto_0
    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->OutgoingCallAbroad(Ljava/lang/String;)Z

    move-result v4

    .line 2855
    const-string v5, "TelecomUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processOutgoingCallIntent number : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " emergencyNumber :"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " canCallAbroad : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v3, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2858
    if-nez v0, :cond_5

    if-nez v4, :cond_5

    .line 2859
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2862
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "outging_intcall_lock_roaming"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 2863
    :goto_1
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intlockRoaming : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2864
    if-eqz v0, :cond_3

    .line 2865
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2866
    const-class v1, Lcom/android/server/telecom/operator/kor/RoamingIntCallDialog;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2867
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2868
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2879
    :goto_2
    return v2

    :cond_1
    move v0, v2

    .line 2853
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 2862
    goto :goto_1

    :cond_3
    move v2, v1

    .line 2871
    goto :goto_2

    .line 2874
    :cond_4
    const v0, 0x7f0b0036

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    goto :goto_2

    :cond_5
    move v2, v1

    .line 2879
    goto :goto_2
.end method

.method public static isAvailablePSVT()Z
    .locals 1

    .prologue
    .line 2471
    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2472
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isServiceRegistered(I)Z

    move-result v0

    .line 2474
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAvailablePSVT(I)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 2478
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2479
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailablePSVT TelecomUtilsMultiSIM.getDefaultDataSubId():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getDefaultDataSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2480
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getDefaultDataSubId()I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 2486
    :goto_0
    return v0

    .line 2483
    :cond_0
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailablePSVT()Z

    move-result v0

    goto :goto_0

    .line 2486
    :cond_1
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailablePSVT()Z

    move-result v0

    goto :goto_0
.end method

.method public static isAvailableVoLTE()Z
    .locals 1

    .prologue
    .line 2451
    const-string v0, "enabled"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2452
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isServiceRegistered(I)Z

    move-result v0

    .line 2454
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAvailableVoLTE(I)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 2458
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2459
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableVoLTE subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",TelecomUtilsMultiSIM.getDefaultDataSubId():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getDefaultDataSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2460
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getDefaultDataSubId()I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 2466
    :goto_0
    return v0

    .line 2463
    :cond_0
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailableVoLTE()Z

    move-result v0

    goto :goto_0

    .line 2466
    :cond_1
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailableVoLTE()Z

    move-result v0

    goto :goto_0
.end method

.method public static isAvailableVoWIFI()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2491
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    .line 2492
    if-nez v0, :cond_0

    .line 2503
    :goto_0
    return v2

    .line 2495
    :cond_0
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2496
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2497
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 2498
    const/16 v3, 0x12

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 2499
    :goto_1
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isImsRegistered()Z

    move-result v3

    .line 2501
    const-string v4, "TelecomUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNetworkTypeIWLAN="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isImsRegistered="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2503
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2498
    goto :goto_1

    :cond_2
    move v1, v2

    .line 2503
    goto :goto_2
.end method

.method public static isCSDomain(Lcom/android/server/telecom/Call;)Z
    .locals 3

    .prologue
    .line 962

    const/4 v0, 0x0

    return v0
.end method

.method public static isCSVideoCall(Landroid/os/Bundle;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    return v0

.end method

.method public static isCSVideoCall(Lcom/android/server/telecom/Call;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    return v0

.end method

.method public static isCSVoiceCall(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 672
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voicecall_type"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 673
    if-ne v2, v0, :cond_0

    .line 674
    const-string v2, "TelecomUtils"

    const-string v3, "VOICECALL_TYPE = isCSVoiceCall  : "

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 677
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isCalledPartyBCDNumber(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 5150
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 5151
    :cond_0
    const-string v1, "TelecomUtils"

    const-string v2, "isCalledPartyBCDNumber, number is null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5169
    :cond_1
    :goto_0
    return v0

    .line 5155
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 5156
    array-length v3, v2

    move v1, v0

    .line 5158
    :goto_1
    if-ge v1, v3, :cond_6

    .line 5159
    aget-char v4, v2, v1

    .line 5160
    if-nez v1, :cond_4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_4

    .line 5158
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5162
    :cond_4
    const/16 v5, 0x30

    if-lt v4, v5, :cond_5

    const/16 v5, 0x39

    if-le v4, v5, :cond_3

    .line 5164
    :cond_5
    const/16 v5, 0x2a

    if-eq v4, v5, :cond_3

    const/16 v5, 0x23

    if-ne v4, v5, :cond_1

    goto :goto_2

    .line 5169
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isCdmaCallIncomingBarringOn(Lcom/android/server/telecom/Call;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 1495
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1498
    :try_start_0
    const-string v2, "com.android.phone"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1504
    const-string v3, "china_cdma_call"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v3

    if-ne v3, v4, :cond_0

    if-eqz v2, :cond_0

    .line 1507
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cb_incoming_key"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1508
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCdmaCallIncomingBarringOn : cbIncomingKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1509
    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1511
    :cond_0
    :goto_0
    return v0

    .line 1500
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isCdmaCallOutgoingBarringOn(Lcom/android/server/telecom/Call;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 1516
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1519
    :try_start_0
    const-string v2, "com.android.phone"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1525
    const-string v3, "china_cdma_call"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v3

    if-ne v3, v4, :cond_0

    if-eqz v2, :cond_0

    .line 1528
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cb_outgoing_key"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1529
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCdmaCallIncomingBarringOn : cbOutgoingKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1530
    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1532
    :cond_0
    :goto_0
    return v0

    .line 1521
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isCoverClosed(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3018
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getScoverManager()Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v0

    .line 3019
    if-nez v0, :cond_0

    .line 3020
    const-string v0, "TelecomUtils"

    const-string v3, "isCoverClosed : coverManager is null"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3042
    :goto_0
    return v1

    .line 3023
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v3

    .line 3025
    if-nez v3, :cond_1

    .line 3026
    const-string v0, "TelecomUtils"

    const-string v3, "isCoverClosed : coverState is null"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3030
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 3036
    :goto_1
    invoke-virtual {v3}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v3

    if-nez v3, :cond_3

    .line 3037
    const-string v0, "TelecomUtils"

    const-string v3, "isCoverClosed : TYPE_FLIP_COVER "

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 3033
    goto :goto_1

    .line 3041
    :cond_3
    if-eqz v0, :cond_4

    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCoverClosed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move v1, v0

    .line 3042
    goto :goto_0
.end method

.method public static isCurrentNetworkMCC(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 2885
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2899
    :goto_0
    return v1

    .line 2889
    :cond_0
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2890
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 2891
    const/4 v0, 0x0

    .line 2892
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_1

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2893
    :cond_1
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCurrentNetworkMCC : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2895
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2896
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 2899
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static isDefaultIMEI()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2838
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2840
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2841
    const-string v3, "357858010034783"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "000000000000000"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "004400152020002"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2842
    :cond_0
    const-string v0, "TelecomUtils"

    const-string v3, "International Mobile Equipment Identity is initial state"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 2845
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isDeviceOnLTE()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3162
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3163
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3164
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 3165
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDeviceOnLTE() type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3167
    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 3170
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public static isDialToTwoPhone(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4521
    const-string v0, "TwoPhoneDialOption"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4524
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isEmergnecyCall(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4543
    :goto_0
    return v2

    .line 4527
    :cond_0
    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isTwoPhoneRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4528
    const-string v0, "TelecomUtils"

    const-string v3, "isDialToTwoPhone: not registered"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4531
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 4534
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4535
    const-string v4, "TelecomUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DialOption : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4536
    const-string v4, "twophone"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    .line 4542
    :cond_2
    :goto_2
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDialToTwoPhone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    .line 4543
    goto :goto_0

    .line 4538
    :cond_3
    const-string v4, "onephone"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    .line 4539
    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public static isDowngradeCall(Lcom/android/server/telecom/Call;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 851
    if-eqz p0, :cond_0

    .line 852
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 853
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->isDowngradeCall()Z

    move-result v0

    .line 855
    :goto_0
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDowngradeCall : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 856
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isDriveLinkEnable(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1922
    const-string v2, "car_mode_on"

    invoke-static {v2, v1}, Lcom/android/server/telecom/TelecomSystemDB;->getSecureSettingDB(Ljava/lang/String;I)I

    move-result v2

    .line 1923
    const-string v3, "com.sec.android.automotive.drivelink"

    invoke-static {p0, v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRunningProcess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 1924
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DRIVELINK]check CarModeON flagDriveLink : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->log(Ljava/lang/String;)V

    .line 1925
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DRIVELINK]check CarModeON isRunningProcess : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->log(Ljava/lang/String;)V

    .line 1926
    if-ne v2, v0, :cond_0

    if-eqz v3, :cond_0

    .line 1929
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isDriveLinkNaviEnable(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1933
    const-string v2, "drive_link_multi_setting"

    invoke-static {v2, v1}, Lcom/android/server/telecom/TelecomSystemDB;->getSecureSettingDB(Ljava/lang/String;I)I

    move-result v2

    .line 1934
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "drivelink_navigation"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1935
    invoke-static {p0, v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRunningProcess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 1936
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DRIVELINK]check CarModeONNavi flagDriveNaviLink : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->log(Ljava/lang/String;)V

    .line 1937
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DRIVELINK]check CarModeONNavi isRunningProcess : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->log(Ljava/lang/String;)V

    .line 1938
    if-ne v2, v0, :cond_0

    if-eqz v3, :cond_0

    .line 1941
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isDrivingModeOn(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1967
    const-string v2, "driving_mode_on"

    .line 1969
    if-eqz p0, :cond_2

    .line 1970
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_incoming_call_notification"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1975
    :goto_0
    const-string v2, "h_and_j_as_phone_os_up"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1981
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 1970
    goto :goto_0

    .line 1979
    :cond_1
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDrivingModeOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    move v1, v0

    .line 1981
    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static isEmergnecyCall(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 762
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 763
    const/4 v0, 0x0

    .line 764
    if-eqz p0, :cond_0

    .line 765
    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 766
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 769
    :cond_0
    return v0
.end method

.method public static isEpdgCall(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 984
    const/4 v0, 0x0

    return v0
.end method

.method public static isEpdgCall(Lcom/android/server/telecom/Call;)Z
    .locals 1

    .prologue
    .line 976
    const/4 v0, 0x0

    return v0
.end method

.method public static isEpdgW2L(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 995
    const/4 v0, 0x0

    return v0
.end method

.method public static isFgCallDisconnectingState()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1007
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 1008
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 1009
    const/4 v0, 0x1

    .line 1011
    :goto_0
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFgCallDisconnectingState retValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1012
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isFolderOpen()Z
    .locals 1

    .prologue
    .line 4839
    sget-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsFolderOpen:Z

    return v0
.end method

.method public static isGearVrConnecting()Z
    .locals 3

    .prologue
    .line 4396
    const-string v0, "true"

    const-string v1, "sys.hmt.connected"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHardKeyboardClosed()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 4475
    const/4 v1, 0x0

    .line 4476
    const-string v2, "support_folder_hardkey"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4477
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4478
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v2, v0, :cond_0

    .line 4479
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    .line 4480
    invoke-virtual {v2}, Lcom/android/server/telecom/CallAudioManager;->isBluetoothAudioOn()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/telecom/CallAudioManager;->isWiredHeadsetPluggedIn()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->hasRingingCall()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4482
    const-string v1, "isHardKeyboardClosed(): Hardkeyboard is closed."

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->log(Ljava/lang/String;)V

    .line 4487
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isImsRegistered()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2549
    const-string v0, "enabled"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 2563
    :goto_0
    return v0

    .line 2552
    :cond_0
    const/4 v2, 0x0

    .line 2554
    const/4 v0, 0x7

    :try_start_0
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2560
    :goto_1
    if-nez v0, :cond_1

    move v0, v1

    .line 2561
    goto :goto_0

    .line 2556
    :catch_0
    move-exception v0

    .line 2557
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isImsRegistered:RuntimeException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_1

    .line 2563
    :cond_1
    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isRegistered()Z

    move-result v0

    goto :goto_0
.end method

.method public static isInLockTaskMode(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    return v0

.end method

.method public static isIncomingCallAnswered()Z
    .locals 1

    .prologue
    .line 4156
    sget-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsIncomingCallAnswered:Z

    return v0
.end method

.method public static isIncomingEpdg(Lcom/android/server/telecom/Call;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 5174
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isEpdgCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5175
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 5177
    :goto_0
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIncomingEpdg:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5178
    return v0

    :cond_0
    move v0, v1

    .line 5175
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isIntIncomingCall(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 2905
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2906
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 2907
    const/4 v0, 0x0

    .line 2908
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2910
    :cond_0
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Check prefix of incoming call number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2912
    if-eqz p0, :cond_2

    const-string v2, "00"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "450"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2915
    const/4 v0, 0x1

    .line 2917
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isIntIncomingCallVoiceNoti()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2921
    const-string v0, "extended_restrict_international_call"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2943
    :goto_0
    return v2

    .line 2926
    :cond_0
    const/4 v0, 0x0

    .line 2928
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    new-array v4, v1, [I

    const/4 v5, 0x4

    aput v5, v4, v2

    invoke-virtual {v3, v4}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v3

    .line 2929
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2930
    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2935
    :goto_1
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "intcall_voice_noti"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2936
    const-string v4, "TelecomUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " IntIncomingCallVoiceNoti checkSetting : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2938
    if-lez v3, :cond_2

    .line 2939
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isIntIncomingCall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    move v2, v0

    .line 2943
    goto :goto_0

    .line 2932
    :cond_1
    const-string v3, "TelecomUtils"

    const-string v4, " call == null "

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method public static isIntent_PSVT(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3258
    const-string v1, "common_vt"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3259
    if-eqz p0, :cond_0

    const-string v1, "videocall"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3260
    const-string v1, "videocall"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 3263
    :cond_0
    return v0
.end method

.method private static isLTEDomain()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 4879
    const-string v1, ""

    .line 4880
    const-string v1, "ril.reject.rat"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4882
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RTSLOG : isLTEDomain() ril.reject.rat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4884
    const-string v2, "L"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4885
    const/4 v0, 0x1

    .line 4888
    :cond_0
    return v0
.end method

.method public static isModifyCallRequestInProgress()I
    .locals 1

    .prologue
    .line 4950
    sget v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mModifyCallRequestInProgress:I

    return v0
.end method

.method public static isModifyReceiveState(Lcom/android/server/telecom/Call;)Z
    .locals 3

    .prologue
    .line 822
    const/4 v0, 0x0

    .line 824
    if-eqz p0, :cond_0

    .line 825
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    .line 826
    if-eqz v1, :cond_0

    .line 827
    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 828
    const/4 v0, 0x1

    .line 832
    :cond_0
    return v0
.end method

.method public static isModifyRequestState(Lcom/android/server/telecom/Call;)Z
    .locals 3

    .prologue
    .line 836
    const/4 v0, 0x0

    .line 838
    if-eqz p0, :cond_0

    .line 839
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    .line 840
    if-eqz v1, :cond_0

    .line 841
    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 842
    const/4 v0, 0x1

    .line 846
    :cond_0
    return v0
.end method

.method public static isNoSim()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1052
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1054
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1055
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isAllSlotNoSim()Z

    move-result v0

    .line 1059
    :goto_0
    return v0

    .line 1057
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 1058
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "telephonyManager.getSimState() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1059
    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_1

    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isNumberExists(I)Z
    .locals 1

    .prologue
    .line 3219
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOneTouchReportEnabled(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 2782
    const-string v0, "go.police.report"

    .line 2783
    const-string v0, "com.android.vending"

    .line 2789
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2791
    :try_start_0
    const-string v1, "go.police.report"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2793
    const-string v1, "com.android.vending"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2794
    const-string v0, "TelecomUtils"

    const-string v1, "isOneTouchReportEnabled package is not installed.."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2829
    :goto_0
    return v6

    .line 2797
    :catch_0
    move-exception v0

    .line 2798
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOneTouchReportEnabled package is not installed / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2804
    :cond_0
    const-string v0, "content://go.police.provider.report"

    .line 2805
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2807
    if-eqz v0, :cond_5

    .line 2808
    const-string v1, "content://go.police.provider.report"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2810
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2811
    const-string v0, "customer_agreement"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2813
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2814
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2815
    if-ne v7, v0, :cond_1

    move v6, v7

    .line 2817
    :cond_1
    const-string v1, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOneTouchReportEnabled customerAgreementValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move v0, v6

    .line 2823
    if-eqz v2, :cond_3

    .line 2824
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move v6, v0

    .line 2829
    goto :goto_0

    .line 2820
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v6

    .line 2821
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2823
    if-eqz v2, :cond_3

    .line 2824
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2823
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    .line 2824
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    move v0, v6

    goto :goto_1
.end method

.method public static isOutgoingVideoCall(Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4414
    const-string v0, "videocall"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4415
    const-string v0, "videocall"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 4419
    :goto_0
    const-string v3, "feature_dcm"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4420
    const-string v3, "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 4422
    if-eqz v3, :cond_0

    move v0, v2

    .line 4426
    :cond_0
    if-nez v0, :cond_1

    .line 4427
    const-string v3, "android.phone.extra.CALL_TYPE"

    const/16 v4, 0xa

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 4428
    const-string v4, "android.phone.extra.CALL_DOMAIN"

    invoke-virtual {p0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4430
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    if-eq v1, v2, :cond_1

    move v0, v2

    .line 4436
    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isPSBarring()Z
    .locals 1

    .prologue
    .line 3067
    sget-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsPSBarring:Z

    return v0
.end method

.method public static isPSVideoCall(Lcom/android/server/telecom/Call;)Z
    .locals 6

    .prologue
    .line 928
    const/4 v0, 0x0

    return v0
.end method

.method public static isPSVoiceCall(Lcom/android/server/telecom/Call;)Z
    .locals 4

    .prologue
    .line 945
    const/4 v0, 0x1

    return v0
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4165
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4167
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4171
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 4168
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isPrayModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1651
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1653
    :try_start_0
    const-string v2, "com.sec.android.settings.praymodewidget"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 1654
    const-string v2, "PraymodePreference"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1656
    const-string v2, "isPrayCallModeOn"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1657
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pray mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1661
    :goto_0
    return v0

    .line 1658
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isRJIOSim()Z
    .locals 11

    .prologue
    const/16 v10, 0xb

    const/16 v9, 0x9

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5183
    const-string v3, "TelecomUtils"

    const-string v4, "isRJIOSim"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5184
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5185
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 5186
    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v5

    .line 5187
    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v6

    .line 5192
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "preferred_network_mode"

    const/4 v8, 0x0

    invoke-static {v3, v7, v8}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 5200
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "preferred_network_mode"

    const/4 v8, 0x1

    invoke-static {v4, v7, v8}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 5207
    :goto_1
    const-string v4, "TelecomUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Op1 is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v4, v7, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5208
    const-string v4, "TelecomUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Op2 is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v4, v7, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5209
    const-string v4, "Jio 4G"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eq v3, v9, :cond_1

    if-eq v3, v10, :cond_1

    :cond_0
    const-string v3, "Jio 4G"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq v0, v9, :cond_1

    if-ne v0, v10, :cond_2

    .line 5211
    :cond_1
    const-string v0, "TelecomUtils"

    const-string v3, "isRJIOSim true"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 5225
    :goto_2
    return v0

    .line 5194
    :catch_0
    move-exception v3

    .line 5195
    const-string v3, "TelecomUtils"

    const-string v7, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE for slot1!!!"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v3, v7, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v0

    .line 5196
    goto :goto_0

    .line 5202
    :catch_1
    move-exception v4

    .line 5203
    const-string v4, "TelecomUtils"

    const-string v7, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE for slot2!!!"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v4, v7, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 5214
    :cond_2
    const-string v0, "TelecomUtils"

    const-string v3, "isRJIOSim false"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 5215
    goto :goto_2

    .line 5217
    :cond_3
    const-string v0, "gsm.sim.operator.alpha"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5218
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Op is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5219
    const-string v3, "Jio 4G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5220
    const-string v0, "TelecomUtils"

    const-string v3, "isRJIOSim true"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 5222
    goto :goto_2

    .line 5224
    :cond_4
    const-string v0, "TelecomUtils"

    const-string v3, "isRJIOSim false"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 5225
    goto :goto_2
.end method

.method public static isReadOutNotificatonOn(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1887
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 1888
    if-eqz v2, :cond_0

    .line 1889
    const-string v0, "TelecomUtils"

    const-string v2, "activeCall is not null do not play tts"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1897
    :goto_0
    return v1

    .line 1892
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_incoming_call_notification"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1896
    :goto_1
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isReadOutNotificatonOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    .line 1897
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1892
    goto :goto_1
.end method

.method public static isRestrictedOutgoingCallIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 9

    .prologue
    const v8, 0x7f0b002c

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 4584
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 4585
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 4586
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 4588
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4589
    const-string v4, "*77#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4591
    :cond_0
    const-string v2, "TelecomUtils"

    const-string v3, "can not DualNumber call in roaming area"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4592
    const v1, 0x7f0b0091

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    .line 4788
    :cond_1
    :goto_0
    return v0

    .line 4597
    :cond_2
    const-string v3, "disable_add_call"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4598
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    .line 4599
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    .line 4601
    if-nez v3, :cond_3

    if-eqz v4, :cond_5

    :cond_3
    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVoiceCall(Lcom/android/server/telecom/Call;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVoiceCall(Lcom/android/server/telecom/Call;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4603
    :cond_4
    const-string v2, "TelecomUtils"

    const-string v3, "CANNOT make 2nd IMS call!!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4604
    invoke-static {v8}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    goto :goto_0

    .line 4609
    :cond_5
    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->canAddCallCapable()Z

    move-result v3

    if-nez v3, :cond_6

    .line 4610
    const-string v2, "TelecomUtils"

    const-string v3, "CANNOT make add call!!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4611
    invoke-static {v8}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    goto :goto_0

    .line 4615
    :cond_6
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isSupportUsimMobiltyforKOR(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4619
    const-string v3, "support_nsri_secure"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4620
    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isNsriSecureCallMode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4621
    invoke-static {v8}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    goto :goto_0

    .line 4626
    :cond_7
    const-string v3, "block_call_during_lpm_dsds"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4627
    invoke-static {p0, v2}, Lcom/android/server/telecom/TelephonyUtil;->shouldProcessAsEmergency(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    .line 4628
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isMutiSIMDSDSRadioOff()Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v3, :cond_8

    .line 4629
    const-string v2, "TelecomUtils"

    const-string v3, "call faild, now dsds raio off"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4630
    invoke-static {v8}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    goto/16 :goto_0

    .line 4635
    :cond_8
    const-string v3, "feature_chn_home_dsda_roaming_dsds"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4636
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->blockOtherSlotCallForRoaming(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4637
    const-string v2, "TelecomUtils"

    const-string v3, "Blockcall during other slot call in roaming area"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4638
    invoke-static {v8}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    goto/16 :goto_0

    .line 4644
    :cond_9
    const-string v3, "end_call_when_dial_e911"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 4645
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    .line 4646
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    .line 4650
    if-nez v3, :cond_a

    if-eqz v4, :cond_d

    :cond_a
    const-string v5, "911"

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "112"

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "*911"

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "#911"

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 4655
    :cond_b
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mRedialNumber:Ljava/lang/String;

    .line 4656
    const-string v2, "TelecomUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " hangup call for emergency call "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/telecom/secutils/TelecomUtils;->mRedialNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v5, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4657
    if-eqz v3, :cond_c

    .line 4658
    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->disconnect()V

    .line 4660
    :cond_c
    if-eqz v4, :cond_1

    .line 4661
    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->disconnect()V

    goto/16 :goto_0

    .line 4668
    :cond_d
    const-string v3, "att_volte_ui"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 4669
    invoke-static {p0, v2}, Lcom/android/server/telecom/TelephonyUtil;->shouldProcessAsEmergency(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    .line 4670
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    .line 4671
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v5

    .line 4672
    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVoiceCall(Lcom/android/server/telecom/Call;)Z

    move-result v6

    .line 4673
    invoke-static {v5}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVoiceCall(Lcom/android/server/telecom/Call;)Z

    move-result v7

    .line 4675
    if-nez v6, :cond_e

    if-eqz v7, :cond_10

    :cond_e
    if-eqz v3, :cond_10

    .line 4676
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mVolteRedialNumber:Ljava/lang/String;

    .line 4677
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VoLTE tc 14.2, hangup fgcall for emergency call "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/android/server/telecom/secutils/TelecomUtils;->mVolteRedialNumber:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4679
    if-eqz v4, :cond_f

    .line 4680
    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->disconnect()V

    .line 4682
    :cond_f
    if-eqz v5, :cond_1

    .line 4683
    invoke-virtual {v5}, Lcom/android/server/telecom/Call;->disconnect()V

    goto/16 :goto_0

    .line 4689
    :cond_10
    const-string v3, "feature_multisim_dsda"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "feature_ctc"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->blockOtherSlotCallForCTCRoaming(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 4692
    const-string v2, "TelecomUtils"

    const-string v3, "Can not make call by other slot during call for CTC Roaming DSST"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4693
    invoke-static {v8}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    goto/16 :goto_0

    .line 4698
    :cond_11
    const-string v3, "end_call_when_dial_e911"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 4699
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    .line 4700
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    .line 4702
    if-nez v3, :cond_12

    if-eqz v4, :cond_14

    :cond_12
    const-string v5, "911"

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 4703
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mRedialNumber:Ljava/lang/String;

    .line 4704
    const-string v2, "TelecomUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " hangup call for emergency call "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/telecom/secutils/TelecomUtils;->mRedialNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v5, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4705
    if-eqz v3, :cond_13

    .line 4706
    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->disconnect()V

    .line 4708
    :cond_13
    if-eqz v4, :cond_1

    .line 4709
    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->disconnect()V

    goto/16 :goto_0

    .line 4716
    :cond_14
    const-string v3, "att_volte_ui"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "sbm_emergency_conflict"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4718
    :cond_15
    invoke-static {p0, v2}, Lcom/android/server/telecom/TelephonyUtil;->shouldProcessAsEmergency(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    .line 4719
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    .line 4720
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v5

    .line 4721
    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVoiceCall(Lcom/android/server/telecom/Call;)Z

    move-result v6

    .line 4722
    invoke-static {v5}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVoiceCall(Lcom/android/server/telecom/Call;)Z

    move-result v7

    .line 4724
    if-nez v6, :cond_16

    if-eqz v7, :cond_18

    :cond_16
    if-eqz v3, :cond_18

    .line 4725
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mVolteRedialNumber:Ljava/lang/String;

    .line 4726
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VoLTE tc 14.2, hangup fgcall for emergency call "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/android/server/telecom/secutils/TelecomUtils;->mVolteRedialNumber:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4728
    if-eqz v4, :cond_17

    .line 4729
    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->disconnect()V

    .line 4731
    :cond_17
    if-eqz v5, :cond_1

    .line 4732
    invoke-virtual {v5}, Lcom/android/server/telecom/Call;->disconnect()V

    goto/16 :goto_0

    .line 4739
    :cond_18
    const-string v3, "dcm_emergency_conflict"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 4740
    invoke-static {p0, v2}, Lcom/android/server/telecom/TelephonyUtil;->shouldProcessAsEmergency(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    .line 4747
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    .line 4748
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v5

    .line 4750
    if-nez v4, :cond_19

    if-eqz v5, :cond_1b

    :cond_19
    if-eqz v3, :cond_1b

    .line 4751
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mRedialNumber:Ljava/lang/String;

    .line 4752
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " hangup call for emergency call "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/android/server/telecom/secutils/TelecomUtils;->mRedialNumber:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4753
    if-eqz v4, :cond_1a

    .line 4754
    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->disconnect()V

    .line 4756
    :cond_1a
    if-eqz v5, :cond_1

    .line 4757
    invoke-virtual {v5}, Lcom/android/server/telecom/Call;->disconnect()V

    goto/16 :goto_0

    .line 4764
    :cond_1b
    const-string v2, "international_dial_assist_dcm"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "international_dial_assist_kdi"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 4766
    :cond_1c
    invoke-static {p0, p1}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomUtils;->checkInterprefixPopup(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4767
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4768
    const-string v3, "check_pass_dialog"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 4769
    if-nez v3, :cond_1d

    .line 4770
    const-string v1, "parcelable_call_intent"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4771
    const-string v1, "type_of_dialog"

    const/16 v3, 0x79

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4772
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4773
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4776
    :cond_1d
    const-string v2, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkInterprefixPopup is fail, checkPassDialog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4783
    :cond_1e
    :goto_1
    invoke-static {p0, p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->matchCarrierForMultiSIM(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4787
    const-string v0, "TelecomUtils"

    const-string v2, "onReceive - allowed call intent"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 4788
    goto/16 :goto_0

    .line 4779
    :cond_1f
    const-string v2, "TelecomUtils"

    const-string v3, "checkInterprefixPopup is fail"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static isRoamingArea()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2679
    const-string v0, "ril.currentplmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2681
    const-string v0, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRoamingArea : current_plmn is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2682
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDefaultIMEI()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2683
    :cond_0
    const-string v0, "TelecomUtils"

    const-string v3, "isRoamingArea : DefaultIMEI"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 2698
    :cond_1
    :goto_0
    return v0

    .line 2687
    :cond_2
    const-string v0, "oversea"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isSimCardReady()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 2689
    :goto_1
    const-string v4, "unknown"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2690
    const-string v3, "ril.rejectedPlmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2691
    const-string v4, "TelecomUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rejected PLMN = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2692
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2693
    const-string v4, "450"

    const/4 v5, 0x3

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/server/telecom/TelecomConfig;->isLGTSIM()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 2694
    goto :goto_0

    :cond_3
    move v0, v2

    .line 2687
    goto :goto_1
.end method

.method public static isRoamingAutoDialEnabled()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2669
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v2

    .line 2670
    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->getRoamingAutoDialSetting()I

    move-result v3

    .line 2671
    const-string v4, "TelecomUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRoamingAutoDialEnabled: isRoaming = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", RAD option = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2672
    if-eqz v2, :cond_0

    if-eq v3, v0, :cond_0

    .line 2673
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2672
    goto :goto_0
.end method

.method private static isRunningProcess(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 1901
    const/4 v1, 0x0

    .line 1902
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1903
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 1905
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1906
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1907
    const/4 v0, 0x1

    .line 1911
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 1478
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1479
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method

.method public static isServiceRegistered(I)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2528
    const-string v0, "enabled"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2530
    const/4 v2, 0x0

    .line 2532
    const/4 v0, 0x7

    :try_start_0
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2538
    :goto_0
    if-eqz v0, :cond_1

    .line 2539
    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getFeatureMask()I

    move-result v0

    .line 2541
    :goto_1
    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    .line 2542
    const/4 v0, 0x1

    .line 2544
    :goto_2
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isServiceRegistered:isServiceRegistered :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2545
    return v0

    .line 2534
    :catch_0
    move-exception v0

    .line 2535
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isServiceRegistered:RuntimeException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static isSimCardReady()Z
    .locals 2

    .prologue
    .line 2747
    const-string v0, "gsm.sim.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2748
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2749
    const/4 v0, 0x1

    .line 2751
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimSubscriptionPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1567
    if-nez p0, :cond_1

    .line 1578
    :cond_0
    :goto_0
    return v0

    .line 1571
    :cond_1
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1572
    invoke-static {v1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v1

    .line 1573
    if-eqz v1, :cond_0

    .line 1574
    invoke-virtual {v1}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSimSubscriptionPhoneAccountHandle(Lcom/android/server/telecom/Call;)Z
    .locals 1

    .prologue
    .line 1560
    if-nez p0, :cond_0

    .line 1561
    const/4 v0, 0x0

    .line 1563
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isSimSubscriptionPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSoftPhoneEnabled()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2947
    const-string v0, "TelecomUtils"

    const-string v1, "isSoftPhoneEnabled"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2948
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2949
    const-string v1, "content://com.sec.vsim.attsoftphone.settings/account/active_account"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2952
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2953
    if-eqz v1, :cond_0

    .line 2954
    const-string v0, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " active users"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2955
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    .line 2959
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2964
    :goto_1
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnable is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2965
    return v0

    .line 2961
    :cond_0
    const-string v0, "TelecomUtils"

    const-string v1, "cursor is null."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    .line 2962
    goto :goto_1

    :cond_1
    move v0, v7

    goto :goto_0
.end method

.method public static isSplitFromConference(Lcom/android/server/telecom/Call;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 860
    const/4 v1, 0x0

    .line 861
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getConnectionCapabilities()I

    move-result v2

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 867
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isSupportUsimMobiltyforKOR(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 3374
    const/4 v0, 0x1

    return v0
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4894
    const-string v0, "com.google.android.marvin.talkback"

    .line 4896
    const-string v0, "com.samsung.android.app.talkback"

    .line 4897
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v0, 0x3a

    invoke-direct {v2, v0}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 4899
    if-nez p0, :cond_0

    move v0, v1

    .line 4927
    :goto_0
    return v0

    .line 4902
    :cond_0
    const/4 v0, 0x0

    .line 4903
    if-eqz p0, :cond_1

    .line 4904
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "enabled_accessibility_services"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4907
    :cond_1
    if-nez v0, :cond_2

    .line 4908
    const-string v0, ""

    .line 4913
    :cond_2
    invoke-virtual {v2, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 4915
    :cond_3
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4916
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 4917
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 4919
    if-eqz v3, :cond_3

    .line 4920
    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    const-string v4, "com.samsung.android.app.talkback"

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4924
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 4927
    goto :goto_0
.end method

.method public static isTopActivity(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 3884
    :try_start_0
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3886
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3888
    :try_start_1
    const-string v1, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTopActivity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3892
    :goto_0
    return v0

    .line 3889
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 3890
    :goto_1
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3889
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static isTwoPhoneUser(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 4577
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4578
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 4579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentUser = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->log(Ljava/lang/String;Z)V

    .line 4580
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getTwoPhoneUserId(Landroid/content/Context;)I

    move-result v2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnknownNumber(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 5136
    const-string v0, "-1"

    .line 5137
    const-string v0, "-2"

    .line 5138
    const-string v0, "-3"

    .line 5140
    const/4 v0, 0x0

    .line 5141
    const-string v1, "-2"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-3"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5144
    :cond_0
    const/4 v0, 0x1

    .line 5146
    :cond_1
    return v0
.end method

.method public static isVideoCall()Z
    .locals 1

    .prologue
    .line 773
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    return v0
.end method

.method public static isVideoCall(Landroid/os/Bundle;)Z
    .locals 3

    .prologue
    .line 883
    const/4 v0, 0x0

    .line 885
    if-eqz p0, :cond_0

    .line 886
    invoke-static {p0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    .line 887
    if-eqz v1, :cond_0

    .line 888
    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 889
    const/4 v0, 0x1

    .line 893
    :cond_0
    return v0
.end method

.method public static isVideoCall(Lcom/android/server/telecom/Call;)Z
    .locals 3

    .prologue
    .line 778
    const/4 v0, 0x0

    .line 780
    if-eqz p0, :cond_0

    .line 781
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    .line 782
    if-eqz v1, :cond_0

    .line 783
    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 784
    const/4 v0, 0x1

    .line 788
    :cond_0
    return v0
.end method

.method public static isVideoTypeCall(Lcom/android/server/telecom/Call;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 792
    const/4 v0, 0x0

    .line 794
    if-eqz p0, :cond_1

    .line 795
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    .line 796
    if-eqz v2, :cond_1

    .line 797
    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v3

    if-eq v3, v1, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 804
    :cond_1
    return v0
.end method

.method public static isVoIPActivated()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3269
    :try_start_0
    const-string v0, "voip"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 3270
    if-eqz v0, :cond_0

    .line 3271
    invoke-interface {v0}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    .line 3273
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVoIPActivated - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->log(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3277
    :goto_1
    return v0

    .line 3274
    :catch_0
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 3275
    :goto_2
    :try_start_2
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoIPActivated - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/server/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3277
    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 3274
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isVoIPRingOrDialing()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3284
    :try_start_0
    const-string v0, "voip"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 3285
    if-eqz v0, :cond_0

    .line 3286
    invoke-interface {v0}, Landroid/os/IVoIPInterface;->isVoIPRingOrDialing()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    .line 3288
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVoIPRingOrDialing - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->log(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3292
    :goto_1
    return v0

    .line 3289
    :catch_0
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 3290
    :goto_2
    :try_start_2
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoIPRingOrDialing - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/server/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3292
    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 3289
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isVoIPRingOrOffhook()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3299
    :try_start_0
    const-string v2, "voip"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 3300
    if-eqz v2, :cond_1

    .line 3301
    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPRingOrDialing()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 3303
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVoIPRingOrOffhook - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3307
    :goto_0
    return v0

    .line 3304
    :catch_0
    move-exception v1

    .line 3305
    :try_start_1
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoIPRingOrOffhook - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/server/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3307
    :catchall_0
    move-exception v1

    goto :goto_0
.end method

.method public static isVoLTERoamingAvailable()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2702
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2704
    const-string v3, "roaming_volte_kor"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2705
    :cond_0
    if-eqz v2, :cond_3

    .line 2706
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hd_voice_roaming_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 2709
    :goto_0
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2710
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_IMS_SupportVolteDuringRoaming"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    .line 2712
    :cond_1
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoLTERoamingAvailable:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2713
    return v0

    :cond_2
    move v0, v1

    .line 2706
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isVoiceControlOn(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1873
    const-string v2, "support_voice_cmd_setting"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1874
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_incomming_calls"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1881
    :cond_0
    :goto_0
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoiceControlOnForIncomingCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1883
    return v0

    :cond_1
    move v0, v1

    .line 1874
    goto :goto_0

    .line 1877
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_incomming_calls"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isWFCRegistered()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    return v0

.end method

.method public static isWiFiNetworkConnected(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5048
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5049
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 5050
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5051
    const-string v0, "TelecomUtils"

    const-string v3, "isWiFiNetworkConnected - true"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 5055
    :goto_0
    return v0

    .line 5054
    :cond_0
    const-string v0, "TelecomUtils"

    const-string v1, "isWiFiNetworkConnected - false"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 5055
    goto :goto_0
.end method

.method public static isWirelessPriorityServiceNumber(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 3614
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 3615
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->removeClirPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*272"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static ismShowAutoCspPopup()Z
    .locals 1

    .prologue
    .line 4254
    sget-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mShowAutoCspPopup:Z

    return v0
.end method

.method public static launchDriveLinkDialogActivity(Landroid/content/Context;Lcom/android/server/telecom/Call;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const v6, 0x7f0b0009

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2030
    const-string v0, "TelecomUtils"

    const-string v3, "launchDriveLinkDialogActivity"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2032
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 2037
    if-eqz v0, :cond_9

    .line 2038
    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2040
    const-string v3, "concept_kor_common"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2041
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v3

    .line 2043
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 2045
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    .line 2058
    :goto_0
    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2060
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2061
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v0, v2

    .line 2068
    :goto_1
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2069
    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2070
    const-string v6, "name_number_extra"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2071
    const-string v3, "number_saved_extra"

    invoke-virtual {v5, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2072
    const-string v0, "private_num"

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2073
    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2075
    if-nez v1, :cond_2

    .line 2076
    const-string v1, "drivelink_rejectmessage_on"

    .line 2077
    const-string v0, "drivelink_rejectmessage_body"

    .line 2078
    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isCarmodeHome()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2079
    const-string v1, "DRIVELINK_SETTINGS_REJECT_MESSAGE_ON"

    .line 2080
    const-string v0, "DRIVELINK_REJECT_MESSAGE_BODY"

    .line 2082
    :cond_1
    invoke-static {v1, v2}, Lcom/android/server/telecom/TelecomSystemDB;->getSecureSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 2083
    if-lez v1, :cond_7

    .line 2084
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2085
    invoke-static {p0, v4, v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->sendSMSAsBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    :cond_2
    :goto_2
    return-void

    .line 2047
    :cond_3
    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    .line 2048
    const v0, 0x7f0b0008

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    .line 2049
    goto :goto_0

    .line 2051
    :cond_4
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object v3, v0

    move v0, v2

    goto :goto_0

    .line 2054
    :cond_5
    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move v0, v2

    goto :goto_0

    :cond_6
    move-object v3, v4

    move v7, v1

    move v1, v0

    move v0, v7

    .line 2064
    goto :goto_1

    .line 2087
    :cond_7
    const v0, 0x7f0b0071

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v4, v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->sendSMSAsBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_9
    move v0, v2

    move-object v3, v4

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 4083
    const-string v0, "TelecomUtils"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4084
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 4087
    const-string v0, "TelecomUtils"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4088
    return-void
.end method

.method public static makeConferenceSecCallExtra(Ljava/lang/String;Lcom/android/server/telecom/Call;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    .prologue
    const/4 v2, -0x1

    const/4 v9, 0x3

    const/4 v3, 0x0

    .line 324
    if-nez p1, :cond_0

    .line 391
    :goto_0
    return-object p2

    .line 326
    :cond_0
    invoke-static {p2}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v5

    .line 327
    const/4 v0, 0x0

    .line 330
    if-eqz v5, :cond_c

    .line 331
    invoke-virtual {v5}, Lcom/android/services/telephony/common/SecCallExtra;->getTelecomCallId()Ljava/lang/String;

    move-result-object v4

    .line 332
    invoke-virtual {v5}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v1

    .line 333
    invoke-virtual {v5}, Lcom/android/services/telephony/common/SecCallExtra;->getHDIcon()I

    move-result v0

    move v10, v0

    move v0, v1

    move v1, v10

    .line 338
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v5

    .line 340
    new-instance v6, Lcom/android/services/telephony/common/SecCallExtra;

    invoke-direct {v6}, Lcom/android/services/telephony/common/SecCallExtra;-><init>()V

    .line 341
    if-eqz v5, :cond_1

    .line 343
    invoke-virtual {v6, v5}, Lcom/android/services/telephony/common/SecCallExtra;->putAll(Lcom/android/services/telephony/common/SecCallExtra;)V

    .line 346
    :cond_1
    invoke-virtual {v6, v4}, Lcom/android/services/telephony/common/SecCallExtra;->setTelecomCallId(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v6, p0}, Lcom/android/services/telephony/common/SecCallExtra;->setConnectionCallId(Ljava/lang/String;)V

    .line 349
    const-string v4, "ctc_call_time_duration"

    invoke-static {v4}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 350
    const-string v4, "TelecomUtils"

    const-string v7, "setLineCtrl to show call time title for Conference"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v4, v7, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Lcom/android/services/telephony/common/SecCallExtra;->setLineCtrl(Z)V

    .line 353
    :cond_2
    const-string v4, "att_volte_ui"

    invoke-static {v4}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "canada_volte_ui"

    invoke-static {v4}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 355
    :cond_3
    invoke-virtual {v6}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v4

    .line 356
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 357
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getChildCalls()Ljava/util/List;

    move-result-object v0

    .line 358
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    .line 359
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 360
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    .line 362
    const/4 v8, 0x5

    if-eq v0, v8, :cond_5

    const/4 v8, 0x4

    if-ne v0, v8, :cond_4

    .line 369
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 370
    invoke-virtual {v6, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setType(I)V

    .line 371
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setVideoResolution(I)V

    .line 373
    :cond_6
    invoke-virtual {v6, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setHoldStateOfTheOtherParty(B)V

    .line 383
    :cond_7
    :goto_3
    if-eq v1, v2, :cond_8

    .line 384
    const-string v0, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeConferenceSecCallExtra originHDIcon :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", newCallExtra\'s HDIcon : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/services/telephony/common/SecCallExtra;->getHDIcon()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    invoke-virtual {v6}, Lcom/android/services/telephony/common/SecCallExtra;->getHDIcon()I

    move-result v0

    and-int/2addr v0, v1

    invoke-virtual {v6, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setHDIcon(I)V

    .line 386
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeConferenceSecCallExtra changed newCallExtra\'s HDIcon : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/services/telephony/common/SecCallExtra;->getHDIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    :cond_8
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeConferenceSecCallExtra : child = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeConferenceSecCallExtra : conf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    invoke-static {p2, v6}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object p2

    goto/16 :goto_0

    .line 374
    :cond_9
    const-string v4, "tmo_volte_ui"

    invoke-static {v4}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 375
    invoke-virtual {v6}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v4

    .line 376
    if-ne v0, v9, :cond_a

    if-ne v4, v9, :cond_a

    .line 377
    invoke-virtual {v6, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setType(I)V

    goto/16 :goto_3

    .line 379
    :cond_a
    invoke-virtual {v6, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setType(I)V

    goto/16 :goto_3

    :cond_b
    move v0, v4

    goto/16 :goto_2

    :cond_c
    move v1, v2

    move-object v4, v0

    move v0, v3

    goto/16 :goto_1
.end method

.method public static makeDeletePrefixNum(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 4020
    const-string v0, "+86"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4021
    const-string v0, "+86"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 4026
    :cond_0
    :goto_0
    const-string v3, "edit_checked=1"

    .line 4028
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtils;->DELETE_PREFIX_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4030
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4032
    :cond_1
    const-string v1, "deleteprefix_number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4033
    if-eqz v1, :cond_4

    .line 4034
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 4035
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 4036
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-le v2, v3, :cond_4

    .line 4037
    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 4038
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Make a call delete prefix mNumber ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4044
    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4046
    return-object p1

    .line 4022
    :cond_3
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4023
    const-string v0, "+"

    const-string v1, "00"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4042
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1
.end method

.method public static makeIpCallNum(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3988
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 3989
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3990
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    .line 3991
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 3994
    :cond_0
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3995
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 3996
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "IP_CALL_NUMBER_SIM2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4003
    :goto_0
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeIpCallNum() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4005
    if-eqz v1, :cond_1

    const-string v2, "AUTO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4006
    :cond_1
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getAutoIpCallNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 4009
    :cond_2
    const-string v0, "P"

    const-string v2, ","

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4010
    const-string v2, "+86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4011
    const-string v2, "+86"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4015
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4016
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIpCallNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " numberIpCall = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4017
    return-object v0

    .line 3998
    :cond_4
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "IP_CALL_NUMBER"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4001
    :cond_5
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "IP_CALL_NUMBER"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4012
    :cond_6
    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4013
    const-string v2, "+"

    const-string v3, "00"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static makeOutgoingSecCallExtra(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 10

    .prologue
    .line 395
    if-nez p1, :cond_0

    .line 396
    const-string v0, "TelecomUtils"

    const-string v1, "makeOutgoingSecCallExtra : handle is null"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    const/4 v0, 0x0

    .line 631
    :goto_0
    return-object v0

    .line 400
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 405
    const-string v1, "sip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 410
    :cond_1
    if-eqz p4, :cond_2

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->shouldProcessAsEmergencyVT(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 411
    :goto_1
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->shouldProcessAsEmergencyVolte()Z

    move-result v1

    .line 413
    invoke-static {p0, p1}, Lcom/android/server/telecom/TelephonyUtil;->shouldProcessAsEmergency(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 414
    invoke-static {p2, p3}, Lcom/android/server/telecom/secutils/TelecomUtils;->setSecCallExtraForEmergencyCall(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 410
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 417
    :cond_3
    invoke-static {p3}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    .line 419
    if-nez v1, :cond_2b

    .line 420
    new-instance v1, Lcom/android/services/telephony/common/SecCallExtra;

    invoke-direct {v1}, Lcom/android/services/telephony/common/SecCallExtra;-><init>()V

    move-object v2, v1

    .line 423
    :goto_2
    if-eqz p4, :cond_c

    .line 424
    invoke-static {p2}, Lcom/android/server/telecom/secutils/TelecomUtils;->isEmergnecyCall(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_c

    .line 425
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setType(I)V

    .line 426
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setDomain(I)V

    .line 427
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeOutgoingSecCallExtra check COMMON_VT value = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "common_vt"

    invoke-static {v4}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "singapore_volte_ui"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 429
    const-string v0, "vtcommon_hybrid"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p2}, Lcom/android/server/telecom/secutils/TelecomUtils;->getCallSubIdFromIntent(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailablePSVT(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_5
    invoke-static {p2, p1, p4}, Lcom/android/server/telecom/secutils/TelecomUtils;->shouldProcessAsCs(Landroid/content/Intent;Landroid/net/Uri;Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 431
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setDomain(I)V

    .line 432
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDeviceOnLTE()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 433
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setVideoResolution(I)V

    .line 436
    :cond_6
    const-string v0, "concept_usa_vzw"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "concept_usa_tmo"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "concept_usa_mpcs"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "concept_can_common"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "concept_chn_common"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "concept_hktw_common"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "common_volte_in"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "thl_volte_ui"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 444
    :cond_7
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setVideoResolution(I)V

    .line 447
    :cond_8
    const-string v0, "concept_usa_att"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 448
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setVideoResolution(I)V

    .line 451
    :cond_9
    const-string v0, "concept_jpn_dcm"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 453
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setVideoResolution(I)V

    .line 457
    :cond_a
    const-string v0, "android.telecom.extra.START_CALL_WITH_SPEAKERPHONE"

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getInitialVTSpeakerState()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 459
    const-string v0, "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 460
    const-string v0, "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

    const/4 v1, 0x3

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    :cond_b
    const-string v0, "TelecomUtils"

    const-string v1, "makeOutgoingSecCallExtra : outgoingVideoCall"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    :cond_c
    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    if-nez v0, :cond_d

    .line 467
    invoke-static {p2, p1, p4}, Lcom/android/server/telecom/secutils/TelecomUtils;->shouldProcessAsCs(Landroid/content/Intent;Landroid/net/Uri;Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 468
    const-string v0, "TelecomUtils"

    const-string v1, "shouldProcessAsCs"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setDomain(I)V

    .line 491
    :cond_d
    :goto_3
    const-string v0, "roaming_auto_dial"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 492
    const-string v0, "extra_rad_convert_number"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 493
    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setRadConvertNumber(Z)V

    .line 494
    const-string v0, "extra_rad_original_number"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setRadOriginalNumber(Ljava/lang/String;)V

    .line 497
    const-string v0, "extra_rad_dial_to_korea"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 498
    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setDialToKoreaForRAD(Z)V

    .line 501
    :cond_e
    const-string v0, "support_twophone"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 502
    if-eqz v3, :cond_23

    const-string v0, "*77"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 503
    const-string v0, "TelecomUtils"

    const-string v1, "makeOutgoingSecCallExtra Twophone mode : true"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->getTwoPhoneDisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setTwoPhoneOriginalNumber(Ljava/lang/String;)V

    .line 505
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setIsTwoPhone(Z)V

    .line 512
    :cond_f
    :goto_4
    const-string v0, "ip_call"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 513
    const-string v0, "ipcall"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 514
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setIPCall(Z)V

    .line 518
    :cond_10
    const-string v0, "multi_number_cmcc"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 519
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMultiNumber : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "MultiSubCall"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    const-string v0, "MultiSubCall"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setOneSimMultiNumber(Z)V

    .line 521
    const-string v0, "subNumberId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 522
    const-string v0, "subNumberId"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setSubNumberId(I)V

    .line 526
    :cond_11
    const-string v0, "ims_call_message"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 527
    const-string v0, "callmessage"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 528
    if-eqz v0, :cond_12

    .line 529
    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setOutgoingCallMessage(Ljava/lang/String;)V

    .line 533
    :cond_12
    const-string v0, "ims_voice_conference"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "video_conference"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 535
    :cond_13
    const-string v0, "IS_CONF_CALL"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 536
    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCall(Z)V

    .line 537
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setReceivedCall(Z)V

    .line 540
    :cond_14
    const-string v0, "ims_voice_conference_kddi"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->isIMSConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 541
    const-string v0, "GROUP_ID_FOR_LOG"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 542
    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setGroupId(I)V

    .line 543
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Voiceparty call groupId : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getGroupId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    :cond_15
    const-string v0, "assisted_dialing_enable"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 547
    invoke-static {v2}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->setAssisted(Lcom/android/services/telephony/common/SecCallExtra;)V

    .line 550
    :cond_16
    const-string v0, "cs_e911"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 551
    const-string v0, "gsmcall"

    .line 552
    const-string v0, "gsmcall"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 553
    const-string v0, "gsmcall"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 554
    if-nez v0, :cond_24

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setWfcEmergencyCall(Z)V

    .line 558
    :cond_17
    const-string v0, "try_to_regi_ims"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 559
    if-eqz p4, :cond_25

    .line 560
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailablePSVT()Z

    move-result v0

    .line 561
    const-string v1, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Try to place video call, isImsRegistered - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    if-nez v0, :cond_18

    .line 563
    const-string v0, "TelecomUtils"

    const-string v1, "IMS is not registered. Send broadcast intent for regi ims"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.TRY_TO_REGI_IMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 588
    :cond_18
    :goto_6
    const-string v0, "support_outgoing_call_popup_service"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 589
    const-string v0, "extra_show_popup"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 590
    const-string v1, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExtraShowPopup From Intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setStartPopupServiceWhenMakeCallFromOtherApp(Z)V

    .line 595
    :cond_19
    :try_start_0
    const-string v0, "touchPoint"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 596
    if-eqz v0, :cond_29

    instance-of v1, v0, Landroid/graphics/Point;

    if-eqz v1, :cond_29

    .line 597
    check-cast v0, Landroid/graphics/Point;

    .line 598
    const-string v1, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "touchPoint: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setTouchPoint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_7
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 608
    if-eqz v0, :cond_1a

    .line 609
    const-string v1, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postDialString : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setPostDialString(Ljava/lang/String;)V

    .line 612
    :cond_1a
    const-string v0, "tmo_echolocate_logger"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 613
    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    .line 614
    invoke-static {}, Lcom/android/server/telecom/operator/usa/EcholocateDetailedCallStateMgr;->setPScallStarted()V

    .line 617
    :cond_1b
    const-string v0, "jansky_info_for_tmo"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 618
    const/4 v0, 0x0

    .line 619
    const-string v1, "jansky_msisdn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 620
    const-string v0, "jansky_msisdn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 622
    :cond_1c
    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setLineMSISDN(Ljava/lang/String;)V

    .line 624
    invoke-static {p2}, Lcom/android/server/telecom/operator/usa/JanskyCallerInfo;->isNativeLine(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 625
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setVirtualLine(Z)V

    .line 630
    :cond_1d
    :goto_8
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeOutgoingSecCallExtra : secCallExtra - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    invoke-static {p3, v2}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 470
    :cond_1e
    invoke-static {p2}, Lcom/android/server/telecom/secutils/TelecomUtils;->getCallSubIdFromIntent(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailableVoLTE(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 471
    invoke-static {p2}, Lcom/android/server/telecom/secutils/TelecomUtils;->getCallSubIdFromIntent(Landroid/content/Intent;)I

    move-result v0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getDefaultDataSubId()I

    move-result v1

    if-eq v0, v1, :cond_1f

    .line 472
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setDomainCsCause(I)V

    .line 475
    :cond_1f
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSVoiceCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailableVoWIFI()Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 476
    const-string v0, "TelecomUtils"

    const-string v1, "keep default domain call (Domain.CS)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 478
    :cond_20
    const-string v0, "TelecomUtils"

    const-string v1, "VoLTE call, set domain to PS"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setDomain(I)V

    goto/16 :goto_3

    .line 481
    :cond_21
    const-string v0, "single_lte"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {}, Lcom/android/server/telecom/TelecomConfig;->isLGTSIM()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 483
    const-string v0, "TelecomUtils"

    const-string v1, "LGT SIM, set domain to PS"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setDomain(I)V

    goto/16 :goto_3

    .line 485
    :cond_22
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailableVoWIFI()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 486
    const-string v0, "TelecomUtils"

    const-string v1, "VoWiFi call, set domain to PS"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setDomain(I)V

    goto/16 :goto_3

    .line 507
    :cond_23
    const-string v0, "TelecomUtils"

    const-string v1, "makeOutgoingSecCallExtra Twophone mode : false"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setIsTwoPhone(Z)V

    goto/16 :goto_4

    .line 554
    :cond_24
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 567
    :cond_25
    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    if-nez v0, :cond_18

    .line 568
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 569
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDeviceOnLTE()Z

    move-result v4

    .line 570
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSVoiceCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    .line 571
    :goto_9
    const-string v1, "hd_voice_network_prefer"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 572
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "hd_voice_network_pref"

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x1

    .line 573
    :goto_a
    const-string v5, "TelecomUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "3G HD Voice preferred = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    if-eqz v1, :cond_26

    const/4 v0, 0x0

    .line 577
    :cond_26
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailableVoLTE()Z

    move-result v1

    .line 578
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getServiceStatus()Z

    move-result v5

    .line 579
    const-string v6, "TelecomUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isLteConnected - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isVolteMode - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isImsRegistered - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isServiceStatusEnabled - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    if-eqz v4, :cond_18

    if-eqz v0, :cond_18

    if-nez v1, :cond_18

    if-eqz v5, :cond_18

    .line 581
    const-string v0, "TelecomUtils"

    const-string v1, "LTE on, Volte Mode, but IMS is not registered"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.TRY_TO_REGI_IMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 570
    :cond_27
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 572
    :cond_28
    const/4 v1, 0x0

    goto/16 :goto_a

    .line 601
    :cond_29
    :try_start_1
    const-string v0, "TelecomUtils"

    const-string v1, "can not get touch point"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    .line 603
    :catch_0
    move-exception v0

    .line 604
    const-string v1, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not get touch point"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 627
    :cond_2a
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setVirtualLine(Z)V

    goto/16 :goto_8

    :cond_2b
    move-object v2, v1

    goto/16 :goto_2
.end method

.method public static makeSecCall(Lcom/android/server/telecom/Call;Landroid/os/Bundle;)Lcom/android/server/telecom/Call;
    .locals 1

    .prologue
    .line 3089
    invoke-static {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 3090
    invoke-static {p0, v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->makeSecCall(Lcom/android/server/telecom/Call;Lcom/android/services/telephony/common/SecCallExtra;)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method public static makeSecCall(Lcom/android/server/telecom/Call;Lcom/android/services/telephony/common/SecCallExtra;)Lcom/android/server/telecom/Call;
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3096
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 3097
    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 3098
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setVideoState(I)V

    .line 3109
    :cond_0
    :goto_0
    return-object p0

    .line 3099
    :cond_1
    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 3100
    invoke-virtual {p0, v3}, Lcom/android/server/telecom/Call;->setVideoState(I)V

    .line 3101
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getInitialVTSpeakerState()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setStartWithSpeakerphoneOn(Z)V

    goto :goto_0

    .line 3102
    :cond_2
    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 3103
    invoke-virtual {p0, v2}, Lcom/android/server/telecom/Call;->setVideoState(I)V

    goto :goto_0

    .line 3104
    :cond_3
    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 3105
    invoke-virtual {p0, v1}, Lcom/android/server/telecom/Call;->setVideoState(I)V

    goto :goto_0
.end method

.method public static makeSubNumberCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4954
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeSubNumberCall() :mNumber= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; subPrefix="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4956
    const-string v0, "+86"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4957
    const-string v0, "+86"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 4961
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4962
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " subPrefix= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4963
    return-object v0

    .line 4958
    :cond_1
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4959
    const-string v0, "+"

    const-string v1, "00"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static muteMusicStream(Landroid/media/AudioManager;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4440
    if-nez p0, :cond_1

    .line 4456
    :cond_0
    :goto_0
    return-void

    .line 4443
    :cond_1
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 4444
    sget-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsMutedMusicStream:Z

    if-nez v0, :cond_0

    .line 4445
    const-string v0, "TelecomUtils"

    const-string v1, "muteMusicStream: backup music stream volume"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4446
    invoke-virtual {p0, v7, v4, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 4447
    sput-boolean v4, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsMutedMusicStream:Z

    goto :goto_0

    .line 4450
    :cond_2
    sget-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsMutedMusicStream:Z

    if-eqz v0, :cond_0

    .line 4451
    const-string v0, "TelecomUtils"

    const-string v1, "muteMusicStream: restore music stream volume"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4452
    invoke-virtual {p0, v7, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 4453
    sput-boolean v5, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsMutedMusicStream:Z

    goto :goto_0
.end method

.method public static needToPlayEndToneForIMS(Lcom/android/server/telecom/Call;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2310
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2333
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 2313
    :cond_1
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call.getDisconnectCause() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2314
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getSIPErrorFromDisconnectCause(Landroid/telecom/DisconnectCause;)I

    move-result v1

    .line 2315
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sip_error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2317
    const-string v2, "us_volte_ui"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2318
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getImsErrorFromDisconnectCause(Landroid/telecom/DisconnectCause;)Z

    move-result v0

    goto :goto_0

    .line 2320
    :cond_2
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 2325
    :sswitch_1
    const/4 v0, 0x1

    .line 2326
    goto :goto_0

    .line 2320
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x193 -> :sswitch_0
        0x25b -> :sswitch_1
        0x44d -> :sswitch_1
        0x4b1 -> :sswitch_1
        0x579 -> :sswitch_1
    .end sparse-switch
.end method

.method public static notifyInCallUIWindowFocus(Z)V
    .locals 5

    .prologue
    .line 3054
    const-string v0, "TelecomUtils"

    const-string v1, "notifyInCallUIWindowFocus hasfocus(%b)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3055
    sput-boolean p0, Lcom/android/server/telecom/secutils/TelecomUtils;->mHasInCallUIWindowFocus:Z

    .line 3056
    return-void
.end method

.method public static onSecMediaButton(I)Z
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2213
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v5

    .line 2214
    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isEasyModeOn()Z

    move-result v6

    .line 2217
    const-string v0, "support_mobilecarrier"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2218
    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isTPhoneRelaxMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isOllehPhoneRelaxMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2219
    :cond_0
    const-string v0, "TelecomUtils"

    const-string v1, "Do not handleHeadsetHook when carrier-phone RelaxMode."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    .line 2274
    :goto_0
    return v0

    .line 2224
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->hasAnyCalls()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2225
    if-ne v3, p0, :cond_8

    .line 2229
    const-string v0, "feature_multisim_dsda"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2230
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSimDSDAForegoundPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getRingingCall(I)Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 2231
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSimDSDAForegoundPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getActiveCall(I)Lcom/android/server/telecom/Call;

    move-result-object v1

    .line 2232
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSimDSDAForegoundPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getHeldCall(I)Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 2238
    :goto_1
    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v7

    .line 2239
    if-eqz v2, :cond_6

    .line 2240
    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v4

    .line 2241
    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    if-eq v4, v3, :cond_2

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v6

    if-eq v4, v6, :cond_4

    .line 2244
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->disconnect()V

    .line 2245
    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v6

    if-ne v4, v6, :cond_4

    move v0, v3

    .line 2246
    goto :goto_0

    .line 2234
    :cond_3
    new-array v0, v3, [I

    aput v7, v0, v4

    invoke-virtual {v5, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 2235
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-virtual {v5, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v1

    .line 2236
    new-array v0, v3, [I

    const/4 v7, 0x6

    aput v7, v0, v4

    invoke-virtual {v5, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    goto :goto_1

    .line 2249
    :cond_4
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 2250
    invoke-virtual {v5, v1}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V

    :goto_2
    move v0, v3

    .line 2254
    goto :goto_0

    .line 2252
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getVideoState()I

    move-result v0

    invoke-virtual {v5, v2, v0}, Lcom/android/server/telecom/CallsManager;->answerCall(Lcom/android/server/telecom/Call;I)V

    goto :goto_2

    .line 2256
    :cond_6
    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 2258
    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->hold()V

    move v0, v3

    .line 2259
    goto/16 :goto_0

    .line 2260
    :cond_7
    if-eqz v7, :cond_9

    .line 2261
    invoke-virtual {v7}, Lcom/android/server/telecom/Call;->disconnect()V

    move v0, v3

    .line 2262
    goto/16 :goto_0

    .line 2264
    :cond_8
    if-ne v1, p0, :cond_9

    .line 2265
    const-string v0, "TelecomUtils"

    const-string v1, "handleHeadsetHook: longpress -> hangup"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2266
    new-array v0, v7, [I

    fill-array-data v0, :array_1

    invoke-virtual {v5, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 2268
    if-eqz v0, :cond_9

    .line 2269
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->disconnect()V

    move v0, v3

    .line 2270
    goto/16 :goto_0

    :cond_9
    move v0, v4

    .line 2274
    goto/16 :goto_0

    .line 2235
    nop

    :array_0
    .array-data 4
        0x3
        0x5
    .end array-data

    .line 2266
    :array_1
    .array-data 4
        0x4
        0x3
        0x5
        0x6
    .end array-data
.end method

.method public static phoneIsCdma()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 3924
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3925
    if-eqz v1, :cond_0

    .line 3926
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v2

    .line 3927
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeForSubscriber(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 3933
    :cond_0
    :goto_0
    return v0

    .line 3929
    :catch_0
    move-exception v1

    .line 3930
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone.getActivePhoneTypeForSubscriber() failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static phoneIsCdma(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 3938
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 3940
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3941
    if-eqz v2, :cond_0

    .line 3942
    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeForSubscriber(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 3948
    :cond_0
    :goto_0
    return v0

    .line 3944
    :catch_0
    move-exception v1

    .line 3945
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone.getActivePhoneTypeForSubscriber() failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static rejectCallIfShouldBe(Lcom/android/server/telecom/Call;)Z
    .locals 11

    .prologue
    const/4 v10, 0x7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1676
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v5

    .line 1677
    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v7

    .line 1678
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    .line 1682
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1684
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCdmaCallIncomingBarringOn(Lcom/android/server/telecom/Call;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1685
    const-string v0, "TelecomUtils"

    const-string v4, "Cdma incoming barring!: %s."

    new-array v8, v2, [Ljava/lang/Object;

    aput-object p0, v8, v3

    invoke-static {v0, v4, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 1743
    :goto_0
    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isCarAppRunning()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isMirrorLinkReceiveCall()Z

    move-result v4

    if-nez v4, :cond_19

    .line 1745
    const-string v0, "TelecomUtils"

    const-string v4, "[MIRRORLINK] isMirrorLinkReceiveCall() false"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v0, v4, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1746
    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isMirrorLinkRejectMsgOn()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->getMirrorLinkRejectMsg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1747
    const-string v0, "TelecomUtils"

    const-string v4, "[MIRRORLINK] isMirrorLinkRejectMsgOn() true"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v0, v4, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1748
    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->getMirrorLinkRejectMsg()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move v0, v2

    .line 1752
    :goto_1
    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v8

    .line 1753
    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v5

    .line 1754
    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isMirrorLinkModeOn()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "support_call_transfer"

    invoke-static {v9}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-eq v8, v5, :cond_0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/server/telecom/Call;->getState()I

    move-result v8

    if-eq v8, v10, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/server/telecom/Call;->getState()I

    move-result v5

    if-eq v5, v10, :cond_0

    .line 1759
    const-string v0, "TelecomUtils"

    const-string v5, " [MIRRORLINK] rejecting incoming call: 1 active & 1 hold case"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v0, v5, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 1763
    :cond_0
    invoke-static {v3, v6}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v8

    .line 1765
    const-string v5, "feature_chn"

    invoke-static {v5}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, "volte_call_waiting_terminal"

    invoke-static {v5}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1768
    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1769
    if-eqz v7, :cond_16

    .line 1770
    invoke-static {v7}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneId(Lcom/android/server/telecom/Call;)I

    move-result v5

    .line 1772
    :goto_2
    invoke-static {v5}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isCMCCUSIM(I)Z

    move-result v5

    .line 1773
    const-string v6, "TelecomUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "canCallWaitingBlock is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v6, v9, v10}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v5

    .line 1776
    :goto_3
    if-nez v6, :cond_1

    if-eqz v8, :cond_4

    const-string v5, "volte_call_waiting_terminal"

    invoke-static {v5}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/server/telecom/TelecomConfig;->isSINSIM()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1778
    :cond_1
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    .line 1780
    const-string v5, "volte_call_waiting_default_off"

    invoke-static {v5}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1781
    const-string v5, "volte_call_waiting"

    invoke-static {v5, v3}, Lcom/android/server/telecom/TelecomSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v5

    .line 1785
    :goto_4
    const-string v8, "TelecomUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CallWaitingBlock : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " canCallWaitingBlock : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " foregroundCall : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v8, v6, v9}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1786
    if-nez v5, :cond_4

    if-nez v7, :cond_2

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getCallState()I

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSDomain(Lcom/android/server/telecom/Call;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "sth_volte_ui"

    invoke-static {v5}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "mm1_volte_ui"

    invoke-static {v5}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "volte_call_waiting_default_off"

    invoke-static {v5}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1788
    :cond_3
    const-string v0, "TelecomUtils"

    const-string v5, "Rejecting incoming call due to VOLTE_CALL_WAITING"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 1795
    :cond_4
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "spam_call_enable"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1796
    const-string v6, "support_spam_call_reject"

    invoke-static {v6}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-ne v5, v2, :cond_5

    if-nez v0, :cond_5

    .line 1797
    if-eqz p0, :cond_5

    .line 1798
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v5

    .line 1799
    if-eqz v5, :cond_5

    iget-boolean v5, v5, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v5, :cond_5

    .line 1800
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getAutoRejectCall()Z

    move-result v0

    .line 1801
    invoke-virtual {p0, v3}, Lcom/android/server/telecom/Call;->setAutoRejectCall(Z)V

    .line 1802
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v5, :cond_5

    move v0, v3

    .line 1809
    :cond_5
    const-string v5, "TelecomUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shouldBeRejected :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " misAutoReject : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/telecom/secutils/TelecomUtils;->misAutoReject:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1811
    if-eqz v0, :cond_15

    .line 1812
    if-eqz p0, :cond_7

    .line 1813
    const/4 v0, 0x4

    const-string v5, "ringing set explicitly"

    invoke-virtual {p0, v0, v5}, Lcom/android/server/telecom/Call;->setState(ILjava/lang/String;)V

    .line 1814
    if-eqz v4, :cond_6

    .line 1815
    const-string v0, "TelecomUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RejectMsg from MirrorLink : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v0, v5, v6}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1816
    invoke-static {}, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->getInstance()Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v4}, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->onIncomingCallRejected(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    .line 1818
    :cond_6
    invoke-virtual {p0, v3, v1}, Lcom/android/server/telecom/Call;->reject(ZLjava/lang/String;)V

    .line 1822
    :cond_7
    :goto_5
    return v2

    .line 1687
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->hasAutoRejectBundleExtra(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1688
    const-string v0, "TelecomUtils"

    const-string v4, "Auto reject : %s."

    new-array v8, v2, [Ljava/lang/Object;

    aput-object p0, v8, v3

    invoke-static {v0, v4, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1690
    const-string v0, "auto_reject_notification"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1691
    iget-object v0, v5, Lcom/android/server/telecom/CallsManager;->mAutoRejectedCallNotifier:Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;

    invoke-virtual {v0, p0, v2}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->showAutoRejectedCallNotification(Lcom/android/server/telecom/Call;Z)V

    move v0, v2

    goto/16 :goto_0

    .line 1693
    :cond_9
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAccessControlOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1695
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    move v0, v2

    goto/16 :goto_0

    .line 1703
    :cond_a
    invoke-static {p0}, Lcom/android/server/telecom/LowBatteryManager;->supportLowBatteryManager(Lcom/android/server/telecom/Call;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/server/telecom/LowBatteryManager;->isLowBatt(Lcom/android/server/telecom/Call;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1705
    const-string v0, "TelecomUtils"

    const-string v4, "Reject Video Call on Low Battery!: %s."

    new-array v8, v2, [Ljava/lang/Object;

    aput-object p0, v8, v3

    invoke-static {v0, v4, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1706
    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/LowBatteryManager;->performBatteryLowProcess(Z)V

    .line 1708
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    move v0, v2

    goto/16 :goto_0

    .line 1709
    :cond_b
    const-string v4, "missed_noti_during_call"

    invoke-static {v4}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_d

    if-nez v0, :cond_c

    if-nez v0, :cond_d

    invoke-static {v7}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1712
    :cond_c
    const-string v0, "TelecomUtils"

    const-string v4, "VT_MISSED_NOTI_DURING_CALL Reject incoming Call!: %s."

    new-array v8, v2, [Ljava/lang/Object;

    aput-object p0, v8, v3

    invoke-static {v0, v4, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1714
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    move v0, v2

    goto/16 :goto_0

    .line 1715
    :cond_d
    const-string v4, "voip_interworking"

    invoke-static {v4}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVoIPRingOrDialing()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1717
    const-string v0, "TelecomUtils"

    const-string v4, "rejecting incoming call: VOIP call is ringing or dialing"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v0, v4, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1719
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    move v0, v2

    goto/16 :goto_0

    .line 1720
    :cond_e
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->ignoretheAllIncomingCalls()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1721
    const-string v0, "TelecomUtils"

    const-string v4, "rejecting incoming call if the device isn\'t provisioned yet"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v0, v4, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1723
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    move v0, v2

    goto/16 :goto_0

    .line 1724
    :cond_f
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPrayModeOn()Z

    move-result v4

    if-ne v4, v2, :cond_10

    .line 1725
    const-string v0, "TelecomUtils"

    const-string v4, "Rejecting incoming call due to PrayerMode"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1727
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    .line 1728
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 1730
    if-eqz v0, :cond_1b

    .line 1731
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1733
    :goto_6
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.sec.android.settings.praymodewidget.REJECTING_INCOMING_CALL"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1734
    const-string v8, "phoneNumber"

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1735
    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v2

    .line 1736
    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isUltraPowerSavingMode()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isEmergencyMode()Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_11
    if-nez v0, :cond_12

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1739
    :cond_12
    const v0, 0x7f0b0079

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    .line 1740
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    :cond_13
    move v0, v2

    goto/16 :goto_0

    .line 1783
    :cond_14
    const-string v5, "volte_call_waiting"

    invoke-static {v5, v2}, Lcom/android/server/telecom/TelecomSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v5

    goto/16 :goto_4

    :cond_15
    move v2, v3

    .line 1822
    goto/16 :goto_5

    :cond_16
    move v5, v3

    goto/16 :goto_2

    :cond_17
    move v6, v3

    goto/16 :goto_3

    :cond_18
    move v0, v2

    move-object v4, v1

    goto/16 :goto_1

    :cond_19
    move-object v4, v1

    goto/16 :goto_1

    :cond_1a
    move v0, v3

    goto/16 :goto_0

    :cond_1b
    move-object v0, v1

    goto :goto_6
.end method

.method public static rejectCtcCdmaMultiInComingCall(Lcom/android/server/telecom/Call;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4133
    const-string v2, "china_cdma_call"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 4135
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneId(Lcom/android/server/telecom/Call;)I

    move-result v2

    new-array v3, v0, [I

    const/4 v4, 0x4

    aput v4, v3, v1

    invoke-static {v2, v3}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getFirstCallWithState(I[I)Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 4136
    const-string v3, "TelecomUtils"

    const-string v4, "reject the earliest call for CTC Cdma"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4137
    if-eqz v2, :cond_0

    .line 4138
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/telecom/Call;->reject(ZLjava/lang/String;)V

    .line 4141
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    .line 4145
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static removeClirPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 4061
    const-string v0, "*31#"

    .line 4062
    const-string v0, "#31#"

    .line 4064
    if-nez p0, :cond_1

    .line 4077
    :cond_0
    :goto_0
    return-object p0

    .line 4068
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 4072
    const-string v0, "*31#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "#31#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4073
    :cond_2
    const-string v0, "removeClirPrefix - number is started with clir prefix"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->log(Ljava/lang/String;)V

    .line 4074
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeVideoCallExtra(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1045
    if-eqz p0, :cond_0

    .line 1046
    const-string v0, "videocall"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1047
    const-string v0, "android.telecom.extra.START_CALL_WITH_SPEAKERPHONE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1049
    :cond_0
    return-void
.end method

.method public static requestOllehPhoneStart(Lcom/android/server/telecom/Call;I)V
    .locals 1

    .prologue
    .line 3391
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3392
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->requestOllehPhoneStart(I)V

    .line 3394
    :cond_0
    return-void
.end method

.method public static requestRingtoneUri(Lcom/android/server/telecom/Call;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3384
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3385
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->requestRingtoneUri()Ljava/lang/String;

    move-result-object v0

    .line 3387
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static requestTPhoneStart(Lcom/android/server/telecom/Call;I)V
    .locals 1

    .prologue
    .line 3378
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3379
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->requestTPhoneStart(I)V

    .line 3381
    :cond_0
    return-void
.end method

.method public static sendAcceptIntentForRecorder(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 2338
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkVoiceRecorder()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2339
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 2340
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    .line 2341
    if-nez v0, :cond_0

    const-string v1, "enbale_voicerecording_popup_when_incoming"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    const-string v0, "vt_audio_processing_on_ap"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2343
    :cond_1
    const-string v0, "TelecomUtils"

    const-string v1, "send accept intent for voice recorder"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2344
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.voicerecorder.rec_save"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2345
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.voicenote.rec_save"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.media.fmradio.rec_save"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2349
    :cond_2
    return-void
.end method

.method public static sendEmptyFlash()V
    .locals 4

    .prologue
    .line 4217
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 4218
    if-eqz v0, :cond_0

    .line 4219
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4220
    const-string v1, "TelecomUtils"

    const-string v2, "sendEmptyFlash"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4221
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->sendEmptyFlash()V

    .line 4225
    :cond_0
    return-void
.end method

.method public static sendMessageToUI(Lcom/android/server/telecom/Call;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 4263
    if-nez p0, :cond_1

    .line 4271
    :cond_0
    :goto_0
    return-void

    .line 4264
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 4265
    if-eqz v0, :cond_0

    .line 4267
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;

    move-result-object v1

    .line 4268
    if-eqz v1, :cond_0

    .line 4269
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getTelecomCallId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/android/server/telecom/secutils/SecInCallController;->sendMessageToUI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendRequestLastCall()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3481
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3482
    const-string v0, "TelecomUtils"

    const-string v1, " LAST CALL"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3484
    const-string v0, "gsm.nitz.time"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3485
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 3486
    const-string v2, "gsm.nitz.time-elapsedtime"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3487
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 3488
    const-string v4, "ril.timezoneID"

    const-string v5, "GMT"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3489
    new-instance v5, Landroid/text/format/Time;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 3490
    add-long/2addr v0, v2

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 3492
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3493
    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3494
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3495
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3496
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3497
    iget v1, v5, Landroid/text/format/Time;->year:I

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3498
    iget v1, v5, Landroid/text/format/Time;->year:I

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3499
    iget v1, v5, Landroid/text/format/Time;->month:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3500
    iget v1, v5, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3501
    iget v1, v5, Landroid/text/format/Time;->hour:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3502
    iget v1, v5, Landroid/text/format/Time;->minute:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3503
    iget v1, v5, Landroid/text/format/Time;->second:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3506
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3507
    if-eqz v1, :cond_1

    .line 3508
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephony;->sendRequestRawToRIL([BLandroid/os/Message;)I

    .line 3509
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect time -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3520
    :cond_0
    :goto_0
    return-void

    .line 3511
    :cond_1
    const-string v0, "TelecomUtils"

    const-string v1, "onDisconnect ITelephony service is null"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3513
    :catch_0
    move-exception v0

    .line 3514
    const-string v0, "TelecomUtils"

    const-string v1, "onDisconnect ITelephony service remote exception"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3515
    :catch_1
    move-exception v0

    .line 3516
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendSMSAsBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2093
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSMSAsBackground... number : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2095
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/telecom/secutils/TelecomUtils$3;

    invoke-direct {v1, p2, p0, p1}, Lcom/android/server/telecom/secutils/TelecomUtils$3;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2110
    return-void
.end method

.method public static setAudioEffect(ZZ)V
    .locals 4

    .prologue
    .line 4243
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 4244
    if-eqz v0, :cond_0

    .line 4245
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4246
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioEffect - enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", force = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4247
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->setAudioEffect(ZZ)V

    .line 4250
    :cond_0
    return-void
.end method

.method public static setBinderGetNumMarkResult(Lcom/android/server/telecom/Call;Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4843
    const-string v0, "TelecomUtils"

    const-string v1, "setBinderGetNumMarkResult"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4844
    if-nez p0, :cond_1

    .line 4845
    const-string v0, "TelecomUtils"

    const-string v1, " setBinderGetNumMarkResult call is null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4861
    :cond_0
    :goto_0
    return-void

    .line 4849
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 4851
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4852
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setBinderGetNumMarkResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4853
    iget-object v1, p1, Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;->mTagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setSpamTagName(Ljava/lang/String;)V

    .line 4854
    iget-object v1, p1, Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setSpamNumber(Ljava/lang/String;)V

    .line 4855
    iget v1, p1, Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;->mCount:I

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setSpamCount(I)V

    .line 4856
    iget v1, p1, Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;->mTagType:I

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setSpamTagType(I)V

    .line 4857
    iget-boolean v1, p1, Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;->isSpam:Z

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setisSpam(Z)V

    .line 4859
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 4

    .prologue
    .line 2177
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 2179
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2180
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 2181
    iput-object p0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2182
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2184
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConfigurationLocale - previousLocale : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " locale : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2186
    return-object v0
.end method

.method public static setConnectionCallId(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3071
    invoke-static {p0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 3072
    if-nez v0, :cond_0

    .line 3076
    :goto_0
    return-void

    .line 3075
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setConnectionCallId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setFolderClose()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4812
    const-string v0, "TelecomUtils"

    const-string v3, "setFolderClose : "

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4814
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    .line 4815
    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    .line 4816
    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v5

    .line 4817
    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v6

    .line 4818
    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    .line 4819
    :goto_0
    const-string v7, "support_folder_single_lcd"

    invoke-static {v7}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4820
    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    const/4 v7, 0x4

    if-eq v0, v7, :cond_5

    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    if-nez v6, :cond_5

    .line 4825
    :goto_1
    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->setFolderState(Z)V

    .line 4827
    if-eqz v2, :cond_3

    .line 4828
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/server/telecom/Call;->disconnect()V

    .line 4829
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/server/telecom/Call;->disconnect()V

    .line 4830
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->disconnect()V

    .line 4832
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 4818
    goto :goto_0

    :cond_5
    move v2, v1

    .line 4820
    goto :goto_1

    :cond_6
    move v2, v0

    goto :goto_1
.end method

.method public static setFolderOpen()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4792
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    .line 4793
    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    .line 4794
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {v3, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v5

    .line 4795
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v6, v0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    .line 4796
    invoke-virtual {v6}, Lcom/android/server/telecom/CallAudioManager;->isBluetoothAudioOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Lcom/android/server/telecom/CallAudioManager;->isWiredHeadsetPluggedIn()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    .line 4797
    :goto_0
    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->setFolderState(Z)V

    .line 4798
    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getAudioState()Landroid/telecom/CallAudioState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_1

    if-nez v0, :cond_1

    .line 4801
    const-string v0, "TelecomUtils"

    const-string v3, "folder open: speaker off"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v0, v3, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4802
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Lcom/android/server/telecom/CallAudioManager;->setAudioRoute(I)V

    .line 4805
    :cond_1
    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isFolderReceiveCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4806
    const-string v0, "TelecomUtils"

    const-string v3, "setFolderOpen : "

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v0, v3, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4807
    if-eqz v4, :cond_2

    if-nez v5, :cond_2

    invoke-virtual {v4, v1}, Lcom/android/server/telecom/Call;->answer(I)V

    .line 4809
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 4796
    goto :goto_0

    .line 4794
    :array_0
    .array-data 4
        0x5
        0x3
    .end array-data
.end method

.method public static setFolderState(Z)V
    .locals 0

    .prologue
    .line 4835
    sput-boolean p0, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsFolderOpen:Z

    .line 4836
    return-void
.end method

.method public static setIMSPreRegState(Z)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3825
    const-string v0, "single_lte"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "feature_kor_open"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/telecom/TelecomConfig;->isLGTSIM()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3847
    :cond_1
    :goto_0
    return-void

    .line 3830
    :cond_2
    const-string v0, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setIMSPreRegState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3832
    if-eqz p0, :cond_5

    .line 3833
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3834
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3835
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v3

    .line 3836
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDeviceOnLTE()Z

    move-result v4

    .line 3837
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isImsRegistered()Z

    move-result v5

    .line 3839
    const-string v6, "TelecomUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setIMSPreRegState - "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v3, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3841
    if-nez v5, :cond_3

    if-nez v3, :cond_1

    if-eqz v4, :cond_1

    .line 3842
    :cond_3
    const-string v0, "ril.ims.pre_regstate"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 3839
    goto :goto_1

    .line 3845
    :cond_5
    const-string v0, "ril.ims.pre_regstate"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static setIncomingCallAnswered(Z)V
    .locals 0

    .prologue
    .line 4160
    sput-boolean p0, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsIncomingCallAnswered:Z

    .line 4162
    return-void
.end method

.method public static setLastMoCallIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1445
    sput-object p0, Lcom/android/server/telecom/secutils/TelecomUtils;->sLastMoCallIntent:Landroid/content/Intent;

    .line 1446
    invoke-virtual {p0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->sLastMoCallCloneIntent:Landroid/content/Intent;

    .line 1447
    return-void
.end method

.method public static setModifyCallRequestInProgress(I)V
    .locals 0

    .prologue
    .line 4946
    sput p0, Lcom/android/server/telecom/secutils/TelecomUtils;->mModifyCallRequestInProgress:I

    .line 4947
    return-void
.end method

.method public static setModifyVoiceCallRequest(Z)V
    .locals 0

    .prologue
    .line 4938
    sput-boolean p0, Lcom/android/server/telecom/secutils/TelecomUtils;->mModifyCallRequested:Z

    .line 4939
    return-void
.end method

.method public static setPSBarring(Z)V
    .locals 0

    .prologue
    .line 3063
    sput-boolean p0, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsPSBarring:Z

    .line 3064
    return-void
.end method

.method public static setPreviousState(I)V
    .locals 0

    .prologue
    .line 4123
    sput p0, Lcom/android/server/telecom/secutils/TelecomUtils;->mState:I

    .line 4124
    return-void
.end method

.method private static setSecCallExtraForEmergencyCall(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 635
    if-nez p1, :cond_0

    .line 636
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 639
    :cond_0
    invoke-static {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 640
    if-nez v0, :cond_1

    .line 641
    new-instance v0, Lcom/android/services/telephony/common/SecCallExtra;

    invoke-direct {v0}, Lcom/android/services/telephony/common/SecCallExtra;-><init>()V

    .line 644
    :cond_1
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v1

    if-nez v1, :cond_3

    .line 645
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailableVoLTE()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 646
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 647
    const-string v1, "TelecomUtils"

    const-string v2, "Change Domain to PS for emergency (Domain.PS)"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 648
    invoke-virtual {v0, v6}, Lcom/android/services/telephony/common/SecCallExtra;->setDomain(I)V

    .line 656
    :cond_2
    const-string v1, "gsmcall"

    .line 657
    const-string v1, "gsmcall"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 658
    sget-object v1, Lcom/android/server/telecom/Log;->TAG:Ljava/lang/String;

    const-string v2, "TelecomUtils : E911 - IMS fallback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-static {v5}, Lcom/android/server/telecom/secutils/TelecomUtilsAudio;->setPlayingSecCallEndTone(Z)V

    .line 660
    invoke-virtual {v0, v6}, Lcom/android/services/telephony/common/SecCallExtra;->setDomain(I)V

    .line 664
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 665
    const-string v1, "movial_ims_call"

    invoke-virtual {p0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setWfcImsCall(Z)V

    .line 668
    :cond_4
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSecCallExtraForEmergencyCall : secCallExtra - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 669
    invoke-static {p1, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static setSmartCallInfo(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 5003
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmartCallInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5004
    sput-object p0, Lcom/android/server/telecom/secutils/TelecomUtils;->mSmartCallInfo:Ljava/lang/String;

    .line 5005
    return-void
.end method

.method public static setSpamCallType(I)V
    .locals 3

    .prologue
    .line 4869
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpamCallType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4870
    sput p0, Lcom/android/server/telecom/secutils/TelecomUtils;->mTagType:I

    .line 4871
    return-void
.end method

.method public static setTelecomCallId(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3079
    invoke-static {p0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 3080
    if-nez v0, :cond_0

    .line 3084
    :goto_0
    return-void

    .line 3083
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setTelecomCallId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setUseSpamCallCache(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5013
    const-string v0, "setUseSpamCallCache"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5015
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5016
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5017
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsUseSpamCache:Z

    .line 5023
    :cond_0
    :goto_0
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUseSpamCallCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsUseSpamCache:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5024
    return-void

    .line 5018
    :cond_1
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5019
    sput-boolean v3, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsUseSpamCache:Z

    goto :goto_0
.end method

.method public static setUseSpamCallCache(Z)V
    .locals 3

    .prologue
    .line 5027
    sput-boolean p0, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsUseSpamCache:Z

    .line 5028
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUseSpamCallCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsUseSpamCache:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5029
    return-void
.end method

.method public static setVoicetalkLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 2173
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getVoicetalkLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static setWfcLastMoCallIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1464
    invoke-virtual {p0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->sWfcLastMoCallIntent:Landroid/content/Intent;

    .line 1465
    return-void
.end method

.method public static setmShowAutoCspPopup(Z)V
    .locals 0

    .prologue
    .line 4258
    sput-boolean p0, Lcom/android/server/telecom/secutils/TelecomUtils;->mShowAutoCspPopup:Z

    .line 4259
    return-void
.end method

.method private static shouldProcessAsCs(Landroid/content/Intent;Landroid/net/Uri;Z)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3551
    if-eqz p1, :cond_8

    .line 3552
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 3557
    :goto_0
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "att_volte_ui"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mpcs_volte_ui"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3561
    :cond_0
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isWirelessPriorityServiceNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3562
    const-string v1, "TelecomUtils"

    const-string v4, "shouldProcessAsCs : WPS Call"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 3567
    :goto_1
    const-string v4, "cs_voice_call_outgoing"

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3568
    const-string v1, "TelecomUtils"

    const-string v4, "shouldProcessAsCs : forcely CS Call"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 3572
    :cond_1
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->alreadyHaveNoDisconnectingCsCalls()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3573
    const-string v1, "TelecomUtils"

    const-string v4, "shouldProcessAsCs : alreadyHaveNoDisconnectingCsCalls"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 3577
    :cond_2
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "single_lte"

    invoke-static {v4}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3579
    const-string v4, "114"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3580
    const-string v1, "TelecomUtils"

    const-string v4, "shouldProcessAsCs : 114 for non single lte"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 3585
    :cond_3
    const-string v4, "emergency_find_lost_phone"

    invoke-static {v4}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3586
    const-string v4, "1521044"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "0000"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/server/telecom/operator/OperatorUtils;->isFindService()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3588
    const-string v0, "TelecomUtils"

    const-string v1, "shouldProcessAsCs : cscall - EMERGENCY_FIND_LOST_PHONE"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 3593
    :cond_5
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3594
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getServiceStatus()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p2, :cond_6

    .line 3595
    const-string v0, "TelecomUtils"

    const-string v1, "shouldProcessAsCs : getServiceStatus = false"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 3600
    :cond_6
    const-string v0, "thl_volte_ui"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3603
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailableVoLTE()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailableVoWIFI()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3604
    const-string v0, "TelecomUtils"

    const-string v1, "shouldProcessAsCs : THL other operators except DTAC"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 3609
    :cond_7
    const-string v0, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldProcessAsCs : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v0, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3610
    return v1

    .line 3554
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto/16 :goto_1
.end method

.method public static shouldProcessAsEmergencyVT(Landroid/net/Uri;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3523
    const-string v0, ""

    .line 3525
    const-string v3, "tc_support_emergency_number"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3526
    if-eqz p0, :cond_2

    .line 3527
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 3529
    :goto_0
    if-eqz p0, :cond_1

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3530
    const-string v0, "119"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isNoSim()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 3533
    :goto_1
    const-string v4, "TelecomUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldProcessAsEmergencyVT number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v4, v3, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3534
    return v0

    :cond_0
    move v0, v2

    .line 3530
    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move-object v3, v0

    goto :goto_0

    :cond_3
    move-object v3, v0

    move v0, v2

    goto :goto_1
.end method

.method public static shouldProcessAsEmergencyVolte()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3540
    const-string v0, "emergency_volte_call"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailableVoLTE()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 3543
    :goto_0
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldProcessAsEmergencyVolte emergencyVolte : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3544
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public static shouldSilenceRingerForVideoRecorder(Lcom/android/server/telecom/Call;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 2359
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2401
    :goto_0
    return v0

    .line 2363
    :cond_0
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkVideoRecorder()Z

    move-result v2

    .line 2364
    if-nez v2, :cond_1

    move v0, v1

    .line 2365
    goto :goto_0

    .line 2368
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Camera_EnableCameraDuringCall"

    invoke-virtual {v0, v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 2369
    goto :goto_0

    .line 2373
    :cond_2
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2374
    const-string v3, "keyguard"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 2375
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "support_second_screen"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2376
    const-string v0, "TelecomUtils"

    const-string v2, "isKeyguardLocked"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 2377
    goto :goto_0

    .line 2382
    :cond_3
    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2383
    const-string v0, "TelecomUtils"

    const-string v3, "check in legacy UI"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2384
    const-string v0, "support_second_screen"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2385
    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isSecondScreenEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 2386
    goto :goto_0

    .line 2389
    :cond_4
    invoke-static {}, Lcom/android/server/telecom/TelecomSystemDB;->isIncomingCallPopUPEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 2390
    goto :goto_0

    .line 2394
    :cond_5
    const-string v0, "easy_mode_switch"

    invoke-static {v0, v5}, Lcom/android/server/telecom/TelecomSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    .line 2395
    const-string v3, "easy_mode_contacts"

    invoke-static {v3, v5}, Lcom/android/server/telecom/TelecomSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v3

    .line 2396
    if-nez v0, :cond_6

    if-nez v3, :cond_6

    move v0, v1

    .line 2397
    goto :goto_0

    :cond_6
    move v0, v2

    .line 2401
    goto :goto_0
.end method

.method private static shouldSkipCallFailDialog(Landroid/telecom/DisconnectCause;)Z
    .locals 1

    .prologue
    .line 1170
    invoke-virtual {p0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1176
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1174
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1170
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static startCallFailDialogActivity(Landroid/telecom/DisconnectCause;)V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const v4, 0x7f0b0029

    const v3, 0x7f0b0028

    const v5, 0x7f0b002c

    const/4 v1, 0x0

    .line 1064
    const-string v2, "TelecomUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCallFailDialogActivity(): errorDisconnectCause = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1066
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->shouldSkipCallFailDialog(Landroid/telecom/DisconnectCause;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1067
    const-string v0, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCallFailDialogActivity(): shouldSkipCallFailDialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1167
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    invoke-static {}, Lcom/android/server/telecom/TelecomSystem;->getInstance()Lcom/android/server/telecom/TelecomSystem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/TelecomSystem;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1072
    new-instance v7, Landroid/content/Intent;

    const-class v2, Lcom/android/server/telecom/components/ErrorDialogActivity;

    invoke-direct {v7, v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1076
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getTelephonyDisconnectCause(Landroid/telecom/DisconnectCause;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1120
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getErrorMsgResId(Landroid/telecom/DisconnectCause;)I

    move-result v0

    .line 1121
    const/4 v2, -0x2

    if-ne v0, v2, :cond_9

    move v0, v1

    move v2, v5

    .line 1128
    :goto_1
    if-ne v2, v5, :cond_5

    if-nez v0, :cond_5

    .line 1129
    invoke-static {v5}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    goto :goto_0

    :sswitch_0
    move v0, v1

    move v2, v3

    .line 1079
    goto :goto_1

    .line 1083
    :sswitch_1
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isNoSim()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1084
    const-string v0, "TelecomUtils"

    const-string v2, "OUTGOING_FAILURE : isNoSim"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1086
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1088
    :cond_2
    const-string v0, "TelecomUtils"

    const-string v2, "OUTGOING_FAILURE : isNoSim & (att or kor)"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1089
    const v0, 0x7f0b002a

    move v2, v0

    move v0, v1

    goto :goto_1

    .line 1096
    :sswitch_2
    const-string v2, "show_missing_voicemail"

    invoke-virtual {v7, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move v2, v5

    .line 1097
    goto :goto_1

    .line 1099
    :sswitch_3
    const-string v0, "TelecomUtils"

    const-string v2, "EMERGENCY_ONLY"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1101
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1103
    :cond_3
    const v0, 0x7f0b002a

    move v2, v0

    move v0, v1

    goto :goto_1

    .line 1107
    :sswitch_4
    const v0, 0x7f0b002d

    .line 1108
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v8, "CscFeature_Common_SupportHuxPco"

    invoke-virtual {v2, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v8, "CscFeature_Common_SupportHuxPayg"

    invoke-virtual {v2, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1110
    const-string v2, "persist.sys.pcovalue"

    const-string v8, "ril.pco.default"

    invoke-static {v8, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1111
    const/4 v8, 0x5

    if-ne v2, v8, :cond_4

    .line 1112
    const v0, 0x7f0b002e

    :cond_4
    move v2, v0

    move v0, v1

    .line 1114
    goto/16 :goto_1

    .line 1117
    :sswitch_5
    const v0, 0x7f0b0035

    move v2, v0

    move v0, v1

    .line 1118
    goto/16 :goto_1

    .line 1133
    :cond_5
    const/high16 v0, 0x10800000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1134
    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    .line 1136
    :try_start_0
    const-string v0, "error_message_id"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1137
    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne v2, v3, :cond_6

    .line 1139
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/telecom/secutils/TelecomUtils$1;

    invoke-direct {v2, v6, v7}, Lcom/android/server/telecom/secutils/TelecomUtils$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1163
    :catch_0
    move-exception v0

    .line 1164
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1149
    :cond_6
    if-eq v2, v3, :cond_7

    if-ne v2, v4, :cond_8

    .line 1150
    :cond_7
    :try_start_1
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/telecom/secutils/TelecomUtils$2;

    invoke-direct {v2, v6, v7}, Lcom/android/server/telecom/secutils/TelecomUtils$2;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1161
    :cond_8
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_9
    move v2, v0

    move v0, v1

    goto/16 :goto_1

    :cond_a
    move v0, v1

    move v2, v4

    goto/16 :goto_1

    :cond_b
    move v0, v1

    move v2, v5

    goto/16 :goto_1

    .line 1076
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_4
        0x25 -> :sswitch_3
        0x28 -> :sswitch_2
        0x2b -> :sswitch_1
        0xc8 -> :sswitch_5
    .end sparse-switch
.end method

.method public static updateWideBand(Lcom/android/server/telecom/Call;I)V
    .locals 2

    .prologue
    .line 3149
    if-nez p0, :cond_1

    .line 3150
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallsManager;->setWBAMRstate(I)V

    .line 3159
    :cond_0
    :goto_0
    return-void

    .line 3152
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 3153
    if-eqz v0, :cond_0

    .line 3154
    const-string v1, "call_details_for_hd_icon"

    invoke-static {v1}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3155
    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setHDIcon(I)V

    .line 3156
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static useMinVibrate()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3871
    const-string v1, "com.sec.android.app.camera"

    .line 3872
    const-string v1, "com.sec.android.app.ma.recorder"

    .line 3874
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkVoiceRecorder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3878
    :cond_0
    :goto_0
    return v0

    .line 3875
    :cond_1
    const-string v1, "com.sec.android.app.camera"

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isTopActivity(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3876
    const-string v1, "com.sec.android.app.ma.recorder"

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isTopActivity(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3878
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static wakeUpScreen(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1472
    const-string v0, "TelecomUtils"

    const-string v1, "wakeUpScreen()"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1473
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1474
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 1475
    return-void
.end method
