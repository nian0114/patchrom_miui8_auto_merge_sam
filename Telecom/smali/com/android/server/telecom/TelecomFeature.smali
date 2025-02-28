.class public Lcom/android/server/telecom/TelecomFeature;
.super Ljava/lang/Object;
.source "TelecomFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/TelecomFeature$Floating;
    }
.end annotation


# static fields
.field private static IncomingBargin_command:I

.field private static final TAG:Ljava/lang/String;

.field private static build_description:Ljava/lang/String;

.field private static buildcarrier:Ljava/lang/String;

.field private static customerParser:Lcom/android/server/telecom/external/CscParser;

.field private static mContext:Landroid/content/Context;

.field private static mFeatureList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static salesCode:Ljava/lang/String;

.field private static scafe_version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-class v0, Lcom/android/server/telecom/TelecomFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/android/server/telecom/TelecomFeature;->mContext:Landroid/content/Context;

    sput-object v1, Lcom/android/server/telecom/TelecomFeature;->customerParser:Lcom/android/server/telecom/external/CscParser;

    sput-object v1, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v0, "ro.build.description"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->build_description:Ljava/lang/String;

    const-string v0, "ro.build.scafe.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->scafe_version:Ljava/lang/String;

    const/4 v0, 0x2

    sput v0, Lcom/android/server/telecom/TelecomFeature;->IncomingBargin_command:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasCSVTSupport(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_VT_ConfigBearer"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-CSVT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static hasFeature(Ljava/lang/String;)Z
    .locals 1

    .prologue
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static hasPackage(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasSystemFeature(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasSystemFeature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static hasVibratorFeature()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "ks01lte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return v1

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isA8Project()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "a8lte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "a8elte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isHeroProject()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "hero"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isKProject()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "klte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "k3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "kqlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "kccat6xx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "lentislte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isMassProject()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "j3xlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isMultiSimConfigDsdaEnabled()Z
    .locals 2

    .prologue
    const-string v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMultiSimConfigDsdsEnabled()Z
    .locals 2

    .prologue
    const-string v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static isNobleProject()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "noble"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNovel()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "novel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isPhilippeProject()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "philippe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isSupportSmartCall(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v0, "com.samsung.android.smartcallprovider"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const-string v3, "off"

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "off"

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isTProject()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "trlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "trhlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "trelte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "tblte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "tbelte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "tre3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "trhplte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "tr3calte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "tre3calte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isTablet()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v0

    return v0
.end method

.method public static isVoLTEAndMultiSIM()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "CHN"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHU"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CTC"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHM"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHC"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "enabled"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isMultiSimConfigDsdsEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isMultiSimConfigDsdaEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    return v2

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method public static isZeroProject()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "zero"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "zen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static makeFeature(Landroid/content/Context;)V
    .locals 3

    .prologue
    sput-object p0, Lcom/android/server/telecom/TelecomFeature;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->TAG:Ljava/lang/String;

    const-string v1, "makeFeature start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/external/CscParser;->getInstance()Lcom/android/server/telecom/external/CscParser;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->customerParser:Lcom/android/server/telecom/external/CscParser;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->customerParser:Lcom/android/server/telecom/external/CscParser;

    const-string v1, "GeneralInfo"

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/external/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->customerParser:Lcom/android/server/telecom/external/CscParser;

    const-string v2, "SalesCode"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/telecom/external/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->customerParser:Lcom/android/server/telecom/external/CscParser;

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/external/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->makePreconditionForFeature()V

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->makeFeatureForVT()V

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->makeFeatureForCommon()V

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->makeFeatureForTablet()V

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->makeFeatureForChina()V

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->makeFeatureForIndia()V

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->makeFeatureForHKTW()V

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->makeFeatureForJapan()V

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->makeFeatureForKor()V

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->makeFeatureForUsa()V

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->makeFeatureForCanada()V

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->makeFeatureForLatin()V

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->makeFeatureForAustralia()V

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->makeFeatureForAfrica()V

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->makeFeatureForMassProject()V

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->makeFeatureForPhoneSearch()V

    return-void
.end method

.method public static makeFeatureForAfrica()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-string v0, "ECT"

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "concept_afc_ect"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "volte_call_waiting_terminal"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static makeFeatureForAustralia()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "TEL"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v0, "OPS"

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    const-string v0, "TEL"

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TLP"

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BST"

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BSP"

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, "OPS"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OPP"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v0, "VAU"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VAP"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_2
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v0, "XSA"

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "JBH"

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_3
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_4
    return-void

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_2

    :cond_9
    move v0, v1

    goto :goto_3

    :cond_a
    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "telstra_ringback"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "volte_call_waiting_terminal"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "concept_aus_voda"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public static makeFeatureForCanada()V
    .locals 15

    .prologue
    const-string v0, "RWC"

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v0, "FMC"

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v0, "RWA"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v0, "BMC"

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, "kvoltevl"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "kltevl"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "kltevlactive"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jfltevl"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jfltevw"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hltevl"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "trltecan"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "zeroltebmc"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "zerofltebmc"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gt58ltebmc"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gts210ltevl"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "chagallltevl"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sltecan"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gprimeltevl"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tbltecan"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nobleltebmc"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "zenltebmc"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "heroltebmc"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hero2ltebmc"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "s5neoltevl"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "j1xltecan"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v0, "d2vw"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VTR"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v0, "jfltevw"

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "jfltewx"

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v7, "BMA"

    sget-object v8, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "VMC"

    sget-object v9, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "BWA"

    sget-object v10, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "TLS"

    sget-object v11, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, "KDO"

    sget-object v12, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v12, "ESK"

    sget-object v13, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string v13, "GLW"

    sget-object v14, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_8

    :goto_4
    return-void

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "tty_enable"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_can"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "save_cnap_info_in_call_log"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "canada_volte_ui"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_9
    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "us_sound_path"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_a
    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "volte_call_waiting_terminal"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "canada_bmc_volte_ui"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_b
    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "concept_can_common"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_d
    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "play_busy_tone_sup_busy"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "end_call_when_dial_e911"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_f
    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_12
    const/4 v0, 0x0

    goto :goto_7

    :cond_13
    const/4 v0, 0x0

    goto :goto_8

    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static makeFeatureForChina()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "CHN"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHU"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CTC"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHM"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHC"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v0, "CTC"

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v4, "ctc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, "CHM"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v0, "CHC"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ltetdzc"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    const-string v0, "CHU"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v0, "CHN"

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CHU"

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CHM"

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CHC"

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_4
    move v0, v2

    :goto_4
    if-nez v0, :cond_a

    :goto_5
    return-void

    :cond_5
    move v0, v1

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_a
    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_chn"

    invoke-virtual {v0, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "delete_prefix_cmcc"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_ctc"

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "auto_redial_time_delay"

    invoke-virtual {v0, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_spam_call"

    const-string v8, "menu_simplification"

    invoke-static {v8}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_spam_call_reject"

    const-string v8, "menu_simplification"

    invoke-static {v8}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_spam_call_mutefirstring"

    const-string v8, "menu_simplification"

    invoke-static {v8}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_smart_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ip_call"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_folder_hardkey"

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "philippe"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "royceltectc"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_b
    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "yellowpage_callerid_info"

    const-string v8, "SHOW"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Contact_ConfigForYellowPage"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ctc_call_time_duration"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "support_all_rat"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_c
    move v0, v2

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ctc_vip_mode"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "china_vip_mode"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_EnableVIPMode"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_multisim_preferred_sim"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "missed_noti_during_call"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasCSVTSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v2

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_multisim_modem_type_DCGS"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_multisim_modem_type_DCGGS"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ctc_cdma_smc_fac_req"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "support_all_rat"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_d
    move v0, v2

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "emergency_call_sprd_multisim"

    const-string v8, "trlteduoszn"

    sget-object v9, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_waiting_tone_by_network"

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "ims_voice_conference_cmcc"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_VoiceCall_EnableGroupCallMenu"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "ims_voice_conference"

    const-string v7, "ims_voice_conference_cmcc"

    invoke-static {v7}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "volte_call_waiting_terminal"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "call_details_for_hd_icon"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "concept_chn_common"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_psvt_only"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "enable_volte_hold_tone"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "ipcall_number_chm"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "ipcall_number_chu"

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "emergency_call_for_cmcc"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "block_call_during_lpm_dsds"

    const-string v0, "trlteduoszn"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "trlteduoszc"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_11
    move v0, v2

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "feature_chn_home_dsda_roaming_dsds"

    const-string v5, "trlteduosctc"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "trlteduoszm"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    move v1, v2

    :cond_13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "china_cdma_call"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "chn_cdma_network_on_all_rat"

    const-string v4, "support_all_rat"

    invoke-static {v4}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "change_network_mode_with_ctc_card_for_six_mode"

    const-string v4, "support_all_rat"

    invoke-static {v4}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "emergency_call_state_update_after_dial"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "emergency_volte_call"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "multi_number_cmcc"

    const-string v2, "CMCC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_ConfigMultiCallOption"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_15
    move v0, v1

    goto/16 :goto_6

    :cond_16
    move v0, v1

    goto/16 :goto_7

    :cond_17
    move v0, v1

    goto/16 :goto_8

    :cond_18
    move v0, v1

    goto/16 :goto_9

    :cond_19
    move v0, v1

    goto/16 :goto_a
.end method

.method public static makeFeatureForCommon()V
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "lte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    const-string v0, "BMC"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v0, "VMC"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v0, "ATL"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AVF"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CNX"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CYV"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MOB"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MTL"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OMN"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SIM"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SWC"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TCL"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VD2"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VDC"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VDF"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VDH"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VDI"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VGR"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VIP"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VOD"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XFV"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VDR"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VDP"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VOP"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SFR"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TOP"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    const-string v0, "SWC"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string v0, "jftddzh"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "jftddzn"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "kccat6xx"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "carmen2xx"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "jftddxx"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "carmen2zm"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_1
    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "enabled"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "enabled"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v0, 0x0

    :try_start_0
    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :try_start_1
    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeFeatureForCommon(): IMS.COMMON_VOLTE is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v6, "CscFeature_IMS_EnableLTEVideoCall"

    invoke-virtual {v0, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_21

    :cond_2
    move v0, v2

    :goto_0
    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isVoLTEAndMultiSIM()Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v2

    :cond_3
    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ims_callplus"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_IMS_SupportCallPlus"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ims_rcs"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    if-nez v4, :cond_22

    if-nez v5, :cond_22

    move v4, v2

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "common_volte"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "common_vt"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "telstra_ringback"

    const-string v0, "VOD"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "H3G"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_4
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "voice_call_recording_call_log"

    const-string v5, "RecordingAllowed"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_VoiceCall_ConfigRecording"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "volte_call_waiting_terminal"

    const-string v0, "SIN"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "volte_call_waiting_default_off"

    const-string v0, "AUT"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "OMN"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_5
    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "default_incomingcall_popup"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_voice_cmd_setting"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "menu_simplification"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "ringtone_mute_gap"

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->needMuteGap()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_safetycare"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_6
    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v4, "CscFeature_Common_ConfigNetworkModeDuringEmergency"

    invoke-virtual {v0, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_all_rat"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "enbale_voicerecording_popup_when_incoming"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_call_transfer"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "force_initial_audiostate"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "extra_ringer"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "extra_ringer_default_on"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "vt_audio_processing_on_ap"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "psvt_audio_processing_on_ap"

    const-string v0, "IMS_HYBRID_CMC"

    const-string v6, "IMS_HYBRID_QCT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "IMS_HYBRID_IMC"

    const-string v6, "IMS_HYBRID_QCT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_7
    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "disable_autoanswer_in_silent_and_earjackmode"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_DisableAutoAnswerInSilentNEarjactMode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "audio_vt_support_by_ap"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_mirror_link"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "a3ulte"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_easy_mode"

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isHeroProject()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isNobleProject()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isZeroProject()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isNovel()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isA8Project()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isPhilippeProject()Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "marinelte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "s5neolte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "j2lte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "j3xlte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "a9xprolte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "VZW"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    move v0, v2

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_easy_mode_enhanced"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_multisim"

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isMultiSimConfigDsdsEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isMultiSimConfigDsdaEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_8
    move v0, v2

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "feature_multisim_dsds"

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isMultiSimConfigDsdsEnabled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "feature_multisim_dsda"

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isMultiSimConfigDsdaEnabled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "feature_multisim_preferred_sim"

    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "qcom_cross_mapping"

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v6, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual {v0, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v2

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "flash_notification"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FLASH_NOTIFICATION"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_motion"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "disable_format_number"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "change_call_number_by_intent"

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isKProject()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isTProject()Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_9
    move v0, v2

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "personal_vibration"

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->hasVibratorFeature()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "use_action_memo_duringcall"

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isNobleProject()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "com.sec.feature.spen_usp"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_a
    move v0, v2

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_outgoing_call_popup_service"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_second_screen"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.cocktailbar"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "disable_call"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v6, "CscFeature_RIL_ConfigPsOnlyList"

    invoke-virtual {v0, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    move v0, v2

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "incoming_call_popup_osup"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "h_and_j_as_phone_os_up"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "ll_phone_os_up"

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isKProject()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isTProject()Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_b
    move v0, v2

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "ringtone_escalating"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "audio_global_effect"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "voip_interworking"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SIN"

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v0, "STH"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "sth_volte_ui"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    if-eqz v5, :cond_2f

    move v0, v2

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "XSP"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v0, "MM1"

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "mm1_volte_ui"

    const-string v9, "common_volte"

    invoke-static {v9}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_30

    if-eqz v0, :cond_30

    move v0, v2

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "THL"

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    sget-object v8, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "thl_volte_ui"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    if-eqz v7, :cond_31

    move v0, v2

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "EVR"

    sget-object v8, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v0, "TMU"

    sget-object v9, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    sget-object v10, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "evr_volte_ui"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    if-eqz v8, :cond_32

    move v0, v2

    :goto_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "tmu_volte_ui"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    if-eqz v9, :cond_33

    move v0, v2

    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vtcommon_hybrid"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v9, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "vtcommon_hybrid"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    if-eqz v8, :cond_34

    move v0, v2

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-string v0, "VD2"

    sget-object v8, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v8, "vtcommon_hybrid"

    invoke-static {v8}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    sget-object v8, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vtcommon_hybrid"

    const-string v10, "common_volte"

    invoke-static {v10}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_35

    if-eqz v0, :cond_35

    move v0, v2

    :goto_14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    const-string v0, "BMA"

    sget-object v8, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v8, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "bma_volte_ui"

    const-string v10, "common_volte"

    invoke-static {v10}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_36

    if-eqz v0, :cond_36

    move v0, v2

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez v4, :cond_10

    :cond_e
    const-string v0, "sth_volte_ui"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez v6, :cond_10

    :cond_f
    const-string v0, "mm1_volte_ui"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_10
    move v0, v2

    :goto_16
    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "singapore_volte_ui"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "presentation_convert_to_private_number"

    if-nez v0, :cond_11

    const-string v4, "OMN"

    sget-object v9, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    if-eqz v5, :cond_38

    :cond_11
    move v4, v2

    :goto_17
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "PHN"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "NEE"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    :cond_12
    move v4, v2

    :goto_18
    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ee_volte_ui"

    if-nez v4, :cond_13

    const-string v5, "DTM"

    sget-object v9, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "DTR"

    sget-object v9, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "DCZ"

    sget-object v9, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "TMZ"

    sget-object v9, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "VIA"

    sget-object v9, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "OMN"

    sget-object v9, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    :cond_13
    move v5, v2

    :goto_19
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "vtcommon_hybrid"

    invoke-static {v5}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "vtcommon_hybrid"

    const-string v8, "common_volte"

    invoke-static {v8}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3b

    if-eqz v4, :cond_3b

    move v4, v2

    :goto_1a
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const-string v4, "DTM"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "DTR"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "DCZ"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "TMZ"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "TPL"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "TNL"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    :cond_15
    move v4, v2

    :goto_1b
    if-nez v4, :cond_16

    if-eqz v7, :cond_3d

    :cond_16
    move v4, v2

    :goto_1c
    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "disable_hd_icon"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "BOG"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "SEB"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "SFR"

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "start_incallui_bind_bootup"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "keep_incallui_bind_service"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "pre_binding_incallui"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_memo_uuid_for_calllog"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_17

    const-string v0, "SWC"

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "TMB"

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "TMK"

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "RWC"

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "VIA"

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "VAU"

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "FMC"

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_17
    move v0, v2

    :goto_1d
    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "enable_volte_hold_tone"

    if-eqz v3, :cond_3f

    if-nez v0, :cond_3f

    move v0, v2

    :goto_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "people_stripe"

    const-string v8, "com.sec.feature.people_edge_notification"

    invoke-static {v8}, Lcom/android/server/telecom/TelecomFeature;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "enhanced_driving_mode"

    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-static {v8}, Lcom/android/server/telecom/TelecomFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_sview_cover_photo_id"

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isTProject()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "launch_recent_call"

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isZeroProject()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isNobleProject()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isHeroProject()Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "a9xprolte"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_18
    move v0, v2

    :goto_1f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "common_volte_voda"

    const-string v0, "ATL"

    sget-object v9, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "OMN"

    sget-object v9, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "VD2"

    sget-object v9, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "VOD"

    sget-object v9, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_19
    move v0, v2

    :goto_20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_folder_hardkey"

    const-string v8, "com.sec.feature.folder_type"

    invoke-static {v8}, Lcom/android/server/telecom/TelecomFeature;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_folder_dual_lcd"

    const-string v0, "com.sec.feature.folder_type"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "com.sec.feature.dual_lcd"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    move v0, v2

    :goto_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_folder_single_lcd"

    const-string v0, "com.sec.feature.folder_type"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "com.sec.feature.dual_lcd"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    move v0, v2

    :goto_22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_multisim_preferred_sim_old"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_SIM_MGR"

    invoke-virtual {v0, v9}, Lcom/samsung/android/feature/FloatingFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v2, :cond_1a

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "trlteduoszh"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "klteduosxx"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_1a
    move v0, v2

    :goto_23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "NEE"

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "XSG"

    sget-object v8, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    sget-object v8, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "common_volte_trial"

    const-string v10, "common_volte"

    invoke-static {v10}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_45

    if-nez v4, :cond_1b

    if-nez v0, :cond_1b

    if-nez v5, :cond_1b

    if-nez v6, :cond_1b

    if-eqz v7, :cond_45

    :cond_1b
    move v0, v2

    :goto_24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "jansky_info_for_tmo"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_IMS_SupportJansky"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "emergency_volte_call"

    const-string v5, "CPW"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v4, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    invoke-virtual {v0, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_smart_call"

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->isSupportSmartCall(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_galaxy_labs"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "disable_spam_message"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Message_DisableSpam"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "apply_audiosetting_by_motion"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "game_no_interruption"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_penwindow_callscreen"

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isTProject()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "enable_advanced_mobile_location"

    const-string v5, "O2U"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_penwindow_callscreen"

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isTProject()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isZeroProject()Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "a9xprolte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_1d
    move v0, v2

    :goto_25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "call_details_for_hd_icon"

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isKProject()Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isTProject()Z

    move-result v5

    if-eqz v5, :cond_20

    :cond_1e
    if-eqz v3, :cond_20

    const-string v3, "VIA"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v3, "XFV"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v3, "XSG"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v3, "AUT"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v3, "SWC"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_1f
    move v1, v2

    :cond_20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_21
    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    :goto_26
    move v3, v0

    move v0, v1

    goto/16 :goto_0

    :cond_22
    move v4, v1

    goto/16 :goto_1

    :cond_23
    move v0, v1

    goto/16 :goto_2

    :cond_24
    move v0, v1

    goto/16 :goto_3

    :cond_25
    move v0, v1

    goto/16 :goto_4

    :cond_26
    move v0, v1

    goto/16 :goto_5

    :cond_27
    move v0, v1

    goto/16 :goto_6

    :cond_28
    move v0, v1

    goto/16 :goto_7

    :cond_29
    move v0, v1

    goto/16 :goto_8

    :cond_2a
    move v0, v1

    goto/16 :goto_9

    :cond_2b
    move v0, v1

    goto/16 :goto_a

    :cond_2c
    move v0, v1

    goto/16 :goto_b

    :cond_2d
    move v0, v1

    goto/16 :goto_c

    :cond_2e
    move v0, v1

    goto/16 :goto_d

    :cond_2f
    move v0, v1

    goto/16 :goto_e

    :cond_30
    move v0, v1

    goto/16 :goto_f

    :cond_31
    move v0, v1

    goto/16 :goto_10

    :cond_32
    move v0, v1

    goto/16 :goto_11

    :cond_33
    move v0, v1

    goto/16 :goto_12

    :cond_34
    move v0, v1

    goto/16 :goto_13

    :cond_35
    move v0, v1

    goto/16 :goto_14

    :cond_36
    move v0, v1

    goto/16 :goto_15

    :cond_37
    move v0, v1

    goto/16 :goto_16

    :cond_38
    move v4, v1

    goto/16 :goto_17

    :cond_39
    move v4, v1

    goto/16 :goto_18

    :cond_3a
    move v5, v1

    goto/16 :goto_19

    :cond_3b
    move v4, v1

    goto/16 :goto_1a

    :cond_3c
    move v4, v1

    goto/16 :goto_1b

    :cond_3d
    move v4, v1

    goto/16 :goto_1c

    :cond_3e
    move v0, v1

    goto/16 :goto_1d

    :cond_3f
    move v0, v1

    goto/16 :goto_1e

    :cond_40
    move v0, v1

    goto/16 :goto_1f

    :cond_41
    move v0, v1

    goto/16 :goto_20

    :cond_42
    move v0, v1

    goto/16 :goto_21

    :cond_43
    move v0, v1

    goto/16 :goto_22

    :cond_44
    move v0, v1

    goto/16 :goto_23

    :cond_45
    move v0, v1

    goto/16 :goto_24

    :cond_46
    move v0, v1

    goto/16 :goto_25

    :catch_1
    move-exception v0

    move v0, v3

    goto :goto_26

    :cond_47
    move v0, v1

    move v3, v1

    goto/16 :goto_0
.end method

.method public static makeFeatureForHKTW()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "TGY"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BRI"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CWT"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TWN"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FET"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ZZH"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "TGY"

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ZZH"

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_3
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, "BRI"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CWT"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "TWN"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "FET"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_4
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_hktw"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "common_volte"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "common_volte_hktw"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "volte_call_waiting_terminal"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "enable_volte_hold_tone"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "common_volte_hk"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "emergency_volte_call"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v0, "vtcommon_hybrid"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vtcommon_hybrid"

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isZeroProject()Z

    move-result v4

    if-nez v4, :cond_7

    move v1, v2

    :cond_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "concept_hktw_common"

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isZeroProject()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "support_psvt_only"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "chn_cdma_network_on_all_rat"

    const-string v3, "support_all_rat"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "change_network_mode_with_ctc_card_for_six_mode"

    const-string v3, "support_all_rat"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "china_cdma_call"

    const-string v3, "support_all_rat"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "ctc_call_time_duration"

    const-string v3, "support_all_rat"

    invoke-static {v3}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "emergency_call_state_update_after_dial"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "no_alert_tone_signal"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_a
    move v0, v1

    goto/16 :goto_2

    :cond_b
    move v0, v1

    goto/16 :goto_3
.end method

.method public static makeFeatureForIndia()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "INU"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v2, "INS"

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "common_volte_in"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static makeFeatureForJapan()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "DCM"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v0, "KDI"

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, "SBM"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_dcm"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_sbm"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "play_busy_tone_sup_busy"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "prohibit_second_call_in_emergency_call"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "check_clir_prefix"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_callwait_tone_long_feature"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "change_request_audio_focus_function"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "no_alert_tone_signal"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_emergency_conflict"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "sbm_emergency_conflict"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "automatic_answering_machine"

    const-string v7, "TRUE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_VoiceCall_SupportAutoAnsweringMemo"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_sync_call"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_not_support_extra_callog_type"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_dialer_incoming_log_missed"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "skip_provisioning_check_on_encrypting"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_incoming_call_notification_message"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "international_dial_assist_dcm"

    const-string v7, "DCM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_AddPrefix4InternationalCall"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "international_dial_assist_kdi"

    const-string v7, "KDI"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_AddPrefix4InternationalCall"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_call_transfer"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "emergency_volte_call"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_call_transfer"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "wide_band_for_hd_icon"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "volte_call_waiting_terminal"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "ims_voice_conference_kddi"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_VoiceCall_EnableGroupCallMenu"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "ims_voice_conference"

    const-string v2, "ims_voice_conference_kddi"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "concept_jpn_dcm"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "handle_emergency_call_error"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "dcm_volte_popup_message"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "wide_band_for_hd_icon"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method public static makeFeatureForKor()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "SKT"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SKC"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SKO"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v0, "KTT"

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KTC"

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KTO"

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, "LGT"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LUC"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LUO"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v0, "ANY"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "KOO"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_4
    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_5
    return-void

    :cond_5
    move v0, v1

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_a
    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_kor"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_skt"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_ktt"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_lgt"

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_kor_open"

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_function_sound_tuning"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "use_second_waiting_call_tone"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "use_second_call_end_tone"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_b
    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "disable_waiting_tone"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "allow_local_dtmf_tones"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "separate_ringback_gain"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "mute_music_stream_during_call"

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isTablet()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "emergency_volte_call"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_tphone"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "com.skt.prod.phone"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_ollehphone"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_mobilecarrier"

    const-string v0, "support_tphone"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "support_ollehphone"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_c
    move v0, v2

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_twophone"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "try_to_regi_ims"

    const-string v8, "common_volte"

    invoke-static {v8}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "enable_volte_hold_tone"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "roaming_auto_dial"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_d
    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "novellte"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v2

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "w_zone_for_rad"

    const-string v0, "roaming_auto_dial"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v2

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "roaming_volte_kor"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isHeroProject()Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v2

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "concept_kor_common"

    const-string v8, "common_vt"

    invoke-static {v8}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "tc_initial_speaker_settings"

    const-string v8, "common_vt"

    invoke-static {v8}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "tc_support_emergency_number"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_call_message"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "video_conference"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_IMS_SupportVTConference"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "handle_not_registered"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v2

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_voice_conference"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_VoiceCall_EnableGroupCallMenu"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_support_multimedia_caller_id"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_VoiceCall_SupportMCID"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_uicc_mobility"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_call_transfer"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_17

    move v0, v2

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "hd_voice_network_prefer"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_EnableHDVoiceDuring3GConnection"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "international_call_service"

    const-string v8, "KOR"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_AddPrefix4InternationalCall"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "restrict_international_call"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "extended_restrict_international_call"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "emergency_find_lost_phone"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_emergency_report_helper_app"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_EnableOneTouchReport"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "default_incomingcall_popup"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "default_incomingcall_popup"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v2

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "wide_band_for_hd_icon"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_e
    move v0, v2

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_logs_kor"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "show_add_call_menu_for_3rd_call"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_nsri_secure"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_fade_effect_on_international_call_tts"

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isZeroProject()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "save_cnap_info_in_call_log"

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "cnap_supplementary_service"

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "cdnip_supplementary_service"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "disable_add_call"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v2

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "single_lte"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_f

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "kactiveltekx"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    :cond_f
    :goto_11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "volte_call_waiting_terminal"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_10
    move v0, v1

    goto/16 :goto_6

    :cond_11
    move v0, v1

    goto/16 :goto_7

    :cond_12
    move v0, v1

    goto/16 :goto_8

    :cond_13
    move v0, v1

    goto/16 :goto_9

    :cond_14
    move v0, v1

    goto/16 :goto_a

    :cond_15
    move v0, v1

    goto/16 :goto_b

    :cond_16
    move v0, v1

    goto/16 :goto_c

    :cond_17
    move v0, v1

    goto/16 :goto_d

    :cond_18
    move v0, v1

    goto/16 :goto_e

    :cond_19
    move v0, v1

    goto/16 :goto_f

    :cond_1a
    move v0, v1

    goto :goto_10

    :cond_1b
    move v2, v1

    goto :goto_11
.end method

.method public static makeFeatureForLatin()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "BR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "MX"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "AR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "UY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "VE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "GT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SV"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "HN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "NI"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "EC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "JM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "TT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CU"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "M4"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "ltn_auto_csp"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v5, "CscFeature_VoiceCall_EnablePrefix4LongDistanceCallAs"

    invoke-virtual {v0, v5}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ltn_sdnname_display"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_VoiceCall_EnableDisplaySdnNameDuringCall"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "volte_call_waiting_terminal"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    if-le v0, v2, :cond_3

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_multisim_carrier_match"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_EnableCarrierMatchingForMultiSimDev"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_mirror_link"

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "a5lteub"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "E10"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_3
.end method

.method public static makeFeatureForMassProject()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isMassProject()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "support_easy_mode"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "support_sview_cover_photo_id"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "vt_audio_processing_on_ap"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "psvt_audio_processing_on_ap"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "dcm_incoming_call_notification_message"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "ims_callplus"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "ims_support_multimedia_caller_id"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static makeFeatureForPhoneSearch()V
    .locals 0

    .prologue
    return-void
.end method

.method public static makeFeatureForTablet()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "tablet_device"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "no_earpiece_in_tablet"

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "gt510lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "chagalllte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "gt5note10lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "gts210lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "tablet_l_osup_vt"

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "chagall"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "klimt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "matisse"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "vienna"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "v1a3g"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "millet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "degas"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt03"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "rubens"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "support_multi_user"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "support_contacts_osup"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "no_proximity_sensor"

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "millet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto/16 :goto_1

    :cond_4
    move v2, v1

    goto :goto_2
.end method

.method public static makeFeatureForUsa()V
    .locals 22

    .prologue
    const-string v2, "XAS"

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPR"

    sget-object v4, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v2, "VZW"

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v2, "VMU"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v6, "BST"

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_1
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_2
    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v2, "d2spr"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "d2vmu"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "t0ltespr"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "jfltespr"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "jflterefreshspr"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "hltespr"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "kltespr"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "kltesprsports"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "trltespr"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "tbltespr"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "zeroltespr"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "zerofltespr"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "zenltespr"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "nobleltespr"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_3
    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    const-string v2, "USC"

    sget-object v6, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v2, "MTR"

    sget-object v7, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v2, "ACG"

    sget-object v8, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v2, "XAR"

    sget-object v9, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v2, "CRI"

    sget-object v10, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v2, "TFN"

    sget-object v11, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v2, "CSP"

    sget-object v12, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string v2, "LRA"

    sget-object v13, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_4
    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_5
    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_6
    const/4 v2, 0x1

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    const-string v2, "ATT"

    sget-object v15, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "AIO"

    sget-object v15, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_7
    const/4 v2, 0x1

    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const-string v2, "TMB"

    sget-object v16, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "TMK"

    sget-object v16, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_8
    const/4 v2, 0x1

    :goto_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_9
    const/4 v2, 0x1

    :goto_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_a
    const/4 v2, 0x1

    :goto_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_b
    const/4 v2, 0x1

    :goto_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v19, "trlte"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v19, "tblte"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v19, "klte"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v19, "t0lte"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v19, "jflte"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v19, "hlte"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "jactivelteuc"

    sget-object v19, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v19, "d2"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_c
    const/4 v2, 0x1

    :goto_c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v19, 0x112005c

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1a

    :goto_d
    return-void

    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_19
    const/4 v2, 0x0

    goto :goto_c

    :cond_1a
    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "play_busy_tone_sup_busy"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "multiend_point"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "feature_usa"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "tty_enable"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "allow_local_dtmf_tones"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "enable_volte_hold_tone"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v19, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "ecid_enable"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1b
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "jflteuc"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "hlteuc"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "coreprimeltevzw"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "klteuc"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "slteuc"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "klteattactive"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "kltevzw"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "mega2lteuc"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "tblteuc"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "trlteuc"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "tbltevzw"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "trltevzw"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "noblelteuc"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "tbltetmo"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "zerolteuc"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "zeroflteuc"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "jactivelteuc"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "marinelteuc"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "trltetmo"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v21, "kminilte"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "zenlteuc"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "zerofltevzw"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "zeroltevzw"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "nobleltevzw"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "zenltevzw"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "heroqltevzw"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "hero2qltevzw"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    :cond_1c
    const/4 v2, 0x1

    :goto_e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v19, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "ecid_data_from_calllog"

    const-string v2, "ATT"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v21, "CscFeature_Contact_EnableEcid_CallLogDB"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_1d
    const/4 v2, 0x1

    :goto_f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "feature_cdma_us"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "usa_cdma_concept"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v19, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "usa_cdma_smc_fac_req"

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "kltevl"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    :cond_1e
    const/4 v2, 0x1

    :goto_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v19, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "save_cnap_info_in_call_log"

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "kltevl"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    :cond_1f
    const/4 v2, 0x1

    :goto_11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "tmo_echolocate_logger"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_Common_SupportEchoLocate"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v19, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "global_network_cdma_gsm_enable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "zerofltelra"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "zeroltelra"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "kltesprsports"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "klteacg"

    sget-object v21, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    :cond_20
    const/4 v2, 0x1

    :goto_12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v19, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "global_network_cdma_gsm_enable_for_spr"

    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v2, 0x1

    :goto_13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v19, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "auto_retry_enable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_21
    const/4 v2, 0x1

    :goto_14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v19, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "emergency_call_tone_always"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_39

    :cond_22
    const/4 v2, 0x1

    :goto_15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v19, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "emergency_call_tone_volume"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3a

    :cond_23
    const/4 v2, 0x1

    :goto_16
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v19, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "emergency_call_tone"

    const-string v2, "emergency_call_tone_always"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "emergency_call_tone_volume"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    :cond_24
    const/4 v2, 0x1

    :goto_17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v19, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "emergency_calllog_disable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3c

    :cond_25
    const/4 v2, 0x1

    :goto_18
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "otasp_calllog_disable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3d

    :cond_26
    const/4 v2, 0x1

    :goto_19
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "activate_your_phone"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3e

    :cond_27
    const/4 v2, 0x1

    :goto_1a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v10, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_waiting_tone_by_network"

    invoke-virtual {v2, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "allow_local_dtmf_tones_always"

    move-object/from16 v0, v17

    invoke-virtual {v2, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "support_call_transfer"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3f

    const/4 v2, 0x1

    :goto_1b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v8, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "tty_to_default_wired_headset_plugged_out"

    move-object/from16 v0, v17

    invoke-virtual {v2, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_add_call_mute_hold_during_emergency_call"

    move-object/from16 v0, v18

    invoke-virtual {v2, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_att"

    invoke-virtual {v2, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "emergency_calls_only_enable"

    invoke-virtual {v2, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "roaming_enhancement"

    invoke-virtual {v2, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "hdvoice_call_status"

    invoke-virtual {v2, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "thrway_active_disable"

    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "us_cdma_call_fowarding"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "assisted_dialing_enable"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_vzw"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "auto_reject_notification"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "show_internet_alert_popup_during_call"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_40

    :cond_28
    const/4 v2, 0x1

    :goto_1c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_tmo"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "wide_band_for_hd_icon"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_41

    :cond_29
    const/4 v2, 0x1

    :goto_1d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "cs_e911"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_42

    :cond_2a
    const/4 v2, 0x1

    :goto_1e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "prohibit_second_call_in_emergency_call"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vzw_volte_ui"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "att_volte_ui"

    invoke-virtual {v2, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "tmo_volte_ui"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_43

    :cond_2b
    const/4 v2, 0x1

    :goto_1f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "mpcs_volte_ui"

    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "us_volte_ui"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_44

    :cond_2c
    const/4 v2, 0x1

    :goto_20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "volte_call_waiting_terminal"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "wireless_priority_service_call"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vzw_sound_path"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "us_sound_path"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_45

    :cond_2d
    const/4 v2, 0x1

    :goto_21
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_voice_conference_vzw"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v8, "CscFeature_VoiceCall_EnableGroupCallMenu"

    invoke-virtual {v4, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_voice_conference"

    const-string v4, "ims_voice_conference_vzw"

    invoke-static {v4}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "emergency_volte_call"

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "call_details_for_hd_icon"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    const-string v2, "common_vt"

    invoke-static {v2}, Lcom/android/server/telecom/TelecomFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "concept_usa_att"

    invoke-virtual {v2, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "concept_usa_tmo"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "concept_usa_mpcs"

    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "concept_usa_vzw"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_rcs"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "end_call_when_dial_e911"

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_30

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_46

    :cond_30
    const/4 v2, 0x1

    :goto_22
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_hd_icon"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_wfc_vzw"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isHeroProject()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isZeroProject()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isNobleProject()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isKProject()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-static {}, Lcom/android/server/telecom/TelecomFeature;->isTProject()Z

    move-result v2

    if-eqz v2, :cond_47

    :cond_31
    const/4 v2, 0x1

    :goto_23
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "north_usa_ringback"

    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_softphone"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "game_no_interruption"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_48

    const/4 v2, 0x1

    :goto_24
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_32
    const/4 v2, 0x0

    goto/16 :goto_e

    :cond_33
    const/4 v2, 0x0

    goto/16 :goto_f

    :cond_34
    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_35
    const/4 v2, 0x0

    goto/16 :goto_11

    :cond_36
    const/4 v2, 0x0

    goto/16 :goto_12

    :cond_37
    const/4 v2, 0x0

    goto/16 :goto_13

    :cond_38
    const/4 v2, 0x0

    goto/16 :goto_14

    :cond_39
    const/4 v2, 0x0

    goto/16 :goto_15

    :cond_3a
    const/4 v2, 0x0

    goto/16 :goto_16

    :cond_3b
    const/4 v2, 0x0

    goto/16 :goto_17

    :cond_3c
    const/4 v2, 0x0

    goto/16 :goto_18

    :cond_3d
    const/4 v2, 0x0

    goto/16 :goto_19

    :cond_3e
    const/4 v2, 0x0

    goto/16 :goto_1a

    :cond_3f
    const/4 v2, 0x0

    goto/16 :goto_1b

    :cond_40
    const/4 v2, 0x0

    goto/16 :goto_1c

    :cond_41
    const/4 v2, 0x0

    goto/16 :goto_1d

    :cond_42
    const/4 v2, 0x0

    goto/16 :goto_1e

    :cond_43
    const/4 v2, 0x0

    goto/16 :goto_1f

    :cond_44
    const/4 v2, 0x0

    goto/16 :goto_20

    :cond_45
    const/4 v2, 0x0

    goto/16 :goto_21

    :cond_46
    const/4 v2, 0x0

    goto/16 :goto_22

    :cond_47
    const/4 v2, 0x0

    goto :goto_23

    :cond_48
    const/4 v2, 0x0

    goto :goto_24
.end method

.method public static makeFeatureForVT()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/TelecomFeature;->hasCSVTSupport(Landroid/content/Context;)Z

    move-result v4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_IMS_EnableLTEVideoCall"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "psvt_supprt"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "csvt_supprt"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "vicommon_enabled"

    if-nez v0, :cond_1

    if-eqz v4, :cond_4

    :cond_1
    move v3, v2

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "vtcommon_hybrid"

    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/server/telecom/TelecomFeature;->TAG:Ljava/lang/String;

    const-string v5, "makeFeatureForVT RuntimeException"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v1

    invoke-static {v3, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2
.end method

.method public static makePreconditionForFeature()V
    .locals 3

    .prologue
    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->build_description:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCM"

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KDI"

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SBM"

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "SC-04G"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "zeroltedcm"

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "SC-05G"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "zerofltedcm"

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "SCV31_jp_kdi"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "zeroltekdi"

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "404SC"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "zeroltesbm"

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v1, "SC-04F"

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "kltedcm"

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v1, "SC-02G"

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "kltedcmactive"

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string v1, "SCL23"

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "kltekdi"

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string v1, "SC-01G"

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "tbltedcm"

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_9
    const-string v1, "SCL24"

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "tbltekdi"

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_a
    const-string v1, "SC-03G"

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "klimtltedcm"

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string v1, "SCT21"

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "chagallltekdi"

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "SC-01F"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "hltedcm"

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "SCL22"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v0, "hltekdi"

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "SC-02F"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v0, "js01ltedcm"

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "SC-04E"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v0, "jfltedcm"

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "SC-01H"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v1, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "SGH-N533"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    const-string v0, "xcover3ltedcm"

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_12
    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static needMuteGap()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "klte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "k3g"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "kqlte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "kccat6xx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "lentislte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "kminilte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/server/telecom/TelecomFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "kmini3g"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public static putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/telecom/TelecomFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
