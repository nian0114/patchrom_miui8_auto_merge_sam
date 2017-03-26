.class public Lcom/sec/android/app/camera/widget/gl/AfAeButton;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "AfAeButton.java"


# static fields
.field private static final AE_COLOR:I

.field public static final AFAE_BASE_HEIGHT:I

.field public static final AFAE_BASE_WIDTH:I

.field private static final AFAE_FOCUS_MARGIN:F

.field public static final AFAE_GROUP_SIZE:I

.field private static final AFAE_TEXT_HEIGHT:F

.field private static final AFAE_TEXT_SIZE:F

.field private static final AFAE_TEXT_WIDTH:F

.field private static final AF_COLOR:I

.field private static final FOCUS_CIRCLE_THICKNESS:I

.field protected static final TAG:Ljava/lang/String; = "AfAeButton"


# instance fields
.field private mAFAEText:Lcom/samsung/android/glview/GLText;

.field private mAeText:Lcom/samsung/android/glview/GLText;

.field private mAeTranslateAni:Landroid/view/animation/Animation;

.field private mAeTranslateAniPortrait:Landroid/view/animation/Animation;

.field private mAfText:Lcom/samsung/android/glview/GLText;

.field private mAfTranslateAni:Landroid/view/animation/Animation;

.field private mAfTranslateAniPortrait:Landroid/view/animation/Animation;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mDivideAfCircle:Lcom/samsung/android/glview/GLCircle;

.field private mDivideAfGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mOldAePosX:I

.field private mOldAePosY:I

.field private mOldAfPosX:I

.field private mOldAfPosY:I

.field private mTouchAeCircle:Lcom/samsung/android/glview/GLCircle;

.field private mTouchAeGroup:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f090270

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_GROUP_SIZE:I

    .line 38
    const v0, 0x7f0902de

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_BASE_WIDTH:I

    .line 39
    const v0, 0x7f0902dd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_BASE_HEIGHT:I

    .line 41
    const v0, 0x7f0c0013

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AF_COLOR:I

    .line 42
    const v0, 0x7f0c003f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AE_COLOR:I

    .line 43
    const v0, 0x7f0a000a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->FOCUS_CIRCLE_THICKNESS:I

    .line 44
    const v0, 0x7f090271

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_TEXT_SIZE:F

    .line 45
    const v0, 0x7f090273

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_TEXT_WIDTH:F

    .line 46
    const v0, 0x7f090272

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_TEXT_HEIGHT:F

    .line 47
    const v0, 0x7f09026f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_FOCUS_MARGIN:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V
    .locals 10
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    .line 71
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 48
    const/16 v0, -0x270f

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mOldAfPosX:I

    .line 49
    const/16 v0, -0x270f

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mOldAfPosY:I

    .line 51
    const/16 v0, -0x270f

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mOldAePosX:I

    .line 52
    const/16 v0, -0x270f

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mOldAePosY:I

    .line 73
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->setBypassTouch(Z)V

    .line 76
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_GROUP_SIZE:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_GROUP_SIZE:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mTouchAeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mTouchAeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mTouchAeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setRotatable(Z)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mTouchAeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setCenterPivot(Z)V

    .line 81
    new-instance v0, Lcom/samsung/android/glview/GLCircle;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_FOCUS_MARGIN:F

    sget v3, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_FOCUS_MARGIN:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_BASE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_BASE_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AE_COLOR:I

    sget v7, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->FOCUS_CIRCLE_THICKNESS:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLCircle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mTouchAeCircle:Lcom/samsung/android/glview/GLCircle;

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mTouchAeCircle:Lcom/samsung/android/glview/GLCircle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mTouchAeGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mTouchAeCircle:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 85
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_TEXT_HEIGHT:F

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0800ef

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_TEXT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AE_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAFAEText:Lcom/samsung/android/glview/GLText;

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAFAEText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAFAEText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAFAEText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mTouchAeGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAFAEText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 92
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_TEXT_HEIGHT:F

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0800ee

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_TEXT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AE_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeText:Lcom/samsung/android/glview/GLText;

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mTouchAeGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mTouchAeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    .line 100
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_GROUP_SIZE:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_GROUP_SIZE:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mDivideAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mDivideAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mDivideAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setRotatable(Z)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mDivideAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setCenterPivot(Z)V

    .line 105
    new-instance v0, Lcom/samsung/android/glview/GLCircle;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_FOCUS_MARGIN:F

    sget v3, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_FOCUS_MARGIN:F

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_BASE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_BASE_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AF_COLOR:I

    sget v7, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->FOCUS_CIRCLE_THICKNESS:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLCircle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mDivideAfCircle:Lcom/samsung/android/glview/GLCircle;

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mDivideAfCircle:Lcom/samsung/android/glview/GLCircle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mDivideAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mDivideAfCircle:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 109
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_TEXT_HEIGHT:F

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0800f0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_TEXT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AF_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfText:Lcom/samsung/android/glview/GLText;

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mDivideAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mDivideAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mTouchAeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mDivideAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 121
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_BASE_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeTranslateAni:Landroid/view/animation/Animation;

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeTranslateAni:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_BASE_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_BASE_WIDTH:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeTranslateAni:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeTranslateAni:Landroid/view/animation/Animation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeTranslateAni:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeTranslateAni:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/AfAeButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/AfAeButton$1;-><init>(Lcom/sec/android/app/camera/widget/gl/AfAeButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 146
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_BASE_WIDTH:I

    neg-int v4, v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeTranslateAniPortrait:Landroid/view/animation/Animation;

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeTranslateAniPortrait:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_BASE_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_BASE_WIDTH:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeTranslateAniPortrait:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeTranslateAniPortrait:Landroid/view/animation/Animation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeTranslateAniPortrait:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeTranslateAniPortrait:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/AfAeButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/AfAeButton$2;-><init>(Lcom/sec/android/app/camera/widget/gl/AfAeButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 172
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_BASE_WIDTH:I

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfTranslateAni:Landroid/view/animation/Animation;

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfTranslateAni:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_BASE_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_BASE_WIDTH:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfTranslateAni:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfTranslateAni:Landroid/view/animation/Animation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfTranslateAni:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfTranslateAni:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/AfAeButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/AfAeButton$3;-><init>(Lcom/sec/android/app/camera/widget/gl/AfAeButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 197
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_BASE_WIDTH:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfTranslateAniPortrait:Landroid/view/animation/Animation;

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfTranslateAniPortrait:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_BASE_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_BASE_WIDTH:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfTranslateAniPortrait:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfTranslateAniPortrait:Landroid/view/animation/Animation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfTranslateAniPortrait:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfTranslateAniPortrait:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/AfAeButton$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/AfAeButton$4;-><init>(Lcom/sec/android/app/camera/widget/gl/AfAeButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 221
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/AfAeButton;)Lcom/samsung/android/glview/GLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeText:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/AfAeButton;)Lcom/samsung/android/glview/GLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAFAEText:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/AfAeButton;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mDivideAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/widget/gl/AfAeButton;)Lcom/samsung/android/glview/GLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfText:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 225
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
    .line 230
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public hideDivideAFButton()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/16 v2, -0x270f

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mDivideAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setDivideAFStarted(Z)V

    .line 238
    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mOldAfPosX:I

    .line 239
    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mOldAfPosY:I

    .line 240
    return-void
.end method

.method public hideTouchAEButton()V
    .locals 3

    .prologue
    const/16 v2, -0x270f

    const/4 v1, 0x4

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mTouchAeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAFAEText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 247
    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mOldAePosX:I

    .line 248
    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mOldAePosY:I

    .line 249
    return-void
.end method

.method public declared-synchronized setDivideAfPosition(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x6

    .line 258
    monitor-enter p0

    :try_start_0
    const-string v2, "AfAeButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDivideAfPosition - x: "

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

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sget v2, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_BASE_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int v0, p1, v2

    .line 260
    .local v0, "moveX":I
    sget v2, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_BASE_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sub-int v1, p2, v2

    .line 262
    .local v1, "moveY":I
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mOldAfPosX:I

    .line 263
    iput p2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mOldAfPosY:I

    .line 264
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mOldAfPosX:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v5, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mOldAfPosY:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v5, :cond_1

    .line 265
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mDivideAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, v0

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_FOCUS_MARGIN:F

    sub-float/2addr v3, v4

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_FOCUS_MARGIN:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 266
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mDivideAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 267
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 268
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAFAEText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 269
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_1
    monitor-exit p0

    return-void

    .line 258
    .end local v0    # "moveX":I
    .end local v1    # "moveY":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setTouchAePosition(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x6

    const/4 v6, 0x2

    .line 280
    monitor-enter p0

    :try_start_0
    const-string v2, "AfAeButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTouchAePosition - x: "

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

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    sget v2, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_BASE_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int v0, p1, v2

    .line 282
    .local v0, "moveX":I
    sget v2, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_BASE_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sub-int v1, p2, v2

    .line 284
    .local v1, "moveY":I
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mOldAePosX:I

    .line 285
    iput p2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mOldAePosY:I

    .line 286
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mOldAePosX:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v5, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mOldAePosY:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v5, :cond_3

    .line 287
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mTouchAeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->bringToFront()V

    .line 288
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mTouchAeGroup:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, v0

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_FOCUS_MARGIN:F

    sub-float/2addr v3, v4

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_FOCUS_MARGIN:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 289
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mTouchAeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 290
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isDivideAFAESupported()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDivideAFStarted()Z

    move-result v2

    if-nez v2, :cond_6

    .line 291
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 292
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mTouchAeGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeTranslateAni:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 296
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mTouchAeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 297
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 299
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mDivideAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, v0

    sget v4, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_FOCUS_MARGIN:F

    sub-float/2addr v3, v4

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->AFAE_FOCUS_MARGIN:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 300
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mDivideAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 301
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 302
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 303
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mDivideAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfTranslateAni:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 307
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mDivideAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    .line 294
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mTouchAeGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeTranslateAniPortrait:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 280
    .end local v0    # "moveX":I
    .end local v1    # "moveY":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 305
    .restart local v0    # "moveX":I
    .restart local v1    # "moveY":I
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mDivideAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfTranslateAniPortrait:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 309
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDivideAFStarted()Z

    move-result v2

    if-nez v2, :cond_7

    .line 310
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAFAEText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 311
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_2

    .line 313
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAFAEText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 314
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public showDivideAFIndicator()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mDivideAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->mAfText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 323
    return-void
.end method
