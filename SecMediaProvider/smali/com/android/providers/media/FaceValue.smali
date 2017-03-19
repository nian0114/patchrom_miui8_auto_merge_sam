.class public Lcom/android/providers/media/FaceValue;
.super Ljava/lang/Object;
.source "FaceValue.java"


# static fields
.field private static final DCM_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.dcm"

.field public static final DEFAULT_SLEEP_TIME:I = 0x320

.field public static final FINISHED_TYPE_NORMAL:I = 0x3

.field public static final FINISHED_TYPE_REMOVE_MMC:I = 0x2

.field public static final FINISHED_TYPE_RESTORE_MMC:I = 0x1

.field public static final MAX_THREAD_NONE:I

.field private static final TAG:Ljava/lang/String;

.field private static mIsInited:Z

.field private static mMaxThreadNum:I

.field public static final mProductName:Ljava/lang/String;

.field private static mSleepTime:I

.field private static mUseDCM:Z

.field private static mUseOpenMP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    const-class v0, Lcom/android/providers/media/FaceValue;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/FaceValue;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/providers/media/FaceValue;->mUseOpenMP:Z

    .line 40
    sput-boolean v1, Lcom/android/providers/media/FaceValue;->mIsInited:Z

    .line 41
    sput-boolean v1, Lcom/android/providers/media/FaceValue;->mUseDCM:Z

    .line 43
    const/16 v0, 0x320

    sput v0, Lcom/android/providers/media/FaceValue;->mSleepTime:I

    .line 44
    sput v1, Lcom/android/providers/media/FaceValue;->mMaxThreadNum:I

    .line 47
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/FaceValue;->mProductName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsUseDCM()Z
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/android/providers/media/FaceValue;->mUseDCM:Z

    return v0
.end method

.method public static IsUseOpenMP()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/android/providers/media/FaceValue;->mUseOpenMP:Z

    return v0
.end method

.method private static checkDCM(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "available":Z
    const/4 v2, 0x0

    .line 65
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.dcm"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 66
    if-eqz v2, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 73
    :cond_0
    :goto_0
    sput-boolean v0, Lcom/android/providers/media/FaceValue;->mUseDCM:Z

    .line 74
    return-void

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/providers/media/FaceValue;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.samsung.dcm is not exist. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static checkOpenMP()V
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/providers/media/FaceValue;->mUseOpenMP:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/android/providers/media/FaceValue;->checkValueForOpenMP()V

    .line 86
    :cond_0
    return-void
.end method

.method private static checkValueForOpenMP()V
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x2

    sput v0, Lcom/android/providers/media/FaceValue;->mMaxThreadNum:I

    .line 90
    sget-object v0, Lcom/android/providers/media/FaceValue;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSleepTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/providers/media/FaceValue;->mSleepTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v0, Lcom/android/providers/media/FaceValue;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxThreadNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/providers/media/FaceValue;->mMaxThreadNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public static getMaxThreadNum()I
    .locals 1

    .prologue
    .line 103
    sget v0, Lcom/android/providers/media/FaceValue;->mMaxThreadNum:I

    return v0
.end method

.method public static getSleepTime()I
    .locals 1

    .prologue
    .line 99
    sget v0, Lcom/android/providers/media/FaceValue;->mSleepTime:I

    return v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-class v1, Lcom/android/providers/media/FaceValue;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/providers/media/FaceValue;->mIsInited:Z

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/providers/media/FaceValue;->mIsInited:Z

    .line 57
    invoke-static {}, Lcom/android/providers/media/FaceValue;->checkOpenMP()V

    .line 58
    invoke-static {p0}, Lcom/android/providers/media/FaceValue;->checkDCM(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit v1

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isEmergencyMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 112
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v1

    return v1
.end method
