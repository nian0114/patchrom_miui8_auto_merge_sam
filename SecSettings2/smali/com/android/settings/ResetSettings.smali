.class public Lcom/android/settings_ex/ResetSettings;
.super Landroid/app/Fragment;
.source "ResetSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ResetSettings$ResetSettingsTask;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private databaseReset:Z

.field private handler:Landroid/os/Handler;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResetSoftButton:Landroid/widget/Button;

.field private final mResetSoftListener:Landroid/view/View$OnClickListener;

.field progressDialog:Landroid/app/ProgressDialog;

.field private resetReceiver:Landroid/content/BroadcastReceiver;

.field private resetSettingsCompleted:Z

.field resetTask:Lcom/android/settings_ex/ResetSettings$ResetSettingsTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings_ex/ResetSettings;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ResetSettings;->mResetSoftButton:Landroid/widget/Button;

    .line 99
    iput-boolean v1, p0, Lcom/android/settings_ex/ResetSettings;->databaseReset:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/settings_ex/ResetSettings;->resetSettingsCompleted:Z

    .line 183
    new-instance v0, Lcom/android/settings_ex/ResetSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ResetSettings$2;-><init>(Lcom/android/settings_ex/ResetSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/ResetSettings;->handler:Landroid/os/Handler;

    .line 221
    new-instance v0, Lcom/android/settings_ex/ResetSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ResetSettings$3;-><init>(Lcom/android/settings_ex/ResetSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/ResetSettings;->mResetSoftListener:Landroid/view/View$OnClickListener;

    .line 886
    return-void
.end method

.method private StartPassword()V
    .locals 4

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, "phone_password":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 831
    const v1, 0x7f0e1352

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ResetSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e1354

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ResetSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/settings_ex/ResetSettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 834
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ResetSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ResetSettings;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/settings_ex/ResetSettings;->databaseReset:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/ResetSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ResetSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/settings_ex/ResetSettings;->databaseReset:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ResetSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ResetSettings;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ResetSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ResetSettings;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings_ex/ResetSettings;->requestSoftReset()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/ResetSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ResetSettings;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings_ex/ResetSettings;->resetCompleted()V

    return-void
.end method

.method private doSoftReset()V
    .locals 3

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->resetGlobalSettings()V

    .line 867
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SETTINGS_SOFT_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.settings.permission.SOFT_RESET"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.settings.permission.SOFT_RESET"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 869
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    .line 870
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e12d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 871
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 872
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 873
    return-void
.end method

.method private establishResetState()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0d0469

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/ResetSettings;->mResetSoftButton:Landroid/widget/Button;

    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->mResetSoftButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/ResetSettings;->mResetSoftListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/ResetSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 219
    return-void
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    .prologue
    .line 428
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 431
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 434
    :goto_0
    return-object v2

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ResetSettings"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method private loadDefRingtone()V
    .locals 9

    .prologue
    const/16 v8, 0x100

    const/16 v7, 0x80

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 522
    const-string v2, "ResetSettings"

    const-string v3, "Sound settings update"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ResetSettings;->getUriOfDefaultTone(I)Landroid/net/Uri;

    move-result-object v1

    .line 525
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 526
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/ResetSettings;->getUriOfDefaultTone(I)Landroid/net/Uri;

    move-result-object v1

    .line 527
    iget-object v2, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 528
    const-string v2, "ro.multisim.simslotcount"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 529
    .local v0, "simslotcount":I
    if-ne v0, v5, :cond_0

    .line 530
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/ResetSettings;->getUriOfDefaultTone(I)Landroid/net/Uri;

    move-result-object v1

    .line 531
    iget-object v2, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v7, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 532
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/ResetSettings;->getUriOfDefaultTone(I)Landroid/net/Uri;

    move-result-object v1

    .line 533
    iget-object v2, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v8, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 535
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/ResetSettings;->getUriOfDefaultTone(I)Landroid/net/Uri;

    move-result-object v1

    .line 536
    iget-object v2, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 537
    return-void
.end method

.method private requestSoftReset()V
    .locals 3

    .prologue
    .line 846
    const/16 v1, 0x37

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ResetSettings;->runKeyguardConfirmation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 863
    :goto_0
    return-void

    .line 850
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 851
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, "phone_password":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/ResetSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings_ex/ResetSettings;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 856
    invoke-direct {p0}, Lcom/android/settings_ex/ResetSettings;->StartPassword()V

    goto :goto_0

    .line 858
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/ResetSettings;->doSoftReset()V

    goto :goto_0

    .line 861
    .end local v0    # "phone_password":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/ResetSettings;->doSoftReset()V

    goto :goto_0
.end method

.method private resetAccessibilitySettings()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 540
    const-string v8, "ResetSettings"

    const-string v9, "resetAccessibilitySettings - start "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v8, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 543
    .local v1, "cr":Landroid/content/ContentResolver;
    iget-object v8, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 546
    .local v5, "mAudioManager":Landroid/media/AudioManager;
    const-string v8, "enabled_accessibility_services"

    const-string v9, ""

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 547
    const-string v8, "accessibility_enabled"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 550
    const-string v8, "lcd_curtain"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 553
    const-string v8, "high_text_contrast_enabled"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 556
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    .line 557
    .local v7, "sales_code":Ljava/lang/String;
    const-string v8, "SPR"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "VMU"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "BST"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "XAS"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 558
    :cond_0
    const-string v8, "rapid_key_input"

    invoke-static {v1, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 559
    const-string v8, "rapid_key_input_menu_checked"

    invoke-static {v1, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 566
    :goto_0
    const-string v8, "speak_password"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 569
    const-string v8, "accessiblity_font_switch"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 572
    const-string v8, "show_button_background"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 575
    const-string v8, "finger_magnifier"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 576
    const-string v8, "hover_zoom_value"

    invoke-static {v1, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 577
    const-string v8, "hover_zoom_magnifier_size"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 578
    iget-object v8, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    const-string v9, "magnifier_pref"

    invoke-virtual {v8, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 579
    .local v6, "mSharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 582
    const-string v8, "accessibility_display_magnification_enabled"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 585
    const-string v8, "greyscale_mode"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 588
    const-string v8, "high_contrast"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 591
    const-string v8, "color_blind"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 592
    const-string v8, "color_blind_test"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 595
    const-string v8, "enable_accessibility_global_gesture_enabled"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 598
    const-string v8, "flash_notification"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 601
    const-string v8, "all_sound_off"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 605
    const-string v8, "hearing_aid"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 606
    const-string v8, "call_hearing_aid"

    const-string v9, "OFF"

    invoke-virtual {v5, v8, v9}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    sget-object v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 611
    .local v2, "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    const-string v8, "accessibility_captioning_enabled"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 612
    const-string v8, "accessibility_captioning_foreground_color"

    iget v9, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 613
    const-string v8, "accessibility_captioning_background_color"

    iget v9, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 614
    const-string v8, "accessibility_captioning_edge_type"

    iget v9, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 615
    const-string v8, "accessibility_captioning_edge_color"

    iget v9, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 616
    const-string v8, "accessibility_captioning_window_color"

    iget v9, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 617
    const-string v8, "accessibility_captioning_preset"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 618
    const-string v8, "accessibility_captioning_preset"

    iget-object v9, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 619
    const-string v8, "accessibility_captioning_font_scale"

    invoke-static {v1, v8, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 620
    const-string v8, "accessibility_captioning_locale"

    const-string v9, ""

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 623
    const-string v8, "HACSetting=OFF"

    invoke-virtual {v5, v8}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 626
    const-string v8, "sound_balance"

    const/16 v9, 0x32

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 629
    iget-object v8, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "mono_audio_db"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 632
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "com.samsung.android.app.assistantmenu"

    invoke-static {v8, v9}, Lcom/android/settings_ex/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 633
    iget-object v8, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "assistant_menu"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 635
    iget-object v8, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "assistant_menu_dominant_hand_type"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 637
    iget-object v8, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "assistant_menu_eam_enable"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 638
    iget-object v8, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "assistant_menu_pointer_speed"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 639
    iget-object v8, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "assistant_menu_pointer_size"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 640
    iget-object v8, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "assistant_menu_pad_size"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 642
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 643
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "com.samsung.android.app.shareaccessibilitysettings.SHARING_COMPLETE"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 646
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.samsung.action.ASSISTANTMENU_SETTINGS_RESET"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 647
    .local v4, "mAssistantEditMenuReset":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 649
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 650
    .local v0, "assistantMenu":Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.samsung.android.app.assistantmenu"

    const-string v10, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 652
    iget-object v8, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 656
    .end local v0    # "assistantMenu":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "mAssistantEditMenuReset":Landroid/content/Intent;
    :cond_1
    const-string v8, "air_motion_wake_up"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 659
    const-string v8, "long_press_timeout"

    const/16 v9, 0x1f4

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 662
    const-string v8, "access_control_use"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 663
    const-string v8, "access_control_enabled"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 664
    const-string v8, "access_control_time_set_hour"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 665
    const-string v8, "access_control_time_set_min"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 666
    const-string v8, "access_control_power_button"

    invoke-static {v1, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 667
    const-string v8, "access_control_volume_button"

    invoke-static {v1, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 668
    const-string v8, "access_control_keyboard_block"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 671
    const-string v8, "direct_access"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 672
    const-string v8, "direct_accessibility"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 673
    const-string v8, "direct_talkback"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 674
    const-string v8, "direct_negative"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 675
    const-string v8, "direct_color_adjustment"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 676
    const-string v8, "direct_access_control"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 677
    const-string v8, "direct_s_talkback"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 678
    const-string v8, "direct_universal_switch"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 679
    const-string v8, "direct_samsung_screen_reader"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 680
    const-string v8, "direct_access_magnifier"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 681
    const-string v8, "direct_greyscale"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 684
    const-string v8, "notification_reminder"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 685
    const-string v8, "notification_reminder_selectable"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 686
    const-string v8, "time_key"

    const/16 v9, 0x3c

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 687
    const-string v8, "notification_reminder_vibrate"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 688
    const-string v8, "notification_reminder_led_indicator"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 689
    const-string v8, "notification_reminder_app_list"

    const-string v9, "selectAll"

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 692
    const-string v8, "easy_interaction"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 711
    const-string v8, "ResetSettings"

    const-string v9, "resetAccessibilitySettings - finish "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    return-void

    .line 561
    .end local v2    # "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v6    # "mSharedPref":Landroid/content/SharedPreferences;
    :cond_2
    const-string v8, "rapid_key_input"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 562
    const-string v8, "rapid_key_input_menu_checked"

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method private resetCompleted()V
    .locals 4

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 181
    return-void
.end method

.method private resetSpenSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 446
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_PEN_DETECT_MODE_DISALBED"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_detect_mode_disabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 449
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenSavingmode(I)Z

    .line 455
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_detect_mode_disabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 453
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenSavingmode(I)Z

    goto :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 878
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 880
    .local v0, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 p1, 0x3a

    .end local p1    # "request":I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method private setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 3
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 439
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "reason":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/app/NotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    move-result v1

    .line 441
    .local v1, "success":Z
    return v1
.end method


# virtual methods
.method public getUriOfDefaultTone(I)Landroid/net/Uri;
    .locals 14
    .param p1, "type"    # I

    .prologue
    .line 458
    const/4 v10, 0x0

    .line 460
    .local v10, "foundUri":Z
    const-string v0, "ResetSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUriOfBinaryDefaultTone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 463
    new-instance v11, Landroid/media/RingtoneManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    .line 468
    .local v11, "rm":Landroid/media/RingtoneManager;
    :goto_0
    const/4 v8, 0x0

    .line 470
    .local v8, "configTone":Ljava/lang/String;
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 471
    const-string v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 484
    :goto_1
    const-string v0, "ResetSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ro.config. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {v11, p1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 486
    invoke-virtual {v11}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 487
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 488
    const/4 v13, 0x0

    .line 489
    .local v13, "tempStrUri":Ljava/lang/String;
    const/4 v12, 0x0

    .line 492
    .local v12, "tempStrIndex":Ljava/lang/String;
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 494
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 497
    const/4 v7, 0x0

    .line 498
    .local v7, "c2":Landroid/database/Cursor;
    const-string v9, ""

    .line 500
    .local v9, "dataPath":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 503
    if-eqz v7, :cond_0

    .line 504
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 505
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 506
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 509
    :cond_0
    invoke-virtual {v9, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 510
    const/4 v10, 0x1

    .line 517
    .end local v7    # "c2":Landroid/database/Cursor;
    .end local v9    # "dataPath":Ljava/lang/String;
    :cond_1
    const-string v0, "ResetSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default tone\'s uri found : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    if-eqz v10, :cond_9

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .end local v6    # "c":Landroid/database/Cursor;
    .end local v12    # "tempStrIndex":Ljava/lang/String;
    .end local v13    # "tempStrUri":Ljava/lang/String;
    :goto_3
    return-object v0

    .line 465
    .end local v8    # "configTone":Ljava/lang/String;
    .end local v11    # "rm":Landroid/media/RingtoneManager;
    :cond_2
    new-instance v11, Landroid/media/RingtoneManager;

    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .restart local v11    # "rm":Landroid/media/RingtoneManager;
    goto/16 :goto_0

    .line 472
    .restart local v8    # "configTone":Ljava/lang/String;
    :cond_3
    const/16 v0, 0x80

    if-ne p1, v0, :cond_4

    .line 473
    const-string v0, "ro.config.ringtone_2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 474
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 475
    const-string v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 476
    :cond_5
    const/16 v0, 0x100

    if-ne p1, v0, :cond_6

    .line 477
    const-string v0, "ro.config.notification_sound_2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 478
    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    .line 479
    const-string v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 481
    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 514
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v7    # "c2":Landroid/database/Cursor;
    .restart local v9    # "dataPath":Ljava/lang/String;
    .restart local v12    # "tempStrIndex":Ljava/lang/String;
    .restart local v13    # "tempStrUri":Ljava/lang/String;
    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 518
    .end local v7    # "c2":Landroid/database/Cursor;
    .end local v9    # "dataPath":Ljava/lang/String;
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public loadCSC()V
    .locals 2

    .prologue
    .line 715
    new-instance v0, Lcom/android/settings_ex/csc/CscSettingsLoader;

    iget-object v1, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/csc/CscSettingsLoader;-><init>(Landroid/content/Context;)V

    .line 716
    .local v0, "CscSettings":Lcom/android/settings_ex/csc/CscSettingsLoader;
    invoke-virtual {v0}, Lcom/android/settings_ex/csc/CscSettingsLoader;->update()V

    .line 717
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 149
    .local v0, "userFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    new-instance v1, Lcom/android/settings_ex/ResetSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ResetSettings$1;-><init>(Lcom/android/settings_ex/ResetSettings;)V

    iput-object v1, p0, Lcom/android/settings_ex/ResetSettings;->resetReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    iget-object v1, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/ResetSettings;->resetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 802
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 804
    sparse-switch p1, :sswitch_data_0

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 807
    :sswitch_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    if-ne p2, v2, :cond_0

    .line 809
    invoke-direct {p0}, Lcom/android/settings_ex/ResetSettings;->doSoftReset()V

    goto :goto_0

    .line 816
    :sswitch_1
    if-ne p2, v2, :cond_0

    .line 817
    invoke-direct {p0}, Lcom/android/settings_ex/ResetSettings;->doSoftReset()V

    goto :goto_0

    .line 804
    :sswitch_data_0
    .sparse-switch
        0x37 -> :sswitch_1
        0x3a -> :sswitch_1
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0e12d2

    const v4, 0x7f0e12d1

    const v3, 0x7f0e12cf

    .line 119
    const v1, 0x7f0401b9

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ResetSettings;->mContentView:Landroid/view/View;

    .line 121
    iget-object v1, p0, Lcom/android/settings_ex/ResetSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f0d0468

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    .local v0, "text":Landroid/widget/TextView;
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_RESET_SETTINGS"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/ResetSettings;->establishResetState()V

    .line 140
    iget-object v1, p0, Lcom/android/settings_ex/ResetSettings;->mContentView:Landroid/view/View;

    return-object v1

    .line 131
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/ResetSettings;->resetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 927
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 928
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 914
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 916
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 921
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    .line 923
    :cond_1
    return-void
.end method

.method protected queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "requestCode"    # I

    .prologue
    .line 837
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 838
    .local v0, "pickIntent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    const-string v1, ".title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    const-string v1, ".subject"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 841
    const-string v1, ".password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 842
    invoke-virtual {p0, v0, p4}, Lcom/android/settings_ex/ResetSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 843
    return-void
.end method

.method public resetAllSettings(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    .line 239
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->resetDNDSettings()V

    .line 240
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->resetSystemSettings()V

    .line 241
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->resetSecureSettings()V

    .line 242
    invoke-direct {p0}, Lcom/android/settings_ex/ResetSettings;->resetAccessibilitySettings()V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->resetFontSettings()V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->resetDisplayScalingSettings()V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->loadCSC()V

    .line 246
    return-void
.end method

.method public resetDNDSettings()V
    .locals 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "ResetSettings"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public resetDisplayScalingSettings()V
    .locals 5

    .prologue
    const/16 v4, 0x230

    .line 288
    const-string v2, "ro.sf.lcd_density"

    const/16 v3, 0xa0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 289
    .local v0, "deviceDensity":I
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 291
    .local v1, "mWindowmanager":Landroid/view/IWindowManager;
    :try_start_0
    const-string v2, "560,640"

    const-string v3, "NONE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    if-ne v0, v4, :cond_1

    .line 293
    iget-object v2, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "condensed"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    const/4 v2, 0x0

    const/16 v3, 0x230

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->setForcedDisplayDensity(II)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "condensed"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 297
    const/4 v2, 0x0

    const/16 v3, 0x280

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->setForcedDisplayDensity(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public resetFontSettings()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 253
    iget-object v9, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    const-string v10, "prefs"

    invoke-virtual {v9, v10, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 255
    .local v7, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 256
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "selectedFont"

    const-string v10, "MONOTYPE"

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 257
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    :try_start_0
    new-instance v4, Lcom/android/settings_ex/flipfont/FontWriter;

    invoke-direct {v4}, Lcom/android/settings_ex/flipfont/FontWriter;-><init>()V

    .line 261
    .local v4, "fontWriter":Lcom/android/settings_ex/flipfont/FontWriter;
    iget-object v9, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    const-string v10, "sans.loc"

    const-string v11, "default#default"

    invoke-virtual {v4, v9, v10, v11}, Lcom/android/settings_ex/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 266
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 270
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v4    # "fontWriter":Lcom/android/settings_ex/flipfont/FontWriter;
    :goto_0
    iget-object v9, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "font_size"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 271
    .local v8, "previousIndex":I
    const-string v9, "persist.sys.font_clarity"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v9, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "font_size"

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 273
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v5, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x5

    invoke-static {v9, v10}, Lcom/android/settings_ex/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v0

    .line 275
    .local v0, "EXTRA_LARGE_FONT_SCALE":F
    iget-object v9, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-static {v9, v0}, Lcom/android/settings_ex/Utils;->getFontIndex(Landroid/content/Context;F)I

    move-result v9

    if-le v8, v9, :cond_0

    .line 276
    const-string v9, "large_font"

    invoke-virtual {v5, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    :cond_0
    iget-object v9, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 279
    :try_start_1
    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6}, Landroid/content/res/Configuration;-><init>()V

    .line 280
    .local v6, "mCurConfig":Landroid/content/res/Configuration;
    const/high16 v3, 0x3f800000    # 1.0f

    .line 281
    .local v3, "fontScale":F
    iput v3, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 282
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9, v6}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 285
    .end local v3    # "fontScale":F
    .end local v6    # "mCurConfig":Landroid/content/res/Configuration;
    :goto_1
    return-void

    .line 283
    :catch_0
    move-exception v9

    goto :goto_1

    .line 267
    .end local v0    # "EXTRA_LARGE_FONT_SCALE":F
    .end local v5    # "i":Landroid/content/Intent;
    .end local v8    # "previousIndex":I
    :catch_1
    move-exception v9

    goto :goto_0
.end method

.method public resetGlobalSettings()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 372
    invoke-direct {p0}, Lcom/android/settings_ex/ResetSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v5

    .line 373
    .local v5, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v7, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-boolean v9, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 374
    invoke-static {}, Lcom/android/settings_ex/Utils;->isAllNAVendor()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 375
    iget-object v7, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v10, 0x2

    iput v10, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 384
    :goto_0
    iput-boolean v9, v5, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 385
    iput-boolean v9, v5, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 386
    iput-boolean v9, v5, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 387
    iput-boolean v9, v5, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 388
    iput-boolean v9, v5, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 389
    iput-boolean v8, v5, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 390
    invoke-direct {p0, v5}, Lcom/android/settings_ex/ResetSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 393
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f100024

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v8

    .line 395
    .local v1, "airplaneMode":I
    :goto_1
    iget-object v7, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "airplane_mode_on"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v1, :cond_0

    .line 396
    iget-object v7, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "airplane_mode_on"

    invoke-static {v7, v10, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 397
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "state"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 399
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 402
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f100026

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 403
    .local v3, "autoTimeZone":Z
    iget-object v7, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "auto_time_zone"

    if-eqz v3, :cond_3

    move v7, v8

    :goto_2
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 405
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v6, "timeZone":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 407
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f100025

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 408
    .local v2, "autoTime":Z
    iget-object v7, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "auto_time"

    if-eqz v2, :cond_4

    move v7, v8

    :goto_3
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 410
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.TIME_SET"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v0, "actionTime":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 413
    const-string v7, "USC"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 414
    iget-object v7, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "emergency_tone"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 420
    :goto_4
    iget-object v7, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "data_powersaving_mode"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 421
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.samsung.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .restart local v4    # "intent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 423
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 425
    return-void

    .line 377
    .end local v0    # "actionTime":Landroid/content/Intent;
    .end local v1    # "airplaneMode":I
    .end local v2    # "autoTime":Z
    .end local v3    # "autoTimeZone":Z
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "timeZone":Landroid/content/Intent;
    :cond_1
    iget-object v7, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v10, 0x3

    iput v10, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    goto/16 :goto_0

    :cond_2
    move v1, v9

    .line 393
    goto/16 :goto_1

    .restart local v1    # "airplaneMode":I
    .restart local v3    # "autoTimeZone":Z
    :cond_3
    move v7, v9

    .line 403
    goto/16 :goto_2

    .restart local v2    # "autoTime":Z
    .restart local v6    # "timeZone":Landroid/content/Intent;
    :cond_4
    move v7, v9

    .line 408
    goto :goto_3

    .line 416
    .restart local v0    # "actionTime":Landroid/content/Intent;
    :cond_5
    iget-object v7, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "emergency_tone"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4
.end method

.method public resetSecureSettings()V
    .locals 7

    .prologue
    const v6, 0x1120070

    const v5, 0x112006f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 355
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screensaver_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 356
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screensaver_activate_on_dock"

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 359
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screensaver_activate_on_sleep"

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screensaver_components"

    const-string v2, "com.android.dreams.basic/com.android.dreams.basic.Colors"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 369
    return-void

    :cond_0
    move v0, v2

    .line 357
    goto :goto_0

    :cond_1
    move v1, v2

    .line 359
    goto :goto_1

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screensaver_activate_on_dock"

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 364
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screensaver_activate_on_sleep"

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_4
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_3
    move v0, v2

    .line 362
    goto :goto_3

    :cond_4
    move v1, v2

    .line 364
    goto :goto_4
.end method

.method public resetSystemSettings()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 305
    invoke-direct {p0}, Lcom/android/settings_ex/ResetSettings;->loadDefRingtone()V

    .line 307
    invoke-direct {p0}, Lcom/android/settings_ex/ResetSettings;->resetSpenSettings()V

    .line 310
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 311
    iget-object v5, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 313
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v5, "gps"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 314
    const-string v5, "network"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 317
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "any_screen_enabled"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 318
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.samsung.intent.action.ONEHAND_REDUCE_SCREEN_STATUS"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "is_enabled"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    iget-object v5, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "interactionarea_switch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 324
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v5, "com.samsung.intent.action.ONEHAND_INPUT_STATUS"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v5, "is_enabled"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 330
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 331
    iget-object v5, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_offload_network_notify"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 334
    :cond_1
    const-string v5, "2016A"

    const-string v6, "ro.build.scafe.version"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "2015A"

    const-string v6, "ro.build.scafe.version"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 335
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 336
    .local v3, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 337
    .local v2, "isVoiceCapable":Z
    :goto_0
    const-string v4, "DCM"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 338
    iget-object v4, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_application_shortcut"

    const-string v6, "1;com.samsung.contacts/com.android.dialer.DialtactsActivity;1;com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 351
    .end local v2    # "isVoiceCapable":Z
    .end local v3    # "telephony":Landroid/telephony/TelephonyManager;
    :cond_3
    :goto_1
    return-void

    .restart local v3    # "telephony":Landroid/telephony/TelephonyManager;
    :cond_4
    move v2, v4

    .line 336
    goto :goto_0

    .line 340
    .restart local v2    # "isVoiceCapable":Z
    :cond_5
    if-nez v2, :cond_7

    .line 341
    iget-object v4, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    const-string v5, "com.sec.android.app.sbrowser"

    invoke-static {v4, v5}, Lcom/android/settings_ex/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 342
    iget-object v4, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_application_shortcut"

    const-string v6, "1;com.android.chrome/com.google.android.apps.chrome.Main;1;com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 344
    :cond_6
    iget-object v4, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_application_shortcut"

    const-string v6, "1;com.sec.android.app.sbrowser/com.sec.android.app.sbrowser.SBrowserMainActivity;1;com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 346
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ex/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_application_shortcut"

    const-string v6, "1;com.android.contacts/com.android.dialer.DialtactsActivity;1;com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method
