.class public Lcom/sec/android/app/camera/menu/OverlayHelp;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "OverlayHelp.java"


# static fields
.field private static final KEY_HRM_SENSOR_CAPTURE_GUIDE_ENABLED:Ljava/lang/String; = "pref_global_hrm_sensor_capture_guide_enabled"

.field protected static final TAG:Ljava/lang/String; = "OverlayHelp"


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field protected mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field protected mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mHRMSensorCaptureGuideView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 45
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 52
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 54
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/OverlayHelp;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->setHRMSensorCaptureGuideEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method private isHRMSensorCaptureGuideEnabled()Z
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_hrm_sensor_capture_guide_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setHRMSensorCaptureGuideEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_hrm_sensor_capture_guide_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 146
    const-string v0, "OverlayHelp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHRMSensorCaptureGuideEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_hrm_sensor_capture_guide_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public disableHRMSensorCaptureGuide()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->setHRMSensorCaptureGuideEnabled(Z)V

    .line 59
    return-void
.end method

.method public hideHRMSensorCaptureGuide()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->enableFocusNavigation()V

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayHelp$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$1;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->startFaceDetection()V

    goto :goto_0
.end method

.method public isHRMSensorCaptureGuideShowing()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showHRMSensorCaptureGuide()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 92
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isHRMSensorCaptureGuideEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isHRMSensorCaptureGuideShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 98
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLContext;->disableFocusNavigation()V

    .line 104
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 105
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    const v3, 0x7f040009

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    .line 110
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    new-instance v4, Lcom/sec/android/app/camera/menu/OverlayHelp$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$2;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 117
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    const v4, 0x7f0e000f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 118
    .local v2, "textView":Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 120
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    const v4, 0x7f0e0010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 121
    .local v0, "button":Landroid/widget/Button;
    new-instance v3, Lcom/sec/android/app/camera/menu/OverlayHelp$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$3;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/menu/OverlayHelp$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$4;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 108
    .end local v0    # "button":Landroid/widget/Button;
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_2
    const v3, 0x7f040008

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    goto :goto_1
.end method
