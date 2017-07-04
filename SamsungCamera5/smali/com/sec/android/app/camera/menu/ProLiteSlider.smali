.class public Lcom/sec/android/app/camera/menu/ProLiteSlider;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ProLiteSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;,
        Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;,
        Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderShowListener;,
        Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_150:I = 0x96

.field private static final EXPOSURE_INDICATOR_COUNT:I = 0x5

.field private static final EXPOSURE_INDICATOR_TEXT:[Ljava/lang/String;

.field private static final HIDE_SLIDER_TIMER_INTERVAL:J = 0xbb8L

.field private static final HIDE_SLIDER_TIME_OUT_MSG:I = 0x0

.field private static final INDICATOR_TEXT_COLOR:I

.field private static final INDICATOR_TEXT_SIZE:I

.field private static final INDICATOR_TEXT_STROKE_COLOR:I

.field private static final INDICATOR_TEXT_STROKE_WIDTH:I

.field private static final ISO_INDICATOR_COUNT:I

.field private static final ISO_INDICATOR_TEXT:[Ljava/lang/String;

.field private static final ISO_NUM_OF_STEP:I

.field private static final PROEXPOSURE_NUM_OF_STEP:I

.field private static final PROEXPOSURE_VALUE_OFFSET:I

.field private static final PRO_ITEM_WIDTH:I

.field private static final PRO_SLIDEBAR_HEIGHT:I

.field private static final PRO_SLIDEBAR_TOUCH_AREA_HEIGHT:I

.field private static final PRO_SLIDEBAR_TOUCH_AREA_WIDTH:I

.field private static final PRO_SLIDEBAR_WIDTH:I

.field private static final PRO_SLIDE_GROUP_WIDTH:I

.field private static final PRO_SLIDE_INDICATOR_POS_X:I

.field private static final PRO_SLIDE_INDICATOR_RIGHT_MARGIN:I

.field private static final PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

.field private static final PRO_SLIDE_INDICATOR_SIZE:I

.field private static final PRO_SLIDE_RIGHT_MARGIN:I

.field private static final PRO_SLIDE_SIDE_MARGIN:I

.field private static final PRO_SLIDE_SLIDER_POS_X:I

.field private static final PRO_SLIDE_SLIDER_RIGHT_MARGIN:I

.field private static final PRO_SLIDE_STEP_BUTTON_POS_X:I

.field private static final PRO_SLIDE_STEP_BUTTON_RIGHT_MARGIN:I

.field private static final PRO_SLIDE_STEP_BUTTON_WIDTH:I

.field private static final PRO_SLIDE_VALUE_TEXT_MARGIN:I

.field private static final PRO_SLIDE_VALUE_TEXT_SIZE:I

.field private static final PRO_SLIDE_VALUE_TEXT_WIDTH:I

.field private static final PRO_SLIDE_WIDTH:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field public static final SLIDER_ID_EXPOSUREVALUE:I = 0x0

.field public static final SLIDER_ID_ISO:I = 0x1

.field public static final SLIDER_ID_WB:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "ProLiteSlider"

.field private static final WB_INDICATOR_COUNT:I = 0x5

.field private static final WB_NUM_OF_STEP:I


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mExposureIndicator:[Lcom/samsung/android/glview/GLText;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mISOIndicator:[Lcom/samsung/android/glview/GLText;

.field private mIsISOAutoDimmed:Z

.field private mProSlider:Lcom/samsung/android/glview/GLSlider;

.field private mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mProSliderHandler:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;

.field protected mProSliderHideListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;

.field protected mProSliderShowListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderShowListener;

.field protected mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mSliderId:I

.field private mStepDownButton:Lcom/samsung/android/glview/GLButton;

.field private mStepUpButton:Lcom/samsung/android/glview/GLButton;

.field private mValue:I

.field private mValueText:Lcom/samsung/android/glview/GLText;

.field private mWBIndicator:[Lcom/samsung/android/glview/GLImage;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/4 v2, 0x5

    const/4 v1, 0x4

    .line 51
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_WIDTH:I

    .line 52
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    .line 53
    const v0, 0x7f090167

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_ITEM_WIDTH:I

    .line 54
    const v0, 0x7f090161

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_RIGHT_MARGIN:I

    .line 55
    const v0, 0x7f090180

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_SIDE_MARGIN:I

    .line 56
    sget v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_RIGHT_MARGIN:I

    sub-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_ITEM_WIDTH:I

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_GROUP_WIDTH:I

    .line 57
    const v0, 0x7f090174

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_WIDTH:I

    .line 58
    const v0, 0x7f090178

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    .line 59
    const v0, 0x7f09016e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_RIGHT_MARGIN:I

    .line 60
    sget v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_GROUP_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_RIGHT_MARGIN:I

    sub-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_POS_X:I

    .line 61
    const v0, 0x7f09016f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    .line 62
    const v0, 0x7f090175

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_WIDTH:I

    .line 63
    sget v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_HEIGHT:I

    .line 64
    const v0, 0x7f090183

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_TOUCH_AREA_WIDTH:I

    .line 65
    const v0, 0x7f090183

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_TOUCH_AREA_HEIGHT:I

    .line 66
    const v0, 0x7f09017d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_SLIDER_RIGHT_MARGIN:I

    .line 67
    sget v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_GROUP_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_SLIDER_RIGHT_MARGIN:I

    sub-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_WIDTH:I

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_SLIDER_POS_X:I

    .line 68
    const v0, 0x7f090186

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_RIGHT_MARGIN:I

    .line 69
    const v0, 0x7f090181

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    .line 70
    sget v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_POS_X:I

    sget v3, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_RIGHT_MARGIN:I

    sub-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_POS_X:I

    .line 71
    const v0, 0x7f090185

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    .line 72
    const v0, 0x7f090184

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_MARGIN:I

    .line 73
    sget v0, Lcom/sec/android/app/camera/feature/Feature;->EXPOSURE_COMPENSATION_STEP:F

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a004e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    :goto_0
    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_VALUE_OFFSET:I

    .line 74
    sget v0, Lcom/sec/android/app/camera/feature/Feature;->EXPOSURE_COMPENSATION_STEP:F

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a004d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    :goto_1
    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_NUM_OF_STEP:I

    .line 75
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_MAX_ISO:Ljava/lang/String;

    const-string v3, "400"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a0046

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_NUM_OF_STEP:I

    .line 76
    const v0, 0x7f0a0049

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->WB_NUM_OF_STEP:I

    .line 77
    const v0, 0x7f0a0006

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_SIZE:I

    .line 78
    const v0, 0x7f0c000f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_COLOR:I

    .line 79
    const v0, 0x7f0a0023

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_STROKE_WIDTH:I

    .line 80
    const v0, 0x7f0c0027

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_STROKE_COLOR:I

    .line 81
    const v0, 0x7f0a0007

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_SIZE:I

    .line 82
    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "+2"

    aput-object v3, v0, v5

    const-string v3, "+1"

    aput-object v3, v0, v6

    const/4 v3, 0x2

    const-string v4, "0"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "-1"

    aput-object v4, v0, v3

    const-string v3, "-2"

    aput-object v3, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->EXPOSURE_INDICATOR_TEXT:[Ljava/lang/String;

    .line 83
    new-array v0, v2, [Ljava/lang/String;

    const v3, 0x7f080236

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    const v3, 0x7f080231

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    const/4 v3, 0x2

    const v4, 0x7f08022d

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const v4, 0x7f080229

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "Auto"

    aput-object v3, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_INDICATOR_TEXT:[Ljava/lang/String;

    .line 88
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_MAX_ISO:Ljava/lang/String;

    const-string v3, "400"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    sput v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_INDICATOR_COUNT:I

    return-void

    .line 73
    :cond_0
    const v0, 0x7f0a0048

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    goto/16 :goto_0

    .line 74
    :cond_1
    const v0, 0x7f0a0047

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    goto/16 :goto_1

    .line 75
    :cond_2
    const v0, 0x7f0a0046

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 88
    goto :goto_3
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V
    .locals 7
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "viewId"    # I

    .prologue
    const/16 v6, 0x96

    .line 122
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 112
    new-instance v0, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderId:I

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mIsISOAutoDimmed:Z

    .line 123
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 124
    iput p6, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderId:I

    .line 126
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->initProSlider()V

    .line 128
    new-instance v0, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v6, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mShowAnimation:Landroid/view/animation/Animation;

    .line 129
    new-instance v0, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v6, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mHideAnimation:Landroid/view/animation/Animation;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 46
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/menu/ProLiteSlider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    return p1
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_VALUE_OFFSET:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mIsISOAutoDimmed:Z

    return v0
.end method

.method private initProSlider()V
    .locals 22

    .prologue
    .line 288
    new-instance v3, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v7, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_GROUP_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 291
    new-instance v3, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_POS_X:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    int-to-float v8, v8

    const v9, 0x7f020152

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0802e8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setClickable(Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setRepeatClickWhenLongClicked(Z)V

    .line 297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$1;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 306
    new-instance v3, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_POS_X:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    int-to-float v8, v8

    const v9, 0x7f020153

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0802e7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setClickable(Z)V

    .line 310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setRepeatClickWhenLongClicked(Z)V

    .line 312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$2;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 323
    new-instance v3, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_GROUP_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_MARGIN:I

    sub-int/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sget v7, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    int-to-float v8, v8

    const-string v9, ""

    sget v10, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_SIZE:I

    int-to-float v10, v10

    sget v11, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_COLOR:I

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    .line 325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x1

    sget v5, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_STROKE_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/samsung/android/glview/GLText;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_GROUP_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_MARGIN:I

    sub-int/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sget v7, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x2

    sget v5, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_GROUP_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_MARGIN:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sget v7, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x3

    sget v5, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_POS_X:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sget v7, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x1

    sget v5, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_STEP_BUTTON_POS_X:I

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sget v7, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 337
    const/16 v19, 0x0

    .line 338
    .local v19, "indicatorInterval":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderId:I

    packed-switch v3, :pswitch_data_0

    .line 614
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 618
    return-void

    .line 340
    :pswitch_0
    new-instance v3, Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_SLIDER_POS_X:I

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_SIDE_MARGIN:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_HEIGHT:I

    int-to-float v8, v8

    const v9, 0x7f020169

    sget v10, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_NUM_OF_STEP:I

    const/4 v11, 0x1

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0800a8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080060

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setTitle(Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const v4, 0x7f020084

    const v5, 0x7f020085

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_VALUE_OFFSET:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setGaugeZeroStep(I)V

    .line 345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_VALUE_OFFSET:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setClickable(Z)V

    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$3;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 356
    sget v3, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    mul-int/lit8 v4, v4, 0x5

    sub-int/2addr v3, v4

    div-int/lit8 v19, v3, 0x4

    .line 357
    const/4 v3, 0x5

    new-array v3, v3, [Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    .line 358
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    const/4 v3, 0x5

    if-ge v13, v3, :cond_0

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    move-object/from16 v21, v0

    new-instance v3, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_POS_X:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    sget v7, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    add-int v7, v7, v19

    mul-int/2addr v7, v13

    add-int/2addr v6, v7

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    int-to-float v8, v8

    sget-object v9, Lcom/sec/android/app/camera/menu/ProLiteSlider;->EXPOSURE_INDICATOR_TEXT:[Ljava/lang/String;

    aget-object v9, v9, v13

    sget v10, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_SIZE:I

    int-to-float v10, v10

    sget v11, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_COLOR:I

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    aput-object v3, v21, v13

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightBOLDFont()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    sget v5, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_STROKE_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setClickable(Z)V

    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    .line 370
    const/4 v3, 0x5

    new-array v0, v3, [I

    move-object/from16 v16, v0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x1

    aput v4, v16, v3

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0xb

    aput v4, v16, v3

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x15

    aput v4, v16, v3

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x1f

    aput v4, v16, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput v4, v16, v3

    .line 371
    .local v16, "indicatorExposureValue":[I
    const/4 v3, 0x5

    new-array v15, v3, [I

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x1

    aput v4, v15, v3

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x3

    aput v4, v15, v3

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x5

    aput v4, v15, v3

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x7

    aput v4, v15, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput v4, v15, v3

    .line 372
    .local v15, "indicatorExposureLiteValue":[I
    move v14, v13

    .line 373
    .local v14, "index":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1, v14, v15}, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;[II[I)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1, v14, v15}, Lcom/sec/android/app/camera/menu/ProLiteSlider$5;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;[II[I)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 358
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 413
    .end local v14    # "index":I
    .end local v15    # "indicatorExposureLiteValue":[I
    .end local v16    # "indicatorExposureValue":[I
    :cond_0
    const/4 v13, 0x0

    :goto_2
    const/4 v3, 0x5

    if-ge v13, v3, :cond_1

    .line 414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v4, v4, v13

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 413
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 416
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_0

    .line 419
    .end local v13    # "i":I
    :pswitch_1
    new-instance v3, Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_SLIDER_POS_X:I

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_SIDE_MARGIN:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_HEIGHT:I

    int-to-float v8, v8

    const v9, 0x7f020169

    sget v10, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_NUM_OF_STEP:I

    const/4 v11, 0x1

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0800b8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080060

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setTitle(Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const v4, 0x7f020084

    const v5, 0x7f020085

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setGaugeZeroStep(I)V

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    .line 426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setClickable(Z)V

    .line 427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$6;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$7;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 457
    sget v3, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    sget v5, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_INDICATOR_COUNT:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_INDICATOR_COUNT:I

    add-int/lit8 v4, v4, -0x1

    div-int v19, v3, v4

    .line 458
    sget v3, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_INDICATOR_COUNT:I

    new-array v3, v3, [Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    .line 459
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    sget v3, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_INDICATOR_COUNT:I

    if-ge v13, v3, :cond_3

    .line 460
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_MAX_ISO:Ljava/lang/String;

    const-string v4, "400"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    move-object/from16 v21, v0

    new-instance v3, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_POS_X:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    sget v7, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    add-int v7, v7, v19

    mul-int/2addr v7, v13

    add-int/2addr v6, v7

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    int-to-float v8, v8

    sget-object v9, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_INDICATOR_TEXT:[Ljava/lang/String;

    add-int/lit8 v10, v13, 0x1

    aget-object v9, v9, v10

    sget v10, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_SIZE:I

    int-to-float v10, v10

    sget v11, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_COLOR:I

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    aput-object v3, v21, v13

    .line 469
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 471
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 472
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightBOLDFont()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setStrokeVisibility(Z)V

    .line 474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setClickable(Z)V

    .line 476
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    .line 477
    const/4 v3, 0x5

    new-array v0, v3, [I

    move-object/from16 v18, v0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x1

    aput v4, v18, v3

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x2

    aput v4, v18, v3

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x3

    aput v4, v18, v3

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x4

    aput v4, v18, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput v4, v18, v3

    .line 478
    .local v18, "indicatorISOValue":[I
    const/4 v3, 0x4

    new-array v0, v3, [I

    move-object/from16 v17, v0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x1

    aput v4, v17, v3

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x2

    aput v4, v17, v3

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_NUM_OF_STEP:I

    add-int/lit8 v4, v4, -0x3

    aput v4, v17, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput v4, v17, v3

    .line 479
    .local v17, "indicatorISOLiteValue":[I
    move v14, v13

    .line 480
    .restart local v14    # "index":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v4, v0, v1, v14, v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider$8;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;[II[I)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v13

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v4, v0, v1, v14, v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider$9;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;[II[I)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLText;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 459
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 465
    .end local v14    # "index":I
    .end local v17    # "indicatorISOLiteValue":[I
    .end local v18    # "indicatorISOValue":[I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    move-object/from16 v21, v0

    new-instance v3, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_POS_X:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    sget v7, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    add-int v7, v7, v19

    mul-int/2addr v7, v13

    add-int/2addr v6, v7

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    int-to-float v8, v8

    sget-object v9, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_INDICATOR_TEXT:[Ljava/lang/String;

    aget-object v9, v9, v13

    sget v10, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_SIZE:I

    int-to-float v10, v10

    sget v11, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_COLOR:I

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    aput-object v3, v21, v13

    goto/16 :goto_4

    .line 516
    :cond_3
    const/4 v13, 0x0

    :goto_5
    sget v3, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_INDICATOR_COUNT:I

    if-ge v13, v3, :cond_4

    .line 517
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v4, v4, v13

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 516
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 519
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_0

    .line 523
    .end local v13    # "i":I
    :pswitch_2
    new-instance v3, Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_SLIDER_POS_X:I

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_SIDE_MARGIN:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_HEIGHT:I

    int-to-float v8, v8

    const v9, 0x7f020169

    sget v10, Lcom/sec/android/app/camera/menu/ProLiteSlider;->WB_NUM_OF_STEP:I

    const/4 v11, 0x1

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    .line 525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0800e2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080060

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setTitle(Ljava/lang/String;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const v4, 0x7f020084

    const v5, 0x7f020085

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    .line 527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setGaugeZeroStep(I)V

    .line 528
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    .line 530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setClickable(Z)V

    .line 531
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$10;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 539
    sget v3, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    mul-int/lit8 v4, v4, 0x5

    sub-int/2addr v3, v4

    div-int/lit8 v19, v3, 0x4

    .line 540
    const/4 v3, 0x5

    new-array v3, v3, [Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    .line 541
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_6
    const/4 v3, 0x5

    if-ge v13, v3, :cond_5

    .line 542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v5

    sget v6, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_POS_X:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    sget v8, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    add-int v8, v8, v19

    mul-int/2addr v8, v13

    add-int/2addr v7, v8

    int-to-float v7, v7

    const/16 v8, 0x9

    rsub-int/lit8 v9, v13, 0x5

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v9}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v8

    iget v8, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v3, v13

    .line 545
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0x9

    rsub-int/lit8 v6, v13, 0x5

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v5

    iget v5, v5, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setClickable(Z)V

    .line 548
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 549
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 550
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    .line 551
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setClickable(Z)V

    .line 552
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v13

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setFocusable(Z)V

    .line 553
    const/4 v3, 0x6

    new-array v0, v3, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_0

    .line 554
    .local v20, "indicatorWBValue":[I
    move v14, v13

    .line 555
    .restart local v14    # "index":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v13

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$11;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1, v14}, Lcom/sec/android/app/camera/menu/ProLiteSlider$11;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;[II)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v13

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$12;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1, v14}, Lcom/sec/android/app/camera/menu/ProLiteSlider$12;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;[II)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 541
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    .line 591
    .end local v14    # "index":I
    .end local v20    # "indicatorWBValue":[I
    :cond_5
    const/4 v13, 0x0

    :goto_7
    const/4 v3, 0x5

    if-ge v13, v3, :cond_6

    .line 592
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v4, v4, v13

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 591
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 594
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 598
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$13;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    new-instance v4, Lcom/sec/android/app/camera/menu/ProLiteSlider$14;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$14;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    goto/16 :goto_0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 553
    :array_0
    .array-data 4
        0x4
        0x3
        0x2
        0x1
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public getSliderValueText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWBString(I)Ljava/lang/String;
    .locals 2
    .param p1, "wbValue"    # I

    .prologue
    .line 273
    if-nez p1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    .line 275
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800e8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 279
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800e9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public hideSlider()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mHideAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mHideAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 135
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->startAnimation()V

    .line 137
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderHideListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;->onHideProSlider(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    .line 139
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->stopSliderMenuTimer()V

    .line 140
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, 0x2

    .line 144
    packed-switch p1, :pswitch_data_0

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 155
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    .line 156
    return-void

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto :goto_0

    .line 149
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public refreshSliderStep()V
    .locals 4

    .prologue
    .line 159
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderId:I

    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 161
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    sget v2, Lcom/sec/android/app/camera/feature/Feature;->EXPOSURE_COMPENSATION_STEP:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    div-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    goto :goto_0

    .line 164
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    goto :goto_0

    .line 167
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public restartSliderMenuTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;->removeMessages(I)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 177
    return-void
.end method

.method public setISOAutoDim(Z)V
    .locals 2
    .param p1, "isDimmed"    # Z

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    sget v1, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_INDICATOR_COUNT:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setDim(Z)V

    .line 183
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mIsISOAutoDimmed:Z

    .line 184
    return-void
.end method

.method public setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderHideListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;

    .line 188
    return-void
.end method

.method public setOnShowSliderListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderShowListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderShowListener;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderShowListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderShowListener;

    .line 192
    return-void
.end method

.method public setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

    .line 196
    return-void
.end method

.method public setRotateAnimation(Z)V
    .locals 3
    .param p1, "rotateAnimation"    # Z

    .prologue
    const/4 v2, 0x5

    .line 199
    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderId:I

    packed-switch v1, :pswitch_data_0

    .line 213
    :cond_0
    :pswitch_0
    return-void

    .line 201
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "i":I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 207
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public showSlider()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mShowAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setAnimation(Landroid/view/animation/Animation;)V

    .line 218
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->startAnimation()V

    .line 220
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderShowListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderShowListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderShowListener;->onShowProSlider(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    .line 222
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->restartSliderMenuTimer()V

    .line 223
    return-void
.end method

.method public stopSliderMenuTimer()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;->removeMessages(I)V

    .line 227
    return-void
.end method

.method public updateProSliderPosition()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLText;->moveBaseLayoutAbsolute(FF)V

    .line 232
    return-void
.end method

.method public updateValue(I)V
    .locals 4
    .param p1, "modeid"    # I

    .prologue
    const/4 v3, 0x4

    .line 235
    iput p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    .line 238
    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderId:I

    packed-switch v1, :pswitch_data_0

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 240
    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    if-nez v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    if-lez v1, :cond_2

    const-string v1, "+"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    div-int/lit8 v1, v1, 0xa

    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    if-lez v1, :cond_5

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    rem-int/lit8 v1, v1, 0xa

    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    if-gez v1, :cond_3

    const-string v1, "-"

    goto :goto_1

    :cond_3
    const-string v1, ""

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0xa

    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    neg-int v1, v1

    rem-int/lit8 v1, v1, 0xa

    goto :goto_3

    .line 248
    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    if-lez v1, :cond_6

    .line 249
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "isoString":[Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    .end local v0    # "isoString":[Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080001

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 256
    :pswitch_2
    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    if-ltz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getWBString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
