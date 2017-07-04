.class public Lcom/sec/android/app/camera/widget/gl/AfButton;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "AfButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/AfButton$EndAction;,
        Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;
    }
.end annotation


# static fields
.field private static final CONTRAST_AF_HEIGHT:I

.field private static final CONTRAST_AF_WIDTH:I

.field private static MAX_PAF_CONTROL_POSITION:F = 0.0f

.field private static MAX_PAF_LENS_POSITION:I = 0x0

.field private static final MAX_SCALE_VALUE:F = 1.0f

.field private static MIN_PAF_CONTROL_POSITION:F = 0.0f

.field private static final MIN_SCALE_VALUE:F = 0.9f

.field public static final MODE_FOCUS:I = 0x1

.field public static final MODE_NOTREADY:I = 0x0

.field private static PAF_CONTROL_DURATION:I = 0x0

.field private static PAF_RELIABILITY_THRESHOLD:I = 0x0

.field private static PAF_RELIABILITY_THRESHOLD_TOUCH_AF:I = 0x0

.field private static final PHASE_AF_BASE_HEIGHT:I

.field private static final PHASE_AF_BASE_WIDTH:I

.field private static final PHASE_AF_CONTROL_HEIGHT:I

.field private static final PHASE_AF_CONTROL_WIDTH:I

.field protected static final TAG:Ljava/lang/String; = "AfButton"


# instance fields
.field private mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mAfGroupPosX:I

.field private mAfGroupPosY:I

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mDegrees:F

.field private mEndAction:Landroid/view/animation/Animation$AnimationListener;

.field private mFocusUI_Base:Lcom/samsung/android/glview/GLResourceTexture;

.field private mFocusUI_Control:Lcom/samsung/android/glview/GLResourceTexture;

.field private mGrowScaleAnimation:Landroid/view/animation/Animation;

.field private mMode:I

.field private mOldPosX:I

.field private mOldPosY:I

.field private mPhaseRotateAnimation:Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;

.field private mReliability:I

.field private mShrinkScaleAnimation:Landroid/view/animation/Animation;

.field private mTranslateGrowAnimation:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f0902ff

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_WIDTH:I

    .line 46
    const v0, 0x7f0902fe

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_HEIGHT:I

    .line 47
    const v0, 0x7f09033d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_WIDTH:I

    .line 48
    const v0, 0x7f09033c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_HEIGHT:I

    .line 49
    const v0, 0x7f09033f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_CONTROL_WIDTH:I

    .line 50
    const v0, 0x7f09033e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_CONTROL_HEIGHT:I

    .line 54
    const/16 v0, 0x96

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PAF_CONTROL_DURATION:I

    .line 55
    const/16 v0, 0x190

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->MAX_PAF_LENS_POSITION:I

    .line 56
    const/high16 v0, 0x42340000    # 45.0f

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->MIN_PAF_CONTROL_POSITION:F

    .line 57
    const/high16 v0, 0x43340000    # 180.0f

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->MAX_PAF_CONTROL_POSITION:F

    .line 58
    const/16 v0, 0x32

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PAF_RELIABILITY_THRESHOLD:I

    .line 59
    const/16 v0, 0x384

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PAF_RELIABILITY_THRESHOLD_TOUCH_AF:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V
    .locals 9
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    .line 80
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mMode:I

    .line 72
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mDegrees:F

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mReliability:I

    .line 77
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/AfButton$EndAction;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/gl/AfButton$EndAction;-><init>(Lcom/sec/android/app/camera/widget/gl/AfButton;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mEndAction:Landroid/view/animation/Animation$AnimationListener;

    .line 82
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->setBypassTouch(Z)V

    .line 87
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02000a

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusUI_Base:Lcom/samsung/android/glview/GLResourceTexture;

    .line 90
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_CONTROL_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_CONTROL_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_CONTROL_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_CONTROL_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02000b

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusUI_Control:Lcom/samsung/android/glview/GLResourceTexture;

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusUI_Control:Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLResourceTexture;->setRotatable(Z)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusUI_Control:Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLResourceTexture;->setCenterPivot(Z)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusUI_Control:Lcom/samsung/android/glview/GLResourceTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLResourceTexture;->setRotateAnimation(Z)V

    .line 96
    sget v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_WIDTH:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosX:I

    .line 97
    sget v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_HEIGHT:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosY:I

    .line 99
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosX:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosY:I

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusUI_Base:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusUI_Control:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 121
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosY:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 124
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusUI_Control:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 129
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v0, :cond_2

    .line 130
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f666666    # 0.9f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    sget v1, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_HEIGHT:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/AfButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/AfButton$1;-><init>(Lcom/sec/android/app/camera/widget/gl/AfButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 160
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f666666    # 0.9f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    sget v1, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_HEIGHT:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/AfButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/AfButton$2;-><init>(Lcom/sec/android/app/camera/widget/gl/AfButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 185
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mTranslateGrowAnimation:Landroid/view/animation/Animation;

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mTranslateGrowAnimation:Landroid/view/animation/Animation;

    sget v1, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_HEIGHT:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mTranslateGrowAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mTranslateGrowAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mTranslateGrowAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 251
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mMode:I

    .line 252
    return-void

    .line 106
    :cond_1
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020024

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusUI_Base:Lcom/samsung/android/glview/GLResourceTexture;

    .line 107
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_WIDTH:I

    int-to-float v4, v4

    const v5, 0x3f99999a    # 1.2f

    mul-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v6

    const v6, 0x7f020024

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusUI_Control:Lcom/samsung/android/glview/GLResourceTexture;

    .line 108
    sget v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_WIDTH:I

    int-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosX:I

    .line 109
    sget v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosY:I

    .line 111
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosX:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosY:I

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusUI_Base:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_0

    .line 191
    :cond_2
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f8ccccd    # 1.1f

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3f8ccccd    # 1.1f

    const v4, 0x3f4ccccd    # 0.8f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosX:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosY:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/AfButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/AfButton$3;-><init>(Lcom/sec/android/app/camera/widget/gl/AfButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 218
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f8ccccd    # 1.1f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f8ccccd    # 1.1f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosX:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosY:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/AfButton$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/AfButton$4;-><init>(Lcom/sec/android/app/camera/widget/gl/AfButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 244
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mTranslateGrowAnimation:Landroid/view/animation/Animation;

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mTranslateGrowAnimation:Landroid/view/animation/Animation;

    sget v1, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_HEIGHT:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mTranslateGrowAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mTranslateGrowAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mTranslateGrowAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/AfButton;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AfButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/AfButton;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AfButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PAF_RELIABILITY_THRESHOLD:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/widget/gl/AfButton;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AfButton;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mMode:I

    return p1
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PAF_CONTROL_DURATION:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/widget/gl/AfButton;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AfButton;

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mDegrees:F

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/widget/gl/AfButton;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AfButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/widget/gl/AfButton;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AfButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/widget/gl/AfButton;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AfButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/widget/gl/AfButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AfButton;

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mReliability:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PAF_RELIABILITY_THRESHOLD_TOUCH_AF:I

    return v0
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 256
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 261
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public hideAfView()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 265
    const-string v0, "AfButton"

    const-string v1, "hideAfView"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 268
    return-void
.end method

.method public setPositionGap(I)V
    .locals 4
    .param p1, "positionGap"    # I

    .prologue
    .line 271
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 272
    .local v0, "diff":I
    sget v1, Lcom/sec/android/app/camera/widget/gl/AfButton;->MIN_PAF_CONTROL_POSITION:F

    sget v2, Lcom/sec/android/app/camera/widget/gl/AfButton;->MAX_PAF_CONTROL_POSITION:F

    sget v3, Lcom/sec/android/app/camera/widget/gl/AfButton;->MIN_PAF_CONTROL_POSITION:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/widget/gl/AfButton;->MAX_PAF_LENS_POSITION:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 274
    int-to-float v1, v0

    sget v2, Lcom/sec/android/app/camera/widget/gl/AfButton;->MAX_PAF_CONTROL_POSITION:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 275
    sget v1, Lcom/sec/android/app/camera/widget/gl/AfButton;->MAX_PAF_CONTROL_POSITION:F

    float-to-int v0, v1

    .line 278
    :cond_0
    if-lez p1, :cond_1

    .line 279
    mul-int/lit8 v1, v0, -0x1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mDegrees:F

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_1
    int-to-float v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mDegrees:F

    goto :goto_0
.end method

.method public setReliability(I)V
    .locals 0
    .param p1, "reliability"    # I

    .prologue
    .line 286
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mReliability:I

    .line 287
    return-void
.end method

.method public setTouchAfPosition(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x6

    .line 290
    const-string v2, "AfButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTouchAfPosition- x: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosX:I

    div-int/lit8 v2, v2, 0x2

    sub-int v0, p1, v2

    .line 293
    .local v0, "moveX":I
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosY:I

    div-int/lit8 v2, v2, 0x2

    sub-int v1, p2, v2

    .line 295
    .local v1, "moveY":I
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mOldPosX:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v5, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mOldPosY:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v5, :cond_1

    .line 296
    :cond_0
    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mOldPosX:I

    .line 297
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mOldPosY:I

    .line 299
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/AfButton;->translateAbsolute(FF)V

    .line 302
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->showAfView()V

    .line 303
    return-void
.end method

.method public showAfProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v0, :cond_0

    .line 308
    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mReliability:I

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 319
    :goto_0
    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mMode:I

    .line 320
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    goto :goto_0
.end method

.method public showAfView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 323
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mMode:I

    if-eq v0, v3, :cond_0

    .line 324
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mTranslateGrowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 333
    iput v3, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mMode:I

    .line 335
    :cond_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public startPhaseInfoAnimation(JFFLandroid/view/animation/Interpolator;Z)V
    .locals 9
    .param p1, "duration"    # J
    .param p3, "fromDegrees"    # F
    .param p4, "toDegrees"    # F
    .param p5, "i"    # Landroid/view/animation/Interpolator;
    .param p6, "hasEndAction"    # Z

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mPhaseRotateAnimation:Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mDegrees:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusUI_Control:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLResourceTexture;->getLeft()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusUI_Control:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLResourceTexture;->getWidth()F

    move-result v5

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusUI_Control:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLResourceTexture;->getTop()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusUI_Control:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLResourceTexture;->getHeight()F

    move-result v6

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mPhaseRotateAnimation:Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mPhaseRotateAnimation:Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusUI_Control:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLResourceTexture;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusUI_Control:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLResourceTexture;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->initialize(IIII)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mPhaseRotateAnimation:Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->reset()V

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mPhaseRotateAnimation:Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->setDuration(J)V

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mPhaseRotateAnimation:Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;

    invoke-virtual {v0, p5}, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mPhaseRotateAnimation:Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;

    invoke-virtual {v0, p3, p4}, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->setDegree(FF)V

    .line 347
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mPhaseRotateAnimation:Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;

    if-eqz p6, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mEndAction:Landroid/view/animation/Animation$AnimationListener;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusUI_Control:Lcom/samsung/android/glview/GLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mPhaseRotateAnimation:Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLResourceTexture;->setAnimation(Landroid/view/animation/Animation;)V

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusUI_Control:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLResourceTexture;->startAnimation()V

    .line 350
    return-void

    .line 347
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
