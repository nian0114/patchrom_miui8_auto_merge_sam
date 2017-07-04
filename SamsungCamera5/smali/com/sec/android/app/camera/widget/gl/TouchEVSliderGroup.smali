.class public Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "TouchEVSliderGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;
    }
.end annotation


# static fields
.field private static final PROEXPOSURE_NUM_OF_STEP:I

.field private static final PROEXPOSURE_VALUE_OFFSET:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final TOUCH_EV_CONTROL_ICON_HEIGHT:I

.field private static final TOUCH_EV_CONTROL_ICON_WIDTH:I

.field private static final TOUCH_EV_ICON_HEIGHT:I

.field private static final TOUCH_EV_ICON_PADDING:I

.field private static final TOUCH_EV_LEVEL_ICON_MARGIN:I

.field private static final TOUCH_EV_LEVEL_ICON_POS_X:I

.field private static final TOUCH_EV_MOVE_THRESHOLD_DIP:F = 10.0f

.field private static final TOUCH_EV_SLIDEBAR_HEIGHT:I

.field private static final TOUCH_EV_SLIDEBAR_POS_X:I

.field private static final TOUCH_EV_SLIDEBAR_WIDTH:I

.field private static final TOUCH_EV_SLIDE_GROUP_HEIGHT:I

.field private static final TOUCH_EV_SLIDE_GROUP_POS_X:I

.field private static final TOUCH_EV_SLIDE_GROUP_POS_Y:I

.field private static final TOUCH_EV_SLIDE_GROUP_WIDTH:I


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field public mIsTouchEVStartMove:Z

.field private mLastTouchPosX:I

.field private mLastTouchPosY:I

.field private mMinusImage:Lcom/samsung/android/glview/GLImage;

.field private mPlusImage:Lcom/samsung/android/glview/GLImage;

.field private mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

.field protected mTouchEVSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;

.field public mTouchEVStartMoveThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->SCREEN_WIDTH:I

    .line 35
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->SCREEN_HEIGHT:I

    .line 36
    const v0, 0x7f09026b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_WIDTH:I

    .line 37
    const v0, 0x7f090269

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_HEIGHT:I

    .line 38
    sget v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_WIDTH:I

    sub-int/2addr v0, v1

    const v1, 0x7f09026a

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_X:I

    .line 39
    sget v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_Y:I

    .line 40
    const v0, 0x7f09026e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_WIDTH:I

    .line 41
    const v0, 0x7f09026c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_HEIGHT:I

    .line 42
    const v0, 0x7f09026d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_POS_X:I

    .line 43
    const v0, 0x7f090266

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_PADDING:I

    .line 44
    const v0, 0x7f090265

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_HEIGHT:I

    .line 45
    const v0, 0x7f090267

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_MARGIN:I

    .line 46
    const v0, 0x7f090268

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_POS_X:I

    .line 47
    const v0, 0x7f090264

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_CONTROL_ICON_WIDTH:I

    .line 48
    const v0, 0x7f090263

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_CONTROL_ICON_HEIGHT:I

    .line 49
    const v0, 0x7f0a004d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->PROEXPOSURE_NUM_OF_STEP:I

    .line 50
    const v0, 0x7f0a004e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->PROEXPOSURE_VALUE_OFFSET:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 13
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 64
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    .line 52
    iput v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVStartMoveThreshold:F

    .line 53
    iput-boolean v12, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchEVStartMove:Z

    .line 55
    iput v12, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosX:I

    .line 56
    iput v12, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    .line 66
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 67
    invoke-virtual {p0, v11}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->setBypassTouch(Z)V

    .line 69
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLViewGroup;->setFocusable(Z)V

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLViewGroup;->setClickable(Z)V

    .line 75
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_POS_X:I

    int-to-float v2, v2

    const v3, 0x7f020012

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mPlusImage:Lcom/samsung/android/glview/GLImage;

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mPlusImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mPlusImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mPlusImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mPlusImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 81
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x7f020011

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mMinusImage:Lcom/samsung/android/glview/GLImage;

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mMinusImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mMinusImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mMinusImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mMinusImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 88
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_MARGIN:I

    sget v4, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_PADDING:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_CONTROL_ICON_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_CONTROL_ICON_HEIGHT:I

    int-to-float v8, v8

    const v9, 0x7f020013

    sget v10, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->PROEXPOSURE_NUM_OF_STEP:I

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setClipping(Z)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->initEVSlider()V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v0, v11}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setFocusable(Z)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v0, v11}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setClickable(Z)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    const v1, 0x7f0800a8

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setTitle(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$1;-><init>(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setSliderChangeListener(Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVStartMoveThreshold:F

    .line 114
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->PROEXPOSURE_VALUE_OFFSET:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    return-object v0
.end method


# virtual methods
.method public hideTouchEVSlider()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 120
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    .line 125
    return-void
.end method

.method public onTouchEVSliderTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 178
    :cond_0
    :goto_0
    return v2

    .line 130
    :pswitch_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchEVStartMove:Z

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosX:I

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    .line 133
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setLastTouchPosition(F)V

    .line 134
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeHideTouchEVMessage()V

    goto :goto_0

    .line 138
    :pswitch_1
    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosX:I

    .line 139
    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    .line 140
    iget-boolean v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchEVStartMove:Z

    if-eqz v4, :cond_0

    .line 141
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartHideTouchEVMessage()V

    .line 142
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeMSGToStopTouchAE()V

    .line 143
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchEVStartMove:Z

    move v2, v3

    .line 144
    goto :goto_0

    .line 148
    :pswitch_2
    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosX:I

    if-nez v4, :cond_1

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    if-nez v4, :cond_1

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosX:I

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    .line 151
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setLastTouchPosition(F)V

    .line 154
    :cond_1
    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 155
    .local v0, "moveX":I
    int-to-float v4, v0

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVStartMoveThreshold:F

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 159
    iget-boolean v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchEVStartMove:Z

    if-nez v4, :cond_2

    .line 160
    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 161
    .local v1, "moveY":I
    int-to-float v4, v1

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVStartMoveThreshold:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 162
    iput-boolean v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchEVStartMove:Z

    move v2, v3

    .line 163
    goto :goto_0

    .line 166
    .end local v1    # "moveY":I
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchEVStartMove:Z

    if-eqz v2, :cond_4

    .line 167
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    if-eqz v2, :cond_3

    .line 168
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->onStartMove(FF)V

    .line 169
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->startEVSliderAnimation()V

    .line 171
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosX:I

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    :cond_4
    move v2, v3

    .line 174
    goto/16 :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setTouchEVSliderChangeListener(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;

    .line 183
    return-void
.end method

.method public showTouchEVSlider()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    sget v1, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->PROEXPOSURE_VALUE_OFFSET:I

    add-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setCurrentEVStep(I)Z

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->updateEVSliderVI()V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->resetEVSliderAlpha()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->requestFocus()Z

    .line 197
    :cond_1
    return-void
.end method
