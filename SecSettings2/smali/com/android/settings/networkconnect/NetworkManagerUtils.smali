.class public Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;
.super Ljava/lang/Object;
.source "NetworkManagerUtils.java"


# static fields
.field public static final ASSOCIATE_PACKAGES_BY_KEY_PACKAGE:[[Ljava/lang/String;

.field public static mIsWarningStatus:Z

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnd:J

.field private mNetWorkHistory:Landroid/net/NetworkStatsHistory;

.field private mNetWorkTemplate:Landroid/net/NetworkTemplate;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mSharedpre:Landroid/content/SharedPreferences;

.field private mStart:J

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mTelManager:Landroid/telephony/TelephonyManager;

.field private mWhiteListSlot1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWhiteListSlot2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    sput-boolean v3, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    .line 73
    new-array v0, v4, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.samsung.android.onlinevideo"

    aput-object v2, v1, v3

    const-string v2, "com.qiyi.video.oemplayer"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->ASSOCIATE_PACKAGES_BY_KEY_PACKAGE:[[Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils$1;

    invoke-direct {v0}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mWhiteListSlot1:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mWhiteListSlot2:Ljava/util/List;

    .line 58
    iput-object v1, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mNetWorkHistory:Landroid/net/NetworkStatsHistory;

    .line 59
    iput-object v1, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mStatsService:Landroid/net/INetworkStatsService;

    .line 60
    iput-object v1, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mNetWorkTemplate:Landroid/net/NetworkTemplate;

    .line 61
    iput-object v1, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 62
    iput-object v1, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mStatsSession:Landroid/net/INetworkStatsSession;

    .line 70
    iput-wide v2, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mStart:J

    .line 71
    iput-wide v2, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mEnd:J

    .line 77
    iput-object p1, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 79
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mStatsService:Landroid/net/INetworkStatsService;

    .line 80
    invoke-direct {p0}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mNetWorkTemplate:Landroid/net/NetworkTemplate;

    .line 81
    return-void
.end method

.method private getActiveSubId()I
    .locals 4

    .prologue
    .line 277
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v0

    .line 278
    .local v0, "subId":I
    const-string v1, "NetworkManagerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubId subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return v0
.end method

.method private getBounds(I)V
    .locals 11
    .param p1, "dayString"    # I

    .prologue
    .line 353
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 354
    .local v9, "currentCalendar":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 355
    .local v10, "currentDay":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 356
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 357
    if-lt v10, p1, :cond_0

    .line 358
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mStart:J

    .line 359
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 360
    .local v1, "calendar2":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 361
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mEnd:J

    .line 369
    :goto_0
    return-void

    .line 363
    .end local v1    # "calendar2":Ljava/util/Calendar;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move v5, p1

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 364
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mEnd:J

    .line 365
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 366
    .restart local v1    # "calendar2":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 367
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mStart:J

    goto :goto_0
.end method

.method private getConfirmTime()J
    .locals 7

    .prologue
    .line 313
    const-string v0, "check_time"

    .line 317
    .local v0, "confirmTimeString":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 319
    .local v2, "lConfirmTime":J
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 324
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 325
    const-wide/16 v2, 0x0

    .line 327
    :cond_0
    return-wide v2

    .line 320
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "NetworkManagerUtils"

    const-string v5, "lConfirmTime SettingNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private getConfirmTraffic()J
    .locals 10

    .prologue
    const-wide/16 v0, 0x0

    .line 331
    const-string v2, "data_used_by_check_time"

    .line 335
    .local v2, "confirmTrafficString":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, "sConfirmTraffic":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 337
    :cond_0
    const-string v7, "NetworkManagerUtils"

    const-string v8, "getConfirmTraffic : false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_0
    return-wide v0

    .line 342
    :cond_1
    :try_start_0
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 346
    .local v4, "dConfirm":D
    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    mul-double/2addr v4, v8

    .line 347
    double-to-long v0, v4

    .line 348
    .local v0, "confirmTraffic":J
    const-string v7, "NetworkManagerUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getConfirmTraffic "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from setting, confirm bytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    .end local v0    # "confirmTraffic":J
    .end local v4    # "dConfirm":D
    :catch_0
    move-exception v3

    .line 344
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getCurrentDataSoltId()I
    .locals 2

    .prologue
    .line 264
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v0

    .line 265
    .local v0, "subId":I
    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getSlotId(I)I

    move-result v1

    return v1
.end method

.method private getStartDay()I
    .locals 6

    .prologue
    .line 298
    const-string v2, "set_package_start_date_value"

    .line 299
    .local v2, "startDayString":Ljava/lang/String;
    const/4 v1, 0x1

    .line 301
    .local v1, "iStart":I
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 306
    :goto_0
    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    const/16 v3, 0x1f

    if-le v1, v3, :cond_1

    .line 307
    :cond_0
    const/4 v1, 0x1

    .line 309
    :cond_1
    return v1

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "NetworkManagerUtils"

    const-string v4, "iStart SettingNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getSubscriberId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->isSupportMultiSIM()Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 292
    .local v0, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 294
    .end local v0    # "tel":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->getCurrentDataSoltId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isSupportMultiSIM()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 283
    iget-object v1, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mTelManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkStatus(Z)V
    .locals 14
    .param p1, "isNeedExecute"    # Z

    .prologue
    const-wide/16 v12, 0x400

    const/4 v11, 0x0

    .line 219
    const-string v8, "netstats"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mStatsService:Landroid/net/INetworkStatsService;

    .line 220
    invoke-direct {p0}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->getSubscriberId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mNetWorkTemplate:Landroid/net/NetworkTemplate;

    .line 221
    iget-object v8, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    iput-object v8, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 222
    iget-object v8, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mSharedpre:Landroid/content/SharedPreferences;

    .line 223
    invoke-virtual {p0}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->getTotalUsedData()J

    move-result-wide v4

    .line 224
    .local v4, "usedTotalBytes":J
    sput-boolean v11, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "activeSimSlotWarningEnable":I
    const-string v1, ""

    .line 227
    .local v1, "allData":Ljava/lang/String;
    const-string v3, ""

    .line 228
    .local v3, "warningValue":Ljava/lang/String;
    const/4 v2, 0x0

    .line 229
    .local v2, "isTrafficSettingEnable":Z
    iget-object v8, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mSharedpre:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set_data_limit"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "max"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    iget-object v8, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mSharedpre:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data_warning_set"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "off"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 231
    iget-object v8, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data_warning_whitelist_enable_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 233
    iget-object v8, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mSharedpre:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switch_traffic_settings"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 234
    const-string v8, "off"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    const-string v8, "max"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 236
    :cond_0
    sput-boolean v11, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    .line 237
    if-eqz p1, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->turnToNormalStatus()V

    .line 254
    :cond_1
    :goto_0
    return-void

    .line 242
    :cond_2
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    mul-long/2addr v8, v12

    mul-long/2addr v8, v12

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x64

    div-long v6, v8, v10

    .line 243
    .local v6, "warningBytes":J
    cmp-long v8, v4, v6

    if-ltz v8, :cond_3

    .line 244
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    .line 246
    :cond_3
    if-eqz p1, :cond_1

    .line 249
    sget-boolean v8, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    if-nez v8, :cond_4

    .line 250
    invoke-virtual {p0}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->turnToNormalStatus()V

    goto :goto_0

    .line 252
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->runWarning()V

    goto :goto_0
.end method

.method public getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 270
    .local v2, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "actualSubscriberId":Ljava/lang/String;
    const-string v3, "test.subscriberid"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "retVal":Ljava/lang/String;
    const-string v3, "NetworkManagerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActiveSubscriberId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " actualSubscriberId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-object v1
.end method

.method public getTotalUsedData()J
    .locals 24

    .prologue
    .line 372
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->getStartDay()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->getBounds(I)V

    .line 373
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 374
    .local v8, "currentTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->getConfirmTime()J

    move-result-wide v12

    .line 375
    .local v12, "confirmTime":J
    const-wide/16 v18, 0x0

    .line 376
    .local v18, "startTraffic":J
    const-wide/16 v14, 0x0

    .line 377
    .local v14, "realTraffic":J
    const-string v16, "middle_real_value"

    .line 379
    .local v16, "realTrafficString":Ljava/lang/String;
    const-wide/16 v22, 0x0

    .line 380
    .local v22, "totalUsedBytes":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mStart:J

    cmp-long v3, v12, v4

    if-ltz v3, :cond_0

    cmp-long v3, v12, v8

    if-gtz v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-eqz v3, :cond_0

    .line 381
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->getConfirmTraffic()J

    move-result-wide v18

    .line 383
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    .line 390
    :cond_0
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v3}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mStatsSession:Landroid/net/INetworkStatsSession;

    .line 391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mStatsSession:Landroid/net/INetworkStatsSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mNetWorkTemplate:Landroid/net/NetworkTemplate;

    const/16 v5, 0xa

    invoke-interface {v3, v4, v5}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mNetWorkHistory:Landroid/net/NetworkStatsHistory;

    .line 392
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mNetWorkHistory:Landroid/net/NetworkStatsHistory;

    if-nez v3, :cond_1

    .line 393
    const-string v3, "NetworkManagerUtils"

    const-string v4, "fail to get data used bytes"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 394
    const-wide/16 v20, -0x1

    .line 404
    :goto_1
    return-wide v20

    .line 384
    :catch_0
    move-exception v2

    .line 385
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "NetworkManagerUtils"

    const-string v4, "realTraffic SettingNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-wide/16 v14, 0x0

    goto :goto_0

    .line 396
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mNetWorkHistory:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mStart:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mEnd:J

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v11

    .line 397
    .local v11, "enry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v4, v11, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v11, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    add-long v22, v4, v6

    .line 403
    sub-long v4, v22, v14

    add-long v20, v4, v18

    .line 404
    .local v20, "totalTraffic":J
    goto :goto_1

    .line 398
    .end local v11    # "enry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v20    # "totalTraffic":J
    :catch_1
    move-exception v2

    .line 399
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "NetworkManagerUtils"

    const-string v4, "fail to get data used bytes"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 401
    const-wide/16 v20, 0x0

    goto :goto_1
.end method

.method public getUsedSubIds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v1, "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "used_subId"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "subIds":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 99
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "subIdsArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 101
    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "i":I
    .end local v3    # "subIdsArray":[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getWhiteList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "whiteListType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v1, "mWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "whiteListString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 87
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "whiteListStringArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 89
    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "i":I
    .end local v3    # "whiteListStringArray":[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public isCurrentSlotWarning(Ljava/lang/String;)Z
    .locals 1
    .param p1, "subscriberId"    # Ljava/lang/String;

    .prologue
    .line 408
    sget-boolean v0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const/4 v0, 0x1

    .line 411
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putUsedSubId(Ljava/lang/String;)V
    .locals 6
    .param p1, "subId"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v1, "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "used_subId"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "subIds":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 111
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "subIdsArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 113
    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .end local v0    # "i":I
    .end local v3    # "subIdsArray":[Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "used_subId"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 124
    :cond_1
    return-void

    .line 121
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public putWhiteList(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p2, "whiteListType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v1, "whiteListString":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 129
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    return-void
.end method

.method public runWarning()V
    .locals 6

    .prologue
    .line 190
    iget-object v3, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->setWifiAssociateApps(Landroid/content/Context;)V

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v2, "warningWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v1, "normalAppUidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data_warning_app_whitelist_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->getWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 194
    const-string v3, "data_normal_app_whitelist"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->getWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 196
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 197
    iget-object v4, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    .line 195
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 199
    iget-object v4, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    goto :goto_1

    .line 202
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->setDataAssociateApps(Landroid/content/Context;)V

    .line 203
    return-void
.end method

.method public setDataAssociateApps(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 415
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 416
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v9, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->ASSOCIATE_PACKAGES_BY_KEY_PACKAGE:[[Ljava/lang/String;

    array-length v9, v9

    if-ge v2, v9, :cond_1

    .line 417
    sget-object v9, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->ASSOCIATE_PACKAGES_BY_KEY_PACKAGE:[[Ljava/lang/String;

    aget-object v6, v9, v2

    .line 418
    .local v6, "packageNameArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 420
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v6, v9

    const/16 v10, 0x80

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 421
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 422
    .local v5, "keyUid":I
    iget-object v9, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v9, v5}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v4

    .line 423
    .local v4, "isAllow":Z
    const/4 v3, 0x1

    .local v3, "index":I
    :goto_1
    array-length v9, v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v3, v9, :cond_0

    .line 425
    :try_start_1
    aget-object v9, v6, v3

    const/16 v10, 0x80

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v8, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 426
    .local v8, "uid":I
    iget-object v9, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v9, v8, v4}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 423
    .end local v8    # "uid":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 427
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v9, "NetworkManagerUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NameNotFoundException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v6, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 431
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "index":I
    .end local v4    # "isAllow":Z
    .end local v5    # "keyUid":I
    :catch_1
    move-exception v1

    .line 432
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "NetworkManagerUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NameNotFoundException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v6, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 435
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "packageNameArray":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setWifiAssociateApps(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 438
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 439
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v9, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->ASSOCIATE_PACKAGES_BY_KEY_PACKAGE:[[Ljava/lang/String;

    array-length v9, v9

    if-ge v2, v9, :cond_1

    .line 440
    sget-object v9, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->ASSOCIATE_PACKAGES_BY_KEY_PACKAGE:[[Ljava/lang/String;

    aget-object v6, v9, v2

    .line 441
    .local v6, "packageNameArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 443
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v6, v9

    const/16 v10, 0x80

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 444
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 445
    .local v5, "keyUid":I
    iget-object v9, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v9, v5}, Landroid/net/NetworkPolicyManager;->getFirewallRuleWifi(I)Z

    move-result v4

    .line 446
    .local v4, "isAllow":Z
    const/4 v3, 0x1

    .local v3, "index":I
    :goto_1
    array-length v9, v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v3, v9, :cond_0

    .line 448
    :try_start_1
    aget-object v9, v6, v3

    const/16 v10, 0x80

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v8, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 449
    .local v8, "uid":I
    iget-object v9, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v9, v8, v4}, Landroid/net/NetworkPolicyManager;->setFirewallRuleWifi(IZ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 446
    .end local v8    # "uid":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 450
    :catch_0
    move-exception v1

    .line 451
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v9, "NetworkManagerUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NameNotFoundException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v6, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 454
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "index":I
    .end local v4    # "isAllow":Z
    .end local v5    # "keyUid":I
    :catch_1
    move-exception v1

    .line 455
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "NetworkManagerUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NameNotFoundException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v6, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 458
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "packageNameArray":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public sortInNormalStatus()V
    .locals 4

    .prologue
    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "applicationNetInfoList1":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v1, "applicationNetInfoList2":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 147
    sget-object v3, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;

    invoke-virtual {v3}, Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    sget-object v3, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_0
    sget-object v3, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 153
    :cond_1
    sget-object v3, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 154
    sget-object v3, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 155
    sget-object v3, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 156
    sget-object v3, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 157
    sget-object v3, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    return-void
.end method

.method public sortInWarningStatus()V
    .locals 5

    .prologue
    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v1, "appDataEnableList1":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v2, "appDataEnableList2":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, "appDataDisableList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v4, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 165
    sget-object v4, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;

    invoke-virtual {v4}, Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    sget-object v4, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;

    invoke-virtual {v4}, Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;->isWarningAllowed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    sget-object v4, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    :cond_0
    sget-object v4, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 172
    :cond_1
    sget-object v4, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    :cond_2
    sget-object v4, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 176
    sget-object v4, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 177
    sget-object v4, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 178
    sget-object v4, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 179
    sget-object v4, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    sget-object v4, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    sget-object v4, Lcom/android/settings_ex/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    return-void
.end method

.method public turnToNormalStatus()V
    .locals 5

    .prologue
    .line 206
    const-string v2, "NetworkManagerUtils"

    const-string v3, "turnToNormalStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v2, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->setWifiAssociateApps(Landroid/content/Context;)V

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v1, "normalAppUidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "data_normal_app_whitelist"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->getWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 211
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    iget-object v3, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    .line 210
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/networkconnect/NetworkManagerUtils;->setDataAssociateApps(Landroid/content/Context;)V

    .line 216
    return-void
.end method
