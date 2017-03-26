.class public Lcom/sec/android/app/camera/shootingmode/Antifog;
.super Ljava/lang/Object;
.source "Antifog.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/seccamera/SecCamera$HazeRemovalEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Anti-Fog"


# instance fields
.field private mAntiFogSliderMenu:Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mIsIndoor:Z

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 1
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 46
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 47
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 48
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 49
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 50
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 51
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntiFogSliderMenu:Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mIsIndoor:Z

    .line 60
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 61
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 62
    return-void
.end method

.method private isIndoor()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mIsIndoor:Z

    return v0
.end method


# virtual methods
.method public getMaxFileSizeOfImage()J
    .locals 2

    .prologue
    .line 66
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomAvailable()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 2
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setAntiFogListener(Lcom/sec/android/seccamera/SecCamera$HazeRemovalEventListener;)V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAntiFogLevel(I)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x75

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntiFogSliderMenu:Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntiFogSliderMenu:Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 91
    return-void

    .line 82
    :array_0
    .array-data 4
        0x6
        0x75
        0x4
    .end array-data
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public onChangeShootingModeParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 0
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    .line 100
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 0
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 105
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 106
    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 107
    return-void
.end method

.method public onEngineStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 111
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setAntiFogLevelSync(I)V

    .line 114
    :cond_0
    return-void
.end method

.method public onHazeRemovalCapturingProgressed(II)V
    .locals 8
    .param p1, "progress"    # I
    .param p2, "maxImageNum"    # I

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x1a

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 118
    const-string v1, "Anti-Fog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHazeRemovalCapturingProgressed, progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " maxImageNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 120
    if-nez p1, :cond_0

    .line 121
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mIsIndoor:Z

    .line 122
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080065

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 123
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 156
    .end local v0    # "toast":Landroid/widget/Toast;
    :goto_0
    return-void

    .line 125
    :cond_0
    iput-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mIsIndoor:Z

    goto :goto_0

    .line 130
    :cond_1
    if-le p1, p2, :cond_2

    .line 131
    const-string v1, "Anti-Fog"

    const-string v2, "exceed max image number."

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_2
    const/16 v1, 0x64

    if-ge p1, v1, :cond_5

    .line 136
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 138
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 139
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v5, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 147
    :cond_4
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0

    .line 141
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 143
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v5, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    goto :goto_1

    .line 149
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 151
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0xbb8

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFS(I)V

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setAntiFogLevelSync(I)V

    .line 161
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Antifog;->isIndoor()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 168
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->clearSideQuickSetting()V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setAntiFogListener(Lcom/sec/android/seccamera/SecCamera$HazeRemovalEventListener;)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntiFogSliderMenu:Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 179
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 1
    .param p1, "captureMethod"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(I)V

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 220
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 224
    const-string v0, "Anti-Fog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimerEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 231
    :cond_1
    if-nez p1, :cond_3

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 242
    :cond_3
    :goto_0
    return-void

    .line 238
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method
