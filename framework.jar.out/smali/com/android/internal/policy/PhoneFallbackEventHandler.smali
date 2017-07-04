.class public Lcom/android/internal/policy/PhoneFallbackEventHandler;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"

# interfaces
.implements Landroid/view/FallbackEventHandler;


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final LONG_PRESS_LAUNCH:I

.field private final NO_LAUNCH:I

.field private final SHORT_PRESS_LAUNCH:I

.field private final SocialActivity:Ljava/lang/String;

.field private final SocialPackage:Ljava/lang/String;

.field mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLaunchType:I

.field mSearchManager:Landroid/app/SearchManager;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mView:Landroid/view/View;

.field mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 55
    const-string v1, "PhoneFallbackEventHandler"

    sput-object v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    .line 56
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->NO_LAUNCH:I

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->SHORT_PRESS_LAUNCH:I

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->LONG_PRESS_LAUNCH:I

    .line 73
    iput v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    .line 77
    const-string v0, "com.sec.android.app.socialpage"

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->SocialPackage:Ljava/lang/String;

    .line 78
    const-string v0, "com.sec.android.app.socialpage.SocialSetActivity"

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->SocialActivity:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method private checkLaunchSetting()I
    .locals 4

    .prologue
    .line 716
    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "active_key_on_lockscreen"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 717
    .local v0, "state":I
    sget-boolean v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLaunchSetting state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_0
    return v0
.end method

.method private getZoomKeyController()Lcom/android/internal/policy/samsung/ZoomKeyController;
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;

    if-nez v0, :cond_0

    .line 724
    new-instance v0, Lcom/android/internal/policy/samsung/ZoomKeyController;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/samsung/ZoomKeyController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;

    return-object v0
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 583
    return-void
.end method

.method private isUserSetupComplete()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 586
    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private launchAppActivity(Landroid/content/Intent;Z)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isSupportBCM"    # Z

    .prologue
    const/4 v5, 0x0

    .line 677
    if-eqz p2, :cond_3

    .line 678
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 679
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->checkLaunchSetting()I

    move-result v3

    if-eqz v3, :cond_1

    .line 680
    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, p1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 681
    .local v2, "pendIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 682
    .local v1, "fillInIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    if-nez v3, :cond_0

    .line 683
    const-string v3, "dismissIfInsecure"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 684
    const-string v3, "afterKeyguardGone"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 686
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/app/KeyguardManager;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 687
    sget-object v3, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v4, "The pendingIntent sent to keyguard"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    .end local v1    # "fillInIntent":Landroid/content/Intent;
    .end local v2    # "pendIntent":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 690
    :cond_1
    sget-object v3, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v4, "it is blocked to launch app by setting value"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 693
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V

    goto :goto_0

    .line 697
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 700
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 704
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 707
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 702
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private launchCameraApp()V
    .locals 6

    .prologue
    .line 487
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.camera"

    const-string v5, "com.sec.android.app.camera.Camera"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .local v0, "CString":Landroid/content/ComponentName;
    const-string v4, "isSecure"

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 492
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 493
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 495
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 496
    const v4, 0x24001000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 502
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 503
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawnTarget(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 509
    :cond_0
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 514
    :goto_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 515
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_1

    .line 516
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 518
    :cond_1
    return-void

    .line 498
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    const/high16 v4, 0x200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 510
    :catch_0
    move-exception v1

    .line 511
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "No activity to launch Camera."

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 505
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private launchUserDefinedApp(I)Z
    .locals 12
    .param p1, "mode"    # I

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v9

    if-nez v9, :cond_0

    .line 594
    sget-object v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v10, "Not lauching User defined app because user setup is in progress."

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v9, 0x0

    .line 673
    :goto_0
    return v9

    .line 598
    :cond_0
    const/4 v6, 0x0

    .line 599
    .local v6, "launch_app":Ljava/lang/String;
    const/4 v7, 0x0

    .line 600
    .local v7, "package_index":I
    const/4 v8, 0x0

    .line 601
    .local v8, "package_name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 603
    .local v0, "activity_name":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v2

    .line 604
    .local v2, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    const/4 v3, -0x1

    .line 605
    .local v3, "emMode":I
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportBatteryConversingMode()Z

    move-result v5

    .line 607
    .local v5, "isSupportBCM":Z
    if-eqz v5, :cond_1

    .line 608
    invoke-virtual {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->getModeType()I

    move-result v3

    .line 609
    sget-object v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "now mode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 636
    :goto_1
    :try_start_0
    sget-boolean v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v9, :cond_2

    sget-object v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "launch for userkey launch_app = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_2
    if-eqz v6, :cond_7

    .line 638
    const/16 v9, 0x2f

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 639
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 640
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 656
    :goto_2
    if-eqz v8, :cond_3

    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 657
    :cond_3
    sget-boolean v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v10, "None pkg name"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 614
    :pswitch_0
    const/4 v9, 0x1

    goto :goto_0

    .line 617
    :pswitch_1
    const/4 v9, 0x2

    if-ne v3, v9, :cond_5

    .line 618
    iget-object v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "short_press_app_battery_conserve"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 621
    :cond_5
    iget-object v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "short_press_app"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 624
    goto :goto_1

    .line 627
    :pswitch_2
    const/4 v9, 0x2

    if-ne v3, v9, :cond_6

    .line 628
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 630
    :cond_6
    iget-object v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "long_press_app"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 643
    :cond_7
    :try_start_1
    sget-object v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "set package info for launching PTT app(Korea National Emergency Network)"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const-string v8, "com.sec.ptt"

    .line 646
    const-string v0, "com.sec.ptt.call.activities.callMainActivity"
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 649
    :catch_0
    move-exception v1

    .line 650
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    sget-boolean v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v9, :cond_8

    sget-object v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v10, "There is no launch app!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_8
    const/4 v8, 0x0

    .line 652
    const/4 v0, 0x0

    .line 653
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 660
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_9
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .local v4, "i":Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    const/high16 v9, 0x10200000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 664
    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 667
    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchAppActivity(Landroid/content/Intent;Z)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 673
    :cond_a
    :goto_3
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 668
    :catch_1
    move-exception v1

    .line 669
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v9, :cond_a

    sget-object v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v10, "Activity to be assigned by the key is not found."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 95
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 106
    .local v1, "keyCode":I
    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 109
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v8, 0x10000000

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 118
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 120
    .local v1, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v4, v5

    .line 342
    :cond_1
    :goto_1
    return v4

    .line 124
    :sswitch_0
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v6

    invoke-virtual {v6, p2, v5}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1

    .line 133
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-nez v5, :cond_1

    .line 139
    :sswitch_2
    const/16 v5, 0x4f

    if-ne p1, v5, :cond_2

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryPBAPhase()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 141
    sget-object v5, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 152
    :cond_2
    :sswitch_3
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 157
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_3

    .line 161
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_1

    .line 162
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 163
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 164
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 165
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 167
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 171
    iget-object v5, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 172
    :catch_0
    move-exception v2

    .line 173
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_1

    .line 176
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    sget-object v5, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Not starting call activity because user setup is in progress."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 186
    :sswitch_5
    if-nez v1, :cond_5

    .line 187
    sget-boolean v4, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Camera key is blocked by policy or dispatcher is null"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 191
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_7

    .line 192
    sget-boolean v5, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Camera key start Tracking"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_6
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 194
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    .line 220
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_8

    .line 224
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 225
    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 226
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 227
    .local v0, "config":Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v6, v4, :cond_9

    iget v6, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v6, v7, :cond_0

    .line 229
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 231
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 234
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 235
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/SearchManager;->stopSearch()V

    .line 237
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V

    .line 241
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 243
    :catch_1
    move-exception v4

    goto/16 :goto_0

    .line 247
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_a
    sget-object v4, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Not dispatching SEARCH long press because user setup is in progress."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 257
    .end local v0    # "config":Landroid/content/res/Configuration;
    :sswitch_7
    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_e

    .line 262
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 263
    iput v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    .line 271
    :cond_b
    :goto_2
    iget v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    if-ne v6, v7, :cond_1

    .line 272
    iget v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v6}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    move-result v6

    if-nez v6, :cond_d

    .line 273
    sget-boolean v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v6, :cond_c

    sget-object v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v7, "There are no apps defined by the user key"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 276
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 278
    const-string v6, "com.sec.android.app.popupuireceiver"

    const-string v7, "com.sec.android.app.popupuireceiver.popupCustomizeKey"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 282
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 291
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_d
    :goto_3
    iput v5, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    goto/16 :goto_1

    .line 264
    :cond_e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 265
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 266
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 268
    iput v7, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    goto :goto_2

    .line 283
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v2

    .line 284
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v6, :cond_d

    sget-object v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "popupuireceiver is not found."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 287
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_f
    sget-object v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v7, "Not dispatching Active Key long press because user setup is in progress."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 299
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_10

    .line 304
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 305
    :cond_10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 306
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 307
    iget-object v6, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 308
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 310
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 312
    const-string v5, "com.sec.android.app.socialpage"

    const-string v6, "com.sec.android.app.socialpage.SocialSetActivity"

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startSocialActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 314
    :cond_11
    sget-object v5, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Not dispatching APPSELECT Key long press because user setup is in progress."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 322
    :sswitch_9
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v6

    if-nez v6, :cond_12

    .line 323
    sget-object v4, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Not dispatching KEYCODE_BUTTON_GAME Key press because user setup is in progress."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 328
    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_13

    .line 333
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 334
    :cond_13
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 335
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 336
    sget-object v5, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "no action about game button longpressed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 120
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_5
        0x4f -> :sswitch_2
        0x54 -> :sswitch_6
        0x55 -> :sswitch_1
        0x56 -> :sswitch_3
        0x57 -> :sswitch_3
        0x58 -> :sswitch_3
        0x59 -> :sswitch_3
        0x5a -> :sswitch_3
        0x5b -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_3
        0xa4 -> :sswitch_0
        0xde -> :sswitch_3
        0x3f7 -> :sswitch_7
        0x41a -> :sswitch_9
        0x431 -> :sswitch_8
    .end sparse-switch
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 346
    sget-boolean v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 347
    sget-object v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "up "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    iget-object v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 350
    .local v1, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_1

    .line 351
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 354
    :cond_1
    sparse-switch p1, :sswitch_data_0

    :cond_2
    :goto_0
    move v7, v8

    .line 483
    :cond_3
    :goto_1
    return v7

    .line 358
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v9

    if-nez v9, :cond_3

    .line 359
    iget-object v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v9

    invoke-virtual {v9, p2, v8}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1

    .line 366
    :sswitch_1
    const/16 v8, 0x4f

    if-ne p1, v8, :cond_4

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryPBAPhase()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 368
    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 383
    :cond_4
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 388
    :sswitch_3
    sget-boolean v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v8, :cond_5

    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Camera key event.isTracking() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " event.isCanceled() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 391
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 392
    sget-boolean v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v8, :cond_6

    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "launch camera"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 394
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchCameraApp()V

    goto :goto_1

    .line 396
    :cond_7
    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "Not starting Camera activity because user setup is in progress."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 404
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v9

    if-nez v9, :cond_2

    .line 407
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 408
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 409
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startCallActivity()V

    goto/16 :goto_1

    .line 411
    :cond_8
    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "Not starting call activity because user setup is in progress."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 420
    :sswitch_5
    iget v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    if-ne v9, v7, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v9

    if-nez v9, :cond_3

    .line 421
    iget v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    invoke-direct {p0, v9}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    move-result v9

    if-nez v9, :cond_9

    .line 422
    sget-boolean v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v9, :cond_9

    sget-object v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v10, "There are no apps defined by the user key"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_9
    iput v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mLaunchType:I

    goto/16 :goto_1

    .line 432
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v9

    if-nez v9, :cond_2

    .line 436
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v9

    if-nez v9, :cond_3

    .line 438
    iget-object v9, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "short_press_app"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, "launch_app":Ljava/lang/String;
    const/4 v6, 0x0

    .line 440
    .local v6, "package_name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 441
    .local v0, "activity_name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 443
    .local v5, "package_index":I
    sget-boolean v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v9, :cond_a

    sget-object v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "app select short pressed!! app = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_a
    if-eqz v3, :cond_b

    .line 447
    const/16 v9, 0x2f

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 448
    const/4 v9, 0x0

    invoke-virtual {v3, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 449
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 461
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 462
    invoke-virtual {p0, v6, v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startSocialActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 450
    :catch_0
    move-exception v2

    .line 451
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v6, 0x0

    .line 452
    const/4 v0, 0x0

    .line 453
    goto/16 :goto_0

    .line 456
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_b
    sget-boolean v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v8, :cond_c

    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "There is no app that is selected so setting app will be launched"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_c
    const-string v6, "com.sec.android.app.socialpage"

    .line 458
    const-string v0, "com.sec.android.app.socialpage.SocialSetActivity"

    goto :goto_2

    .line 464
    :cond_d
    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "Not dispatching APPSELECT Key short press because user setup is in progress."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 472
    .end local v0    # "activity_name":Ljava/lang/String;
    .end local v3    # "launch_app":Ljava/lang/String;
    .end local v5    # "package_index":I
    .end local v6    # "package_name":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 473
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.BUTTON_GAME"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    .local v4, "notifyGameButton":Landroid/content/Intent;
    const-string v8, "deviceName"

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    iget-object v8, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 476
    sget-object v8, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v9, "Send BR for game button"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 354
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_3
        0x4f -> :sswitch_1
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_0
        0xde -> :sswitch_2
        0x3f7 -> :sswitch_5
        0x41a -> :sswitch_7
        0x431 -> :sswitch_6
    .end sparse-switch
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;I)V

    .line 90
    return-void
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 579
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    .line 86
    return-void
.end method

.method startCallActivity()V
    .locals 4

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 539
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 542
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "No activity found for android.intent.action.CALL_BUTTON."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startSocialActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "package_name"    # Ljava/lang/String;
    .param p2, "activity_name"    # Ljava/lang/String;

    .prologue
    .line 521
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 525
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 529
    iget-object v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_1
    const-string v2, "com.sec.android.app.socialpage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 533
    const-string v2, "com.sec.android.app.socialpage"

    const-string v3, "com.sec.android.app.socialpage.SocialSetActivity"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startSocialActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
