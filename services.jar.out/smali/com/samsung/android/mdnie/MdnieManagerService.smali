.class public Lcom/samsung/android/mdnie/MdnieManagerService;
.super Lcom/samsung/android/mdnie/IMdnieManager$Stub;
.source "MdnieManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdnie/MdnieManagerService$1;,
        Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;,
        Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MdnieManagerService"


# instance fields
.field private final DEBUG:Z

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private final SYSFS_MDNIE_CONTENT_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_NEGATIVE:Ljava/lang/String;

.field private final SYSFS_MDNIE_OUTDOOR:Ljava/lang/String;

.field private final SYSFS_MDNIE_PLAYSPEED:Ljava/lang/String;

.field private final SYSFS_MDNIE_SCREEN_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_VISION_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_VISION_MODE_SUB:Ljava/lang/String;

.field private adaptiveDisplay:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

.field private mAutoModeEnabled:Z

.field private mBrowserScenarioEnabled:Z

.field private mColorBlindEnabled:Z

.field private mContentMode:I

.field private final mContext:Landroid/content/Context;

.field private mCurtainModeIsRunning:Z

.field private mDisplayOn:Z

.field private mEbookScenarioEnabled:Z

.field private mEmergencyModeDiabled:Z

.field private final mLock:Ljava/lang/Object;

.field private mMdnieCustomized:Z

.field private mMdnieWorkingCondition:Z

.field private mNegativeColorEnabled:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrevScreenModeForReadingMode:I

.field private mReadingModeEnabled:Z

.field private mReadingScreenMode:I

.field private mScreenCurtainEnabled:Z

.field private mScreenMode:I

.field private mScreenModeForReadingMode:I

.field private mScreenWatchingReceiver:Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;

.field private mSettingsObserver:Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;

.field private mUseAdaptiveDisplayColorServiceConfig:Z

.field private mVisionMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/mdnie/IMdnieManager$Stub;-><init>()V

    const-string v2, "eng"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->DEBUG:Z

    iput-object v6, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->adaptiveDisplay:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    const-string v2, "screen_mode_automatic_setting"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    const-string v2, "screen_mode_setting"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SYSFS_MDNIE_VISION_MODE:Ljava/lang/String;

    const-string v2, "/sys/class/mdnie_1/mdnie_1/accessibility"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SYSFS_MDNIE_VISION_MODE_SUB:Ljava/lang/String;

    const-string v2, "/sys/class/mdnie/mdnie/mode"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SYSFS_MDNIE_SCREEN_MODE:Ljava/lang/String;

    const-string v2, "/sys/class/mdnie/mdnie/scenario"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SYSFS_MDNIE_CONTENT_MODE:Ljava/lang/String;

    const-string v2, "/sys/class/mdnie/mdnie/negative"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SYSFS_MDNIE_NEGATIVE:Ljava/lang/String;

    const-string v2, "/sys/class/mdnie/mdnie/outdoor"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SYSFS_MDNIE_OUTDOOR:Ljava/lang/String;

    const-string v2, "/sys/class/mdnie/mdnie/playspeed"

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->SYSFS_MDNIE_PLAYSPEED:Ljava/lang/String;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mLock:Ljava/lang/Object;

    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieCustomized:Z

    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z

    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z

    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mEmergencyModeDiabled:Z

    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenCurtainEnabled:Z

    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mNegativeColorEnabled:Z

    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mColorBlindEnabled:Z

    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mAutoModeEnabled:Z

    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mReadingModeEnabled:Z

    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mEbookScenarioEnabled:Z

    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mBrowserScenarioEnabled:Z

    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    iput-object v6, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    iput-boolean v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mCurtainModeIsRunning:Z

    iput-object p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;

    invoke-direct {v2, p0}, Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;-><init>(Lcom/samsung/android/mdnie/MdnieManagerService;)V

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mSettingsObserver:Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;

    const/4 v2, 0x5

    iput v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mReadingScreenMode:I

    const-string v2, "screen_mode_setting"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mSettingsObserver:Lcom/samsung/android/mdnie/MdnieManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v4, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/mdnie/MdnieManagerService;Lcom/samsung/android/mdnie/MdnieManagerService$1;)V

    invoke-virtual {v2, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v2, "high_contrast"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    iput v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mVisionMode:I

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_mode_automatic_setting"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mAutoModeEnabled:Z

    iget-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mAutoModeEnabled:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    iput v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenMode:I

    :goto_2
    iput v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContentMode:I

    iput-boolean v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z

    iput-boolean v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mEmergencyModeDiabled:Z

    iput-boolean v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z

    iget v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenMode:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/mdnie/MdnieManagerService;->setScreenMode(I)Z

    iget v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContentMode:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/mdnie/MdnieManagerService;->setContentMode(I)Z

    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    iget-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    invoke-direct {v2, p1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->adaptiveDisplay:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    :cond_0
    return-void

    :cond_1
    const-string v2, "lcd_curtain"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mVisionMode:I

    goto :goto_0

    :cond_2
    const-string v2, "color_blind"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    const/4 v2, 0x3

    iput v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mVisionMode:I

    goto :goto_0

    :cond_3
    iput v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mVisionMode:I

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_mode_setting"

    invoke-static {v2, v5, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenMode:I

    goto :goto_2
.end method

.method static synthetic access$100(Lcom/samsung/android/mdnie/MdnieManagerService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/mdnie/MdnieManagerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;
    .param p1, "x1"    # Landroid/os/PowerManager;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/mdnie/MdnieManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/mdnie/MdnieManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/mdnie/MdnieManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z

    return p1
.end method

.method static synthetic access$402(Lcom/samsung/android/mdnie/MdnieManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/mdnie/MdnieManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mEmergencyModeDiabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/mdnie/MdnieManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    iget v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mPrevScreenModeForReadingMode:I

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/mdnie/MdnieManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mPrevScreenModeForReadingMode:I

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/mdnie/MdnieManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    iget v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenModeForReadingMode:I

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/android/mdnie/MdnieManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenModeForReadingMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/mdnie/MdnieManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;

    .prologue
    iget v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mReadingScreenMode:I

    return v0
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return v4

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private static sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return v4

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private static sysfsWrite_CB(Ljava/lang/String;I[I)Z
    .locals 9
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "result"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .local v3, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .local v2, "mParameter":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v6

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v5

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x6

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x7

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x8

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return v5

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v5, v6

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    move v5, v6

    goto :goto_0

    :catch_2
    move-exception v1

    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private static sysfsWrite_CB_HBM(Ljava/lang/String;I[I)Z
    .locals 9
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "result"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .local v3, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .local v2, "mParameter":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v6

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v5

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x6

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x7

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x8

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x9

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xb

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return v5

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v5, v6

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    move v5, v6

    goto :goto_0

    :catch_2
    move-exception v1

    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private static sysfsWrite_color_blind(Ljava/lang/String;I[I)Z
    .locals 9
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "result"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .local v3, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .local v2, "mParameter":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v6

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v5

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x6

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x7

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x8

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return v5

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v5, v6

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    move v5, v6

    goto :goto_0

    :catch_2
    move-exception v1

    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public getContentMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContentMode:I

    return v0
.end method

.method public getScreenMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenMode:I

    return v0
.end method

.method public setAmoledACL(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "/sys/class/lcd/panel/power_reduce"

    invoke-static {v0, p1}, Lcom/samsung/android/mdnie/MdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentMode(I)Z
    .locals 4
    .param p1, "mode"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .local v0, "pid":I
    iget-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v2, "/sys/class/mdnie/mdnie/scenario"

    invoke-static {v2, p1}, Lcom/samsung/android/mdnie/MdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iput p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContentMode:I

    const/4 v2, 0x1

    monitor-exit v3

    :goto_0
    return v2

    :cond_0
    monitor-exit v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setScreenMode(I)Z
    .locals 4
    .param p1, "mode"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .local v0, "pid":I
    iget-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v2, "/sys/class/mdnie/mdnie/mode"

    invoke-static {v2, p1}, Lcom/samsung/android/mdnie/MdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iput p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mScreenMode:I

    const/4 v2, 0x1

    monitor-exit v3

    :goto_0
    return v2

    :cond_0
    monitor-exit v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setmDNIeAccessibilityMode(IZ)Z
    .locals 6
    .param p1, "mode"    # I
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v5, "setmDNIeAccessibilityMode"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v3, "MdnieManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setmDNIeAccessibilityMode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mCurtainModeIsRunning:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .local v1, "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->getEmergencyState()I

    move-result v0

    .local v0, "emergencyState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    :cond_1
    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/samsung/android/mdnie/MdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    .end local v0    # "emergencyState":I
    .end local v1    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local p1    # "mode":I
    :cond_2
    :goto_0
    return v2

    .restart local v1    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    .restart local p1    # "mode":I
    :cond_3
    const/16 v3, 0xa

    if-eq p1, v3, :cond_5

    const-string v3, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p2, :cond_4

    .end local p1    # "mode":I
    :goto_1
    invoke-static {v3, p1}, Lcom/samsung/android/mdnie/MdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    goto :goto_0

    .restart local p1    # "mode":I
    :cond_4
    move p1, v2

    goto :goto_1

    :cond_5
    const-string v3, "/sys/class/backlight/panel/weakness_hbm_comp"

    if-eqz p2, :cond_6

    const/4 v2, 0x1

    :cond_6
    invoke-static {v3, v2}, Lcom/samsung/android/mdnie/MdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    goto :goto_0
.end method

.method public setmDNIeColorBlind(Z[I)Z
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "result"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v4, "setmDNIeColorBlind"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "MdnieManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setmDNIeColorBlind ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mCurtainModeIsRunning:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .local v0, "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "/sys/class/mdnie/mdnie/accessibility"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/samsung/android/mdnie/MdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    .end local v0    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_1
    :goto_0
    return v1

    .restart local v0    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_2
    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    :cond_3
    invoke-static {v2, v1, p2}, Lcom/samsung/android/mdnie/MdnieManagerService;->sysfsWrite_CB(Ljava/lang/String;I[I)Z

    move-result v1

    goto :goto_0
.end method

.method public setmDNIeEmergencyMode(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v3, "setmDNIeEmergencyMode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "MdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setmDNIeEmergencyMode ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    :goto_0
    invoke-static {v2, v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    .local v0, "result":Z
    return v0

    .end local v0    # "result":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setmDNIeNegative(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v4, "setmDNIeNegative"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "MdnieManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setmDNIeNegative ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mCurtainModeIsRunning:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .local v0, "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "/sys/class/mdnie/mdnie/accessibility"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/samsung/android/mdnie/MdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    .end local v0    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_1
    :goto_0
    return v1

    .restart local v0    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_2
    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v2, v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0
.end method

.method public setmDNIeScreenCurtain(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v3, "setmDNIeScreenCurtain"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "MdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setmDNIeScreenCurtain ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService;->mCurtainModeIsRunning:Z

    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    :goto_0
    invoke-static {v2, v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    .local v0, "result":Z
    return v0

    .end local v0    # "result":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
