.class public Lcom/android/internal/telephony/SmsUsageMonitor;
.super Ljava/lang/Object;
.source "SmsUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;,
        Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;,
        Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    }
.end annotation


# static fields
.field private static final ATTR_COUNTRY:Ljava/lang/String; = "country"

.field private static final ATTR_FREE:Ljava/lang/String; = "free"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE_SMS_POLICY:Ljava/lang/String; = "sms-policy"

.field private static final ATTR_PATTERN:Ljava/lang/String; = "pattern"

.field private static final ATTR_PREMIUM:Ljava/lang/String; = "premium"

.field private static final ATTR_STANDARD:Ljava/lang/String; = "standard"

.field static final CATEGORY_FREE_SHORT_CODE:I = 0x1

.field static final CATEGORY_NOT_SHORT_CODE:I = 0x0

.field static final CATEGORY_POSSIBLE_PREMIUM_SHORT_CODE:I = 0x3

.field static final CATEGORY_PREMIUM_SHORT_CODE:I = 0x4

.field static final CATEGORY_STANDARD_SHORT_CODE:I = 0x2

.field private static final DBG:Z = false

.field private static final DEFAULT_SMS_CHECK_PERIOD:I = 0x927c0

.field private static final DEFAULT_SMS_MAX_COUNT:I = 0x3e8

.field private static final EVR_MCCMNC1:Ljava/lang/String; = "23430"

.field private static final EVR_MCCMNC2:Ljava/lang/String; = "23433"

.field private static final ISIS_PACKAGE_NAME:Ljava/lang/String; = "com.isis.mclient.verizon.activity"

.field private static final KT_ReadConfirmAddr:Ljava/lang/String; = "#431"

.field private static final NA_EmailGateWayAddr:Ljava/lang/String; = "6245"

.field public static final PREMIUM_SMS_PERMISSION_ALWAYS_ALLOW:I = 0x3

.field public static final PREMIUM_SMS_PERMISSION_ASK_USER:I = 0x1

.field public static final PREMIUM_SMS_PERMISSION_NEVER_ALLOW:I = 0x2

.field public static final PREMIUM_SMS_PERMISSION_UNKNOWN:I = 0x0

.field private static final SHORT_CODE_PATH:Ljava/lang/String; = "/data/misc/sms/codes"

.field private static final SMS_POLICY_FILE_DIRECTORY:Ljava/lang/String; = "/data/misc/sms"

.field private static final SMS_POLICY_FILE_NAME:Ljava/lang/String; = "premium_sms_policy.xml"

.field private static final TAG:Ljava/lang/String; = "SmsUsageMonitor"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_SHORTCODE:Ljava/lang/String; = "shortcode"

.field private static final TAG_SHORTCODES:Ljava/lang/String; = "shortcodes"

.field private static final TAG_SMS_POLICY_BODY:Ljava/lang/String; = "premium-sms-policy"

.field private static final VDBG:Z


# instance fields
.field private final mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mCheckPeriod:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentCountry:Ljava/lang/String;

.field private mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

.field private final mMaxAllowed:I

.field private final mPatternFile:Ljava/io/File;

.field private mPatternFileLastModified:J

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private final mPremiumSmsPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

.field private mSettingsShortCodePatterns:Ljava/lang/String;

.field private mSimOperator:Ljava/lang/String;

.field private final mSmsStamp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    .line 136
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 142
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/sms/codes"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    .line 145
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 178
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    .line 287
    iput-object p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 290
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "sms_outgoing_check_max_count"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mMaxAllowed:I

    .line 294
    const-string v1, "sms_outgoing_check_interval_ms"

    const v2, 0x927c0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckPeriod:I

    .line 298
    new-instance v1, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;-><init>(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSettingsObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

    .line 300
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->loadPremiumSmsPolicyDb()V

    .line 301
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsUsageMonitor;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->writePremiumSmsPolicyDb()V

    return-void
.end method

.method private static checkCallerIsSystemOrPhoneApp()V
    .locals 5

    .prologue
    .line 684
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 685
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 686
    .local v0, "appId":I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3e9

    if-eq v0, v2, :cond_0

    if-nez v1, :cond_1

    .line 687
    :cond_0
    return-void

    .line 689
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disallowed call for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 667
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 668
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_0

    if-nez v2, :cond_1

    .line 681
    :cond_0
    return-void

    .line 672
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-interface {v3, p0, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 674
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 675
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gave package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which is owned by uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 679
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getPatternMatcherFromFile(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    .locals 8
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 309
    const/4 v2, 0x0

    .line 310
    .local v2, "patternReader":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 312
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    .end local v2    # "patternReader":Ljava/io/FileReader;
    .local v3, "patternReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 314
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 315
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 321
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 322
    if-eqz v3, :cond_0

    .line 324
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v2, v3

    .line 328
    .end local v3    # "patternReader":Ljava/io/FileReader;
    .restart local v2    # "patternReader":Ljava/io/FileReader;
    :goto_1
    return-object v4

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v4, "SmsUsageMonitor"

    const-string v5, "Short Code Pattern File not found"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    iget-object v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 322
    if-eqz v2, :cond_1

    .line 324
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 328
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    const/4 v4, 0x0

    goto :goto_1

    .line 318
    :catch_1
    move-exception v0

    .line 319
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_5
    const-string v4, "SmsUsageMonitor"

    const-string v5, "XML parser exception reading short code pattern file"

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 321
    iget-object v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 322
    if-eqz v2, :cond_1

    .line 324
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 325
    :catch_2
    move-exception v4

    goto :goto_3

    .line 321
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v4

    :goto_5
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 322
    if-eqz v2, :cond_2

    .line 324
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 325
    :cond_2
    :goto_6
    throw v4

    .end local v2    # "patternReader":Ljava/io/FileReader;
    .restart local v3    # "patternReader":Ljava/io/FileReader;
    :catch_3
    move-exception v5

    goto :goto_0

    .end local v3    # "patternReader":Ljava/io/FileReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "patternReader":Ljava/io/FileReader;
    :catch_4
    move-exception v4

    goto :goto_3

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v5

    goto :goto_6

    .line 321
    .end local v2    # "patternReader":Ljava/io/FileReader;
    .restart local v3    # "patternReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "patternReader":Ljava/io/FileReader;
    .restart local v2    # "patternReader":Ljava/io/FileReader;
    goto :goto_5

    .line 318
    .end local v2    # "patternReader":Ljava/io/FileReader;
    .restart local v3    # "patternReader":Ljava/io/FileReader;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "patternReader":Ljava/io/FileReader;
    .restart local v2    # "patternReader":Ljava/io/FileReader;
    goto :goto_4

    .line 316
    .end local v2    # "patternReader":Ljava/io/FileReader;
    .restart local v3    # "patternReader":Ljava/io/FileReader;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "patternReader":Ljava/io/FileReader;
    .restart local v2    # "patternReader":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private getPatternMatcherFromResource(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    .locals 4
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 332
    const v0, 0x1110016

    .line 334
    .local v0, "id":I
    const-string v2, "23430"

    iget-object v3, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSimOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "23433"

    iget-object v3, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSimOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    :cond_0
    const v0, 0x1110017

    .line 336
    const-string v2, "SmsUsageMonitor"

    const-string v3, "load pattern from sms_short_codes_evr"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_1
    const/4 v1, 0x0

    .line 341
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 342
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 344
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    throw v2
.end method

.method private getPatternMatcherFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 351
    :try_start_0
    const-string v7, "shortcodes"

    invoke-static {p1, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 354
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 355
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, "element":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 357
    const-string v7, "SmsUsageMonitor"

    const-string v9, "Parsing pattern data found null"

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "element":Ljava/lang/String;
    :goto_1
    move-object v7, v8

    .line 381
    :goto_2
    return-object v7

    .line 361
    .restart local v2    # "element":Ljava/lang/String;
    :cond_1
    const-string v7, "shortcode"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 362
    const/4 v7, 0x0

    const-string v9, "country"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "currentCountry":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 365
    const/4 v7, 0x0

    const-string v9, "pattern"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 366
    .local v4, "pattern":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v9, "premium"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 367
    .local v5, "premium":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v9, "free"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, "free":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v9, "standard"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 369
    .local v6, "standard":Ljava/lang/String;
    new-instance v7, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    invoke-direct {v7, v4, v5, v3, v6}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 375
    .end local v0    # "currentCountry":Ljava/lang/String;
    .end local v2    # "element":Ljava/lang/String;
    .end local v3    # "free":Ljava/lang/String;
    .end local v4    # "pattern":Ljava/lang/String;
    .end local v5    # "premium":Ljava/lang/String;
    .end local v6    # "standard":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "SmsUsageMonitor"

    const-string v9, "XML parser exception reading short code patterns"

    invoke-static {v7, v9, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 372
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "element":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v7, "SmsUsageMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: skipping unknown XML tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 377
    .end local v2    # "element":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 378
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "SmsUsageMonitor"

    const-string v9, "I/O exception reading short code patterns"

    invoke-static {v7, v9, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private isUnderLimit(Ljava/util/ArrayList;I)Z
    .locals 10
    .param p2, "smsWaiting"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "sent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 713
    .local v2, "ct":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckPeriod:I

    int-to-long v8, v4

    sub-long v0, v6, v8

    .line 717
    .local v0, "beginCheckPeriod":J
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v6, v0

    if-gez v4, :cond_0

    .line 718
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 721
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, p2

    iget v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mMaxAllowed:I

    if-gt v4, v6, :cond_2

    .line 722
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p2, :cond_1

    .line 723
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 725
    :cond_1
    const/4 v4, 0x1

    .line 727
    .end local v3    # "i":I
    :goto_2
    return v4

    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method private loadPremiumSmsPolicyDb()V
    .locals 12

    .prologue
    .line 508
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "configNetworkTypeCapability":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v9

    .line 510
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    if-nez v8, :cond_0

    .line 511
    new-instance v1, Ljava/io/File;

    const-string v8, "/data/misc/sms"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    .local v1, "dir":Ljava/io/File;
    new-instance v8, Landroid/util/AtomicFile;

    new-instance v10, Ljava/io/File;

    const-string v11, "premium_sms_policy.xml"

    invoke-direct {v10, v1, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v8, v10}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v8, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    .line 514
    iget-object v8, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 516
    const/4 v4, 0x0

    .line 518
    .local v4, "infile":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    .line 519
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 520
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 522
    const-string v8, "premium-sms-policy"

    invoke-static {v6, v8}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 525
    :goto_0
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 527
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 528
    .local v3, "element":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 561
    if-eqz v4, :cond_0

    .line 563
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 569
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "element":Ljava/lang/String;
    .end local v4    # "infile":Ljava/io/FileInputStream;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :goto_1
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 570
    return-void

    .line 530
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v3    # "element":Ljava/lang/String;
    .restart local v4    # "infile":Ljava/io/FileInputStream;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :try_start_4
    const-string v8, "package"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 531
    const/4 v8, 0x0

    const-string v10, "name"

    invoke-interface {v6, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 532
    .local v5, "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    const-string v10, "sms-policy"

    invoke-interface {v6, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 533
    .local v7, "policy":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 534
    const-string v8, "SmsUsageMonitor"

    const-string v10, "Error: missing package name attribute"

    invoke-static {v8, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 552
    .end local v3    # "element":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "policy":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 561
    if-eqz v4, :cond_0

    .line 563
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 564
    :catch_1
    move-exception v8

    goto :goto_1

    .line 535
    .restart local v3    # "element":Ljava/lang/String;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "policy":Ljava/lang/String;
    :cond_2
    if-nez v7, :cond_3

    .line 536
    :try_start_6
    const-string v8, "SmsUsageMonitor"

    const-string v10, "Error: missing package policy attribute"

    invoke-static {v8, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 554
    .end local v3    # "element":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "policy":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 555
    .local v2, "e":Ljava/io/IOException;
    :try_start_7
    const-string v8, "SmsUsageMonitor"

    const-string v10, "Unable to read premium SMS policy database"

    invoke-static {v8, v10, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 561
    if-eqz v4, :cond_0

    .line 563
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 564
    :catch_3
    move-exception v8

    goto :goto_1

    .line 538
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "element":Ljava/lang/String;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "policy":Ljava/lang/String;
    :cond_3
    :try_start_9
    const-string v8, "com.isis.mclient.verizon.activity"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "VZW-CDMA"

    const-string v10, "EUR"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v0, :cond_5

    const-string v8, "VZW-"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 541
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 545
    :catch_4
    move-exception v2

    .line 546
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_a
    const-string v8, "SmsUsageMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: non-numeric policy type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 556
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "element":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "policy":Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 557
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    :try_start_b
    const-string v8, "SmsUsageMonitor"

    const-string v10, "Unable to parse premium SMS policy database"

    invoke-static {v8, v10, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 561
    if-eqz v4, :cond_0

    .line 563
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_1

    .line 564
    :catch_6
    move-exception v8

    goto/16 :goto_1

    .line 543
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "element":Ljava/lang/String;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "policy":Ljava/lang/String;
    :cond_5
    :try_start_d
    iget-object v8, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 558
    .end local v3    # "element":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "policy":Ljava/lang/String;
    :catch_7
    move-exception v2

    .line 559
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_e
    const-string v8, "SmsUsageMonitor"

    const-string v10, "Unable to parse premium SMS policy database"

    invoke-static {v8, v10, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 561
    if-eqz v4, :cond_0

    .line 563
    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_1

    .line 564
    :catch_8
    move-exception v8

    goto/16 :goto_1

    .line 549
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "element":Ljava/lang/String;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_6
    :try_start_10
    const-string v8, "SmsUsageMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: skipping unknown XML tag "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_0

    .line 561
    .end local v3    # "element":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v8

    if-eqz v4, :cond_7

    .line 563
    :try_start_11
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 565
    :cond_7
    :goto_2
    :try_start_12
    throw v8

    .line 569
    .end local v1    # "dir":Ljava/io/File;
    .end local v4    # "infile":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    throw v8

    .line 564
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v3    # "element":Ljava/lang/String;
    .restart local v4    # "infile":Ljava/io/FileInputStream;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_9
    move-exception v8

    goto/16 :goto_1

    .end local v3    # "element":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_a
    move-exception v10

    goto :goto_2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 731
    const-string v0, "SmsUsageMonitor"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return-void
.end method

.method public static mergeShortCodeCategories(II)I
    .locals 0
    .param p0, "type1"    # I
    .param p1, "type2"    # I

    .prologue
    .line 104
    if-le p0, p1, :cond_0

    .line 105
    .end local p0    # "type1":I
    :goto_0
    return p0

    .restart local p0    # "type1":I
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method private removeExpiredTimestamps()V
    .locals 10

    .prologue
    .line 697
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckPeriod:I

    int-to-long v8, v5

    sub-long v0, v6, v8

    .line 699
    .local v0, "beginCheckPeriod":J
    iget-object v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    monitor-enter v6

    .line 700
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 701
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 702
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 703
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 704
    .local v4, "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v8, v0

    if-gez v5, :cond_0

    .line 705
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 708
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;>;"
    .end local v4    # "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;>;"
    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    return-void
.end method

.method private writePremiumSmsPolicyDb()V
    .locals 9

    .prologue
    .line 577
    iget-object v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v6

    .line 578
    const/4 v3, 0x0

    .line 580
    .local v3, "outfile":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 582
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 583
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 585
    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 587
    const/4 v5, 0x0

    const-string v7, "premium-sms-policy"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 589
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 590
    .local v4, "policy":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    const-string v7, "package"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 591
    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v7, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 592
    const/4 v7, 0x0

    const-string v8, "sms-policy"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 593
    const/4 v5, 0x0

    const-string v7, "package"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 600
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "policy":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v5, "SmsUsageMonitor"

    const-string v7, "Unable to write premium SMS policy database"

    invoke-static {v5, v7, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    if-eqz v3, :cond_0

    .line 603
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 606
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 607
    return-void

    .line 596
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    const-string v7, "premium-sms-policy"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 597
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 599
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 606
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method


# virtual methods
.method public check(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "smsWaiting"    # I

    .prologue
    .line 400
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    monitor-enter v2

    .line 401
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->removeExpiredTimestamps()V

    .line 403
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 404
    .local v0, "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .restart local v0    # "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->isUnderLimit(Ljava/util/ArrayList;I)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 410
    .end local v0    # "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkDestination(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "destAddress"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 428
    iget-object v3, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSettingsObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

    monitor-enter v3

    .line 430
    :try_start_0
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 432
    monitor-exit v3

    .line 497
    :goto_0
    return v2

    .line 435
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_1

    .line 437
    monitor-exit v3

    goto :goto_0

    .line 500
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 440
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_SmsReadConfirm"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 448
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_SmsAllowEmailsmsAddress"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 450
    const-string v4, "6245"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 452
    monitor-exit v3

    goto :goto_0

    .line 442
    :cond_3
    const-string v4, "#431"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 444
    monitor-exit v3

    goto :goto_0

    .line 456
    :cond_4
    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "sales_code":Ljava/lang/String;
    if-eqz v1, :cond_5

    const-string v4, "BNG"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    const-string v4, "TML"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 458
    :cond_6
    const/4 v0, 0x0

    .line 459
    .local v0, "sMessageConfigImeiTracker":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Message_ConfigImeiTracker"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    if-eqz v0, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 461
    monitor-exit v3

    goto :goto_0

    .line 466
    .end local v0    # "sMessageConfigImeiTracker":Ljava/lang/String;
    :cond_7
    if-eqz p2, :cond_9

    .line 467
    iget-object v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentCountry:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentCountry:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_9

    .line 472
    :cond_8
    const-string v4, "SmsUsageMonitor"

    const-string v5, "Loading SMS Short Code patterns from resource only"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromResource(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    .line 483
    iput-object p2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentCountry:Ljava/lang/String;

    .line 487
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    if-eqz v4, :cond_a

    if-eqz p1, :cond_a

    .line 488
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->getNumberCategory(Ljava/lang/String;)I

    move-result v2

    monitor-exit v3

    goto/16 :goto_0

    .line 491
    :cond_a
    const-string v4, "SmsUsageMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No patterns for \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\": using generic short code rule"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-gt v4, v5, :cond_b

    .line 495
    const/4 v2, 0x3

    monitor-exit v3

    goto/16 :goto_0

    .line 497
    :cond_b
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method dispose()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 387
    return-void
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 621
    invoke-static {p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 622
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v2

    .line 623
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 624
    .local v0, "policy":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 625
    const/4 v1, 0x0

    monitor-exit v2

    .line 627
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 629
    .end local v0    # "policy":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I

    .prologue
    const/4 v3, 0x3

    .line 642
    invoke-static {}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkCallerIsSystemOrPhoneApp()V

    .line 643
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, "configNetworkTypeCapability":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    if-le p2, v3, :cond_1

    .line 646
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid SMS permission type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 648
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v2

    .line 649
    :try_start_0
    const-string v1, "com.isis.mclient.verizon.activity"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "VZW-CDMA"

    const-string v3, "EUR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    const-string v1, "VZW-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 652
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/internal/telephony/SmsUsageMonitor$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SmsUsageMonitor$1;-><init>(Lcom/android/internal/telephony/SmsUsageMonitor;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 664
    return-void

    .line 654
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 656
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setSimOperator(Ljava/lang/String;)V
    .locals 3
    .param p1, "simOperator"    # Ljava/lang/String;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSimOperator:Ljava/lang/String;

    .line 737
    const-string v0, "SmsUsageMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimOperator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSimOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    return-void
.end method
