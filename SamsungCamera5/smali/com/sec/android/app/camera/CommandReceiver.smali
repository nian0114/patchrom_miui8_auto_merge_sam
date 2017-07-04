.class public Lcom/sec/android/app/camera/CommandReceiver;
.super Ljava/lang/Object;
.source "CommandReceiver.java"

# interfaces
.implements Lcom/sec/android/app/camera/command/CommandInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CommandReceiver$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CommandReceiver"


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/Camera;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;)V
    .locals 1
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "settings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .param p3, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p4, "shootingMode"    # Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    .line 53
    iput-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 54
    iput-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 55
    iput-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    .line 58
    iput-object p1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    .line 59
    iput-object p3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 60
    iput-object p2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 61
    iput-object p4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    .line 62
    return-void
.end method

.method private setSeparatedShootingMode(ILjava/lang/String;)V
    .locals 6
    .param p1, "commandId"    # I
    .param p2, "separatedShootingModeName"    # Ljava/lang/String;

    .prologue
    .line 716
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->checkShootingModeVersion(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;

    move-result-object v0

    .line 718
    .local v0, "error":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;
    sget-object v3, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;->NO_ERROR:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;

    if-eq v0, v3, :cond_0

    .line 719
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CommandReceiver;->showShootingModeVersionDialog(Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;)V

    .line 731
    :goto_0
    return-void

    .line 723
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 724
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v2

    .line 725
    .local v2, "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 726
    .local v1, "message":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x1d9

    iget-object v5, v2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v1}, Lcom/sec/android/app/camera/Camera;->showCameraDialog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 730
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/camera/Camera;->startSeparatedShootingMode(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private setShootingMode(I)V
    .locals 4
    .param p1, "shootingMode"    # I

    .prologue
    .line 739
    move v1, p1

    .line 741
    .local v1, "newShootingMode":I
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v2, :cond_0

    .line 743
    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCommandIdByShootingMode(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->checkShootingModeVersion(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;

    move-result-object v0

    .line 746
    .local v0, "error":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;
    sget-object v2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;->NO_ERROR:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;

    if-eq v2, v0, :cond_0

    .line 747
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CommandReceiver;->showShootingModeVersionDialog(Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;)V

    .line 752
    .end local v0    # "error":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;
    :goto_0
    return-void

    .line 751
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/Camera;->handleShootingModeChanged(I)V

    goto :goto_0
.end method

.method private showShootingModeVersionDialog(Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;)V
    .locals 2
    .param p1, "error"    # Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;

    .prologue
    .line 760
    sget-object v0, Lcom/sec/android/app/camera/CommandReceiver$1;->$SwitchMap$com$sec$android$app$camera$plugin$PlugInShootingModesStorage$VersionErrors:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$VersionErrors;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 773
    :goto_0
    return-void

    .line 762
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->showCameraDialog(I)V

    goto :goto_0

    .line 766
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->showCameraDialog(I)V

    goto :goto_0

    .line 760
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onBeautyMenuSelect(I)Z
    .locals 2
    .param p1, "beautyMode"    # I

    .prologue
    .line 66
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBeautyMode(I)V

    .line 67
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "shapeCorrectionMode":I
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v1

    if-nez v1, :cond_1

    .line 70
    const/4 v0, 0x1

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShapeCorrection(I)V

    .line 75
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/Camera;->handleShapeCorrectionModeChanged(I)V

    .line 77
    .end local v0    # "shapeCorrectionMode":I
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 72
    .restart local v0    # "shapeCorrectionMode":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraResolutionMenuSelect(I)Z
    .locals 4
    .param p1, "resolution"    # I

    .prologue
    .line 82
    move v0, p1

    .line 84
    .local v0, "newResolution":I
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 85
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 86
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    .line 87
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->updateIfResolutionChanged()V

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "Z090"

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "Z089"

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCheckBoxSelect(I)Z
    .locals 4
    .param p1, "menuid"    # I

    .prologue
    const/4 v2, 0x1

    .line 98
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v0

    .line 99
    .local v0, "currentModeid":I
    if-nez v0, :cond_0

    move v1, v2

    .line 101
    .local v1, "newModeid":I
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 108
    :goto_1
    return v2

    .line 99
    .end local v1    # "newModeid":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 103
    .restart local v1    # "newModeid":I
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setInterval(I)V

    goto :goto_1

    .line 101
    :pswitch_data_0
    .packed-switch 0x7f
        :pswitch_0
    .end packed-switch
.end method

.method public onDualEffectMenuSelect(I)Z
    .locals 3
    .param p1, "effect"    # I

    .prologue
    const/16 v2, 0x5a

    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isDualEffectCompleted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    const-string v1, "CommandReceiver"

    const-string v2, "ignore effect set"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setDualEffectComplete(Z)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraDualEffect(I)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setDualEffectSync(I)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2, p1}, Lcom/sec/android/app/camera/Camera;->setButtonDim(II)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v0, v2, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->onMenuSelected(II)Z

    .line 127
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onEffectDownloadMenuCommand()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.sec.android.app.samsungapps"

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 133
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v4, "com.sec.android.app.samsungapps"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->showApplicationDisabledPopup(Ljava/lang/String;)V

    .line 160
    :cond_0
    :goto_0
    return v2

    .line 136
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x1da

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/Camera;->showCameraDialog(I)V

    move v2, v3

    .line 138
    goto :goto_0

    .line 141
    :cond_2
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "samsungapps://SubCategoryList/0000005082"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 148
    const v4, 0x4000020

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->processBack()V

    move v2, v3

    .line 160
    goto :goto_0

    .line 151
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f0800ec

    invoke-static {v3, v4, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 153
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onExposuremeterMenuSelect(I)Z
    .locals 3
    .param p1, "exposureMeter"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraExposureMeter(I)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "Z141"

    const/16 v2, 0xb

    invoke-static {v2, p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public onFoodBlurTypeSelect(I)Z
    .locals 1
    .param p1, "foodBlurType"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFoodBlurType(I)V

    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public onHelpHubSelect()Z
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "CommandReceiver"

    const-string v1, "return isCapturing.."

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, 0x0

    .line 190
    :goto_0
    return v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->showHelpHub(Landroid/content/Context;)V

    .line 190
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onISOSelect(I)Z
    .locals 1
    .param p1, "iso"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraISO(I)V

    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public onLaunchMenu(I)Z
    .locals 4
    .param p1, "commandId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 201
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f080191

    invoke-static {v2, v3, v1}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 203
    const-string v2, "CommandReceiver"

    const-string v3, "return isCapturing.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_0
    return v1

    .line 206
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 207
    const-string v1, "CommandReceiver"

    const-string v3, "preview is not ready"

    invoke-static {v1, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 208
    goto :goto_0

    .line 211
    :cond_1
    const/16 v0, 0x63

    .line 213
    .local v0, "changedCommandId":I
    sparse-switch p1, :sswitch_data_0

    :goto_1
    move v1, v2

    .line 328
    goto :goto_0

    .line 215
    :sswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 216
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 217
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3, p1, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(IZ)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto :goto_1

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    goto :goto_1

    .line 239
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 240
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto :goto_1

    .line 242
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    goto :goto_1

    .line 247
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 248
    :cond_4
    const/16 v0, 0x65

    .line 253
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 254
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto :goto_1

    .line 250
    :cond_5
    const/4 v0, 0x4

    goto :goto_2

    .line 256
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    goto :goto_1

    .line 262
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v1

    if-nez v1, :cond_9

    .line 263
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 264
    const/16 v0, 0x64

    .line 280
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 281
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto/16 :goto_1

    .line 266
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CallState;->isCalling(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 267
    const/4 v0, 0x2

    goto :goto_3

    .line 269
    :cond_8
    const/16 v0, 0x68

    goto :goto_3

    .line 273
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 274
    const/16 v0, 0x4f

    goto :goto_3

    .line 276
    :cond_a
    const/16 v0, 0x4e

    goto :goto_3

    .line 283
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->processBack()V

    goto/16 :goto_1

    .line 289
    :sswitch_4
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_e

    .line 290
    const/16 v0, 0x7f

    .line 291
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isFilterLoaded()Z

    move-result v1

    if-nez v1, :cond_c

    .line 292
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    .line 302
    :cond_c
    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 303
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_d

    .line 304
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->startThumbnailPreviewCallback()V

    .line 306
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto/16 :goto_1

    .line 295
    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 296
    const/16 v0, 0x66

    goto :goto_4

    .line 297
    :cond_f
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 298
    const/16 v0, 0x8

    goto :goto_4

    .line 308
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    goto/16 :goto_1

    .line 313
    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v1

    if-eq v1, v2, :cond_11

    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_11

    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_12

    .line 316
    :cond_11
    const/16 v0, 0x85

    .line 321
    :goto_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v1

    if-nez v1, :cond_13

    .line 322
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto/16 :goto_1

    .line 318
    :cond_12
    const/16 v0, 0x84

    goto :goto_5

    .line 324
    :cond_13
    iget-object v1, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    goto/16 :goto_1

    .line 213
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x6 -> :sswitch_1
        0x8 -> :sswitch_4
        0xb -> :sswitch_1
        0x12 -> :sswitch_1
        0x19 -> :sswitch_1
        0x4d -> :sswitch_1
        0x5a -> :sswitch_1
        0x75 -> :sswitch_1
        0x77 -> :sswitch_0
        0x7f -> :sswitch_4
        0x80 -> :sswitch_1
        0x81 -> :sswitch_1
        0x82 -> :sswitch_1
        0x83 -> :sswitch_1
        0x84 -> :sswitch_5
        0x87 -> :sswitch_1
        0x8e -> :sswitch_1
        0x96 -> :sswitch_1
        0xab -> :sswitch_1
        0x1004 -> :sswitch_1
        0x232f -> :sswitch_1
    .end sparse-switch
.end method

.method public onManageEffectMenuCommand()Z
    .locals 5

    .prologue
    const/16 v3, 0x7f

    .line 333
    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sec.android.app.filtermanager"

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 340
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.filtermanager"

    const-string v4, "com.sec.android.app.filtermanager.ManageEffectActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 341
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 342
    const-string v2, "camera_mode"

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    const-string v2, "selected_effect"

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterFullName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v2, "is_secure"

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v3, 0x7ec

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/app/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 348
    const/4 v2, 0x0

    goto :goto_1

    .line 351
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v3, "com.sec.android.app.filtermanager"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->showApplicationDisabledPopup(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMoreSettingSelect()Z
    .locals 7

    .prologue
    const/16 v6, 0x78

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 359
    const-string v4, "CommandReceiver"

    const-string v5, "onMoreSettingSelect"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isCapturing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 362
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f080191

    invoke-static {v3, v4, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 363
    const-string v3, "CommandReceiver"

    const-string v4, "return isCapturing.."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_0
    return v2

    .line 367
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v4, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 370
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "setting"

    sget-object v4, Lcom/sec/android/app/camera/Camera;->mSetting:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 371
    const-string v2, "dim"

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getDimController()Lcom/sec/android/app/camera/DimController;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 372
    const-string v2, "camera-parcel"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 374
    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->setCameraPausingForSetting(Z)V

    .line 375
    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v4, 0x7e6

    invoke-virtual {v2, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 377
    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v6, v6}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(II)V

    move v2, v3

    .line 378
    goto :goto_0
.end method

.method public onMotionPanoramaModeSelect(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "Z145"

    const/16 v2, 0x86

    invoke-static {v2, p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionPanoramaMode(I)V

    .line 387
    const/4 v0, 0x1

    return v0
.end method

.method public onRecordingMotionSpeedMenuSelect(I)Z
    .locals 2
    .param p1, "motionSpeed"    # I

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    const/16 v1, 0x170d

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->onMenuSelected(II)Z

    move-result v0

    return v0
.end method

.method public onShootingModeDownloadCommand()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 398
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.sec.android.app.samsungapps"

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 399
    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v3, "com.sec.android.app.samsungapps"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->showApplicationDisabledPopup(Ljava/lang/String;)V

    .line 400
    const/4 v2, 0x0

    .line 418
    :goto_0
    return v2

    .line 403
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 404
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x1db

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->showCameraDialog(I)V

    goto :goto_0

    .line 408
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 411
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 412
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "samsungapps://CategoryList/0000004068"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 413
    const v3, 0x4000020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 414
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onShootingModeMenuSelect(ILjava/lang/String;)Z
    .locals 3
    .param p1, "shootingMode"    # I
    .param p2, "shootingModeName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 423
    iget-object v2, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isSwitchingCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    const-string v1, "CommandReceiver"

    const-string v2, "return isSwitchingCamera.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v1, 0x0

    .line 434
    :goto_0
    return v1

    .line 428
    :cond_0
    invoke-static {v1, p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    .line 429
    .local v0, "commandId":I
    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedAndPreloadedShootingMode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/camera/CommandReceiver;->setSeparatedShootingMode(ILjava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CommandReceiver;->setShootingMode(I)V

    goto :goto_0
.end method

.method public onSingleEffectMenuSelect(IZ)Z
    .locals 8
    .param p1, "effect"    # I
    .param p2, "itemSelected"    # Z

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x0

    .line 439
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v4

    if-eq v4, p1, :cond_5

    .line 440
    sget-boolean v4, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v4, :cond_2

    .line 441
    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v4

    if-nez v4, :cond_2

    .line 443
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4, v3, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setUsePreviewCallback(ZI)V

    .line 446
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/camera/Camera;->handleEffectModeChanged(I)V

    .line 448
    if-nez p1, :cond_3

    .line 449
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v5, 0x57

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAutoNightDetectionMode()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/camera/Camera;->setButtonDim(II)V

    .line 455
    :cond_3
    sget-boolean v4, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v4, :cond_7

    .line 456
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 457
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v4

    if-nez v4, :cond_4

    .line 480
    :goto_0
    return v3

    .line 461
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v4

    invoke-interface {v3, v7, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFeatureValueByCommandIdForLogging(IZ)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "featureID":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectNameForLogging(I)Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "settingID":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v0, v2}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .end local v0    # "featureID":Ljava/lang/String;
    .end local v2    # "settingID":Ljava/lang/String;
    :cond_5
    if-eqz p2, :cond_6

    .line 472
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v3, :cond_6

    .line 473
    const/16 v1, 0x7f

    .line 474
    .local v1, "menuId":I
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 475
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    .line 480
    .end local v1    # "menuId":I
    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    .line 464
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v4

    invoke-interface {v3, v7, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFeatureValueByCommandIdForLogging(IZ)Ljava/lang/String;

    move-result-object v0

    .line 465
    .restart local v0    # "featureID":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraParameters;->getEffectString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "settingID":Ljava/lang/String;
    goto :goto_1
.end method

.method public onSoundAndShotMenuSelect(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x1

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSoundAndShotMode(I)V

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    const/16 v1, 0x4d

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->onMenuSelected(II)Z

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSoundAndShotMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraShutterSound(I)V

    .line 494
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 495
    return v2

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraShutterSound(I)V

    goto :goto_0
.end method

.method public onTimerAndIntervalSelect(I)Z
    .locals 2
    .param p1, "timer"    # I

    .prologue
    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(I)V

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v1, 0x80

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/Camera;->setButtonDim(II)V

    .line 502
    const/4 v0, 0x1

    return v0
.end method

.method public onTimerSelect(I)Z
    .locals 1
    .param p1, "timer"    # I

    .prologue
    .line 507
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 508
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(I)V

    .line 509
    const/4 v0, 0x1

    return v0
.end method

.method public onToggleSelect(I)Z
    .locals 11
    .param p1, "menuid"    # I

    .prologue
    const v10, 0x7f080190

    const v9, 0x7f080177

    const v8, 0x1040014

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 514
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v6

    if-nez v6, :cond_0

    .line 515
    const-string v5, "CommandReceiver"

    const-string v6, "return isStartPreview.."

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :goto_0
    return v4

    .line 519
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->isLaunchGallery()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 520
    const-string v5, "CommandReceiver"

    const-string v6, "return isLaunchGallery.."

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 524
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isCapturing()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 525
    iget-object v5, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f080191

    invoke-static {v5, v6, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 526
    const-string v5, "CommandReceiver"

    const-string v6, "return isCapturing.."

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 530
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 531
    const-string v5, "CommandReceiver"

    const-string v6, "return isRecording.."

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 535
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 536
    const-string v5, "CommandReceiver"

    const-string v6, "return isAutoFocusing.."

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 540
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 542
    const/4 v2, 0x0

    .line 543
    .local v2, "firstModeId":I
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 544
    .local v3, "lastModeId":I
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v0

    .line 545
    .local v0, "currentModeId":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "currentModeId":I
    .local v1, "currentModeId":I
    if-lt v0, v3, :cond_18

    .line 546
    move v0, v2

    .line 549
    .end local v1    # "currentModeId":I
    .restart local v0    # "currentModeId":I
    :goto_1
    sparse-switch p1, :sswitch_data_0

    :goto_2
    move v4, v5

    .line 684
    goto :goto_0

    .line 552
    :sswitch_0
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getLowBatteryStatus()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 553
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    .line 554
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 555
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v6, 0x1c3

    iget-object v7, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8, v10}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/sec/android/app/camera/Camera;->showCameraDialog(ILjava/lang/String;Ljava/lang/String;)V

    :goto_3
    move v4, v5

    .line 560
    goto/16 :goto_0

    .line 558
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v6, v10, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 562
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureHighToUseFlash()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 563
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    .line 564
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 565
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v6, 0x1c4

    iget-object v7, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0801e6

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/sec/android/app/camera/Camera;->showCameraDialog(ILjava/lang/String;Ljava/lang/String;)V

    :goto_4
    move v4, v5

    .line 570
    goto/16 :goto_0

    .line 568
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0801e6

    invoke-static {v6, v7, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 572
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureLowToUseFlash()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 573
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    .line 574
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 575
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v6, 0x1c5

    iget-object v7, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/sec/android/app/camera/Camera;->showCameraDialog(ILjava/lang/String;Ljava/lang/String;)V

    :goto_5
    move v4, v5

    .line 580
    goto/16 :goto_0

    .line 578
    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v6, v9, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 582
    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_b

    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v6

    const/16 v7, 0x1c

    if-ge v6, v7, :cond_b

    .line 583
    if-ne v0, v5, :cond_b

    .line 584
    add-int/lit8 v0, v0, 0x1

    if-le v0, v3, :cond_b

    .line 585
    move v0, v2

    .line 590
    :cond_b
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->isTouchAEProcessing()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 591
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->removeAfRequest()V

    .line 592
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/camera/Camera;->resetTouchAE(Z)V

    .line 595
    :cond_c
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 596
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 599
    :cond_d
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusActive()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 600
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 603
    :cond_e
    if-ne v0, v5, :cond_f

    .line 604
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 608
    :goto_6
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    .line 609
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v6, "Z107"

    const/4 v7, 0x3

    invoke-static {v7, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 606
    :cond_f
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto :goto_6

    .line 613
    :sswitch_1
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getLowBatteryStatus()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 614
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    .line 615
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v6, v10, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 616
    goto/16 :goto_0

    .line 618
    :cond_10
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureHighToUseFlash()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 619
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    .line 620
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0801e6

    invoke-static {v6, v7, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 621
    goto/16 :goto_0

    .line 623
    :cond_11
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureLowToUseFlash()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 624
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    .line 625
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v6, v9, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 626
    goto/16 :goto_0

    .line 629
    :cond_12
    if-ne v0, v5, :cond_13

    .line 630
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 635
    :goto_7
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    .line 636
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v6, "Z106"

    const/16 v7, 0xaa

    invoke-static {v7, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 632
    :cond_13
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto :goto_7

    .line 639
    :sswitch_2
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraHDR(I)V

    .line 642
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->isTouchAEProcessing()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 643
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->removeAfRequest()V

    .line 644
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/camera/Camera;->resetTouchAE(Z)V

    .line 647
    :cond_14
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 648
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 651
    :cond_15
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusActive()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 652
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 655
    :cond_16
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopPreview()V

    .line 656
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v7, 0xc

    invoke-interface {v6, v7, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleChangeParameter(II)V

    .line 657
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartPreview()V

    .line 659
    if-ne v0, v5, :cond_17

    .line 660
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 664
    :goto_8
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v6, "Z087"

    const/16 v7, 0xc

    invoke-static {v7, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 662
    :cond_17
    iget-object v6, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto :goto_8

    .line 667
    :sswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGestureControlMode(I)V

    .line 668
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    goto/16 :goto_2

    .line 671
    :sswitch_4
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSaveRichTone(I)V

    goto/16 :goto_2

    .line 674
    :sswitch_5
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMultiAFMode(I)V

    .line 675
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/16 v6, 0x91

    const/16 v7, 0x91

    invoke-static {v7, v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(II)V

    goto/16 :goto_2

    .line 678
    :sswitch_6
    iget-object v4, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFoodBlurType(I)V

    goto/16 :goto_2

    .end local v0    # "currentModeId":I
    .restart local v1    # "currentModeId":I
    :cond_18
    move v0, v1

    .end local v1    # "currentModeId":I
    .restart local v0    # "currentModeId":I
    goto/16 :goto_1

    .line 549
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xc -> :sswitch_2
        0x22 -> :sswitch_4
        0x6a -> :sswitch_1
        0x6c -> :sswitch_0
        0x7d -> :sswitch_3
        0x8d -> :sswitch_6
        0x91 -> :sswitch_5
        0xaa -> :sswitch_1
    .end sparse-switch
.end method

.method public onVideoCollageRecTimeSelect(I)Z
    .locals 1
    .param p1, "recordingTime"    # I

    .prologue
    .line 689
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageRecordingTime(I)V

    .line 690
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 691
    const/4 v0, 0x1

    return v0
.end method

.method public onVideoCollageTypeMenuSelect(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x1

    .line 696
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageType(IZ)V

    .line 697
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 698
    return v1
.end method

.method public onWhiteBalanceSelect(I)Z
    .locals 2
    .param p1, "whiteBalance"    # I

    .prologue
    .line 703
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setWhiteBalance(I)V

    .line 704
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/sec/android/app/camera/CommandReceiver;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraEffect(I)V

    .line 707
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
