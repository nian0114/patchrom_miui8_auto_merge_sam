.class public Lcom/sec/android/app/camera/menu/ProSlider;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ProSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;,
        Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;,
        Lcom/sec/android/app/camera/menu/ProSlider$ProSliderShowListener;,
        Lcom/sec/android/app/camera/menu/ProSlider$ProSliderManualFocusZoomListener;,
        Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;,
        Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_150:I = 0x96

.field private static final EXPOSURE_INDICATOR_COUNT:I = 0x5

.field private static final FOCUS_INDICATOR_COUNT:I = 0x3

.field private static final FOCUS_NUM_OF_STEP:I

.field private static final HIDE_SLIDER_TIMER_INTERVAL:J = 0xbb8L

.field private static final HIDE_SLIDER_TIME_OUT_MSG:I = 0x0

.field private static final INDICATOR_TEXT_COLOR:I

.field private static final INDICATOR_TEXT_SIZE:I

.field private static final INDICATOR_TEXT_STROKE_COLOR:I

.field private static final INDICATOR_TEXT_STROKE_WIDTH:I

.field private static final ISO_INDICATOR_COUNT:I = 0x5

.field private static final ISO_NUM_OF_STEP:I

.field private static final KELVIN_LEVEL_NUM_OF_STEP:I

.field private static final KELVIN_LEVEL_START_STEP:I

.field public static final LOGGING_TYPE_SLIDER:I = 0x0

.field public static final LOGGING_TYPE_STEP_BUTTON:I = 0x1

.field private static final MANUAL_FOCUS_ZOOM_LONG_PRESS_DURATION:I = 0xc8

.field private static final MANUAL_FOCUS_ZOOM_LONG_PRESS_MSG:I = 0x1

.field private static final PROEXPOSURE_NUM_OF_STEP:I

.field private static final PROEXPOSURE_VALUE_OFFSET:I

.field private static final PRO_ITEM_WIDTH:I

.field private static final PRO_KELVIN_SLIDEBAR_TOUCH_AREA_WIDTH:I

.field private static final PRO_RECORDING_RIGHT_MARGIN:I

.field private static final PRO_RECORDING_SLIDE_DIVIDER_POS_Y:I

.field private static final PRO_SLIDEBAR_HEIGHT:I

.field private static final PRO_SLIDEBAR_TOUCH_AREA_HEIGHT:I

.field private static final PRO_SLIDEBAR_TOUCH_AREA_WIDTH:I

.field private static final PRO_SLIDEBAR_WIDTH:I

.field private static final PRO_SLIDE_DIVIDER_POS_Y:I

.field private static final PRO_SLIDE_DIVIDER_SIZE:I

.field private static final PRO_SLIDE_GROUP_WIDTH:I

.field private static final PRO_SLIDE_INDICATOR_POS_X:I

.field private static final PRO_SLIDE_INDICATOR_RIGHT_MARGIN:I

.field private static final PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

.field private static final PRO_SLIDE_INDICATOR_SIZE:I

.field private static final PRO_SLIDE_KELVIN_HEIGHT:I

.field private static final PRO_SLIDE_KELVIN_POS_X:I

.field private static final PRO_SLIDE_KELVIN_TEXT_HEIGHT:I

.field private static final PRO_SLIDE_KELVIN_TEXT_LEFT_MARGIN:I

.field private static final PRO_SLIDE_KELVIN_WIDTH:I

.field private static final PRO_SLIDE_MANUAL_FOCUS_INDICATOR_BOTTOM_MARGIN:I

.field private static final PRO_SLIDE_RECORDING_SLIDER_OFFSET_X:I

.field private static final PRO_SLIDE_RECORDING_VALUE_TEXT_OFFSET_X:I

.field private static final PRO_SLIDE_RIGHT_MARGIN:I

.field private static final PRO_SLIDE_SHUTER_SPEED_INDICATOR_RIGHT_MARGIN:I

.field private static final PRO_SLIDE_SHUTTER_SPEED_INDICATOR_HEIGHT:I

.field private static final PRO_SLIDE_SHUTTER_SPEED_INDICATOR_WIDTH:I

.field private static final PRO_SLIDE_SIDE_MARGIN:I

.field private static final PRO_SLIDE_SLIDER_POS_X:I

.field private static final PRO_SLIDE_SLIDER_RIGHT_MARGIN:I

.field private static final PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

.field private static final PRO_SLIDE_STEP_BUTTON_POS_X:I

.field private static final PRO_SLIDE_STEP_BUTTON_RIGHT_MARGIN:I

.field private static final PRO_SLIDE_STEP_BUTTON_WIDTH:I

.field private static final PRO_SLIDE_VALUE_TEXT_MARGIN:I

.field private static final PRO_SLIDE_VALUE_TEXT_SIZE:I

.field private static final PRO_SLIDE_VALUE_TEXT_WIDTH:I

.field private static final PRO_SLIDE_WIDTH:I

.field private static final RECORD_SHUTTERSPEED_INDICATOR_COUNT:I = 0x4

.field private static final RECORD_SHUTTER_SPEED_NUM_OF_STEP:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SHUTTERSPEED_INDICATOR_COUNT:I = 0x5

.field private static final SHUTTER_SPEED_NUM_OF_STEP:I

.field public static final SLIDER_ID_EXPOSURE_VALUE:I = 0x0

.field public static final SLIDER_ID_ISO:I = 0x2

.field public static final SLIDER_ID_MANUAL_FOCUS:I = 0x4

.field public static final SLIDER_ID_RECORD_SHUTTER_SPEED:I = 0x5

.field public static final SLIDER_ID_SHUTTER_SPEED:I = 0x1

.field public static final SLIDER_ID_WB:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "ProSlider"

.field private static final WB_INDICATOR_COUNT:I = 0x6

.field private static final WB_NUM_OF_STEP:I


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mExposureIndicator:[Lcom/samsung/android/glview/GLText;

.field private mFocusIndicator:[Lcom/samsung/android/glview/GLImage;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mISOIndicator:[Lcom/samsung/android/glview/GLText;

.field private mIsISOAutoDimmed:Z

.field private mIsManualFocusZoomPressed:Z

.field private mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

.field private mKelvinValueText:Lcom/samsung/android/glview/GLText;

.field private mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

.field private mProSlider:Lcom/samsung/android/glview/GLSlider;

.field private mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mProSliderHandler:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;

.field protected mProSliderHideListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;

.field protected mProSliderLoggingListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;

.field protected mProSliderManualFocusZoomListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderManualFocusZoomListener;

.field protected mProSliderShowListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderShowListener;

.field protected mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

.field private mSliderId:I

.field private mStepDownButton:Lcom/samsung/android/glview/GLButton;

.field private mStepUpButton:Lcom/samsung/android/glview/GLButton;

.field private mValue:I

.field private mValueText:Lcom/samsung/android/glview/GLText;

.field private mWBIndicator:[Lcom/samsung/android/glview/GLImage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_WIDTH:I

    .line 58
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    .line 59
    const v0, 0x7f090167

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_ITEM_WIDTH:I

    .line 60
    const v0, 0x7f090161

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_RIGHT_MARGIN:I

    .line 61
    const v0, 0x7f090180

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SIDE_MARGIN:I

    .line 62
    sget v0, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_ITEM_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_GROUP_WIDTH:I

    .line 63
    const v0, 0x7f090174

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_WIDTH:I

    .line 64
    const v0, 0x7f090176

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_DIVIDER_POS_Y:I

    .line 65
    const v0, 0x7f090171

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_RECORDING_SLIDE_DIVIDER_POS_Y:I

    .line 66
    const v0, 0x7f090177

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_DIVIDER_SIZE:I

    .line 67
    const v0, 0x7f090178

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    .line 68
    const v0, 0x7f09016e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_RIGHT_MARGIN:I

    .line 69
    sget v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_GROUP_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_POS_X:I

    .line 70
    const v0, 0x7f09016f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    .line 71
    const v0, 0x7f09017f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_WIDTH:I

    .line 72
    const v0, 0x7f09017e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_HEIGHT:I

    .line 73
    const v0, 0x7f090173

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTER_SPEED_INDICATOR_RIGHT_MARGIN:I

    .line 74
    const v0, 0x7f090170

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_MANUAL_FOCUS_INDICATOR_BOTTOM_MARGIN:I

    .line 75
    const v0, 0x7f090175

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_WIDTH:I

    .line 76
    sget v0, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SIDE_MARGIN:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_HEIGHT:I

    .line 77
    const v0, 0x7f090183

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_TOUCH_AREA_WIDTH:I

    .line 78
    const v0, 0x7f090182

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_TOUCH_AREA_HEIGHT:I

    .line 79
    const v0, 0x7f090342

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_KELVIN_SLIDEBAR_TOUCH_AREA_WIDTH:I

    .line 80
    const v0, 0x7f09017d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SLIDER_RIGHT_MARGIN:I

    .line 81
    sget v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_GROUP_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SLIDER_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SLIDER_POS_X:I

    .line 82
    const v0, 0x7f09016b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_RECORDING_RIGHT_MARGIN:I

    .line 83
    sget v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_RECORDING_RIGHT_MARGIN:I

    sget v1, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_RECORDING_SLIDER_OFFSET_X:I

    .line 84
    const v0, 0x7f090186

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_RIGHT_MARGIN:I

    .line 85
    const v0, 0x7f090181

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    .line 86
    sget v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_POS_X:I

    sget v1, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_POS_X:I

    .line 87
    const v0, 0x7f090343

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    .line 88
    const v0, 0x7f090185

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    .line 89
    const v0, 0x7f090184

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_VALUE_TEXT_MARGIN:I

    .line 90
    const v0, 0x7f090172

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_RECORDING_VALUE_TEXT_OFFSET_X:I

    .line 91
    const v0, 0x7f09017c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_WIDTH:I

    .line 92
    const v0, 0x7f090179

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_HEIGHT:I

    .line 93
    sget v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_POS_X:I

    sget v1, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_POS_X:I

    .line 94
    const v0, 0x7f09017b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_TEXT_LEFT_MARGIN:I

    .line 95
    const v0, 0x7f09017a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_TEXT_HEIGHT:I

    .line 96
    const v0, 0x7f0a004e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PROEXPOSURE_VALUE_OFFSET:I

    .line 97
    const v0, 0x7f0a004d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PROEXPOSURE_NUM_OF_STEP:I

    .line 98
    const v0, 0x7f0a004b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->ISO_NUM_OF_STEP:I

    .line 99
    const v0, 0x7f0a0051

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->WB_NUM_OF_STEP:I

    .line 100
    const v0, 0x7f0a004a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->FOCUS_NUM_OF_STEP:I

    .line 101
    const v0, 0x7f0a0050

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->SHUTTER_SPEED_NUM_OF_STEP:I

    .line 102
    const v0, 0x7f0a004f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->RECORD_SHUTTER_SPEED_NUM_OF_STEP:I

    .line 103
    const v0, 0x7f0a004c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_LEVEL_NUM_OF_STEP:I

    .line 104
    sget v0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_LEVEL_NUM_OF_STEP:I

    rsub-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_LEVEL_START_STEP:I

    .line 105
    const v0, 0x7f0a0006

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_SIZE:I

    .line 106
    const v0, 0x7f0c000f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_COLOR:I

    .line 107
    const v0, 0x7f0a0023

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_STROKE_WIDTH:I

    .line 108
    const v0, 0x7f0c0027

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_STROKE_COLOR:I

    .line 109
    const v0, 0x7f0a0007

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_VALUE_TEXT_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V
    .locals 8
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "viewId"    # I

    .prologue
    const/16 v7, 0x96

    const/4 v6, 0x0

    .line 160
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 148
    new-instance v0, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I

    .line 152
    iput-boolean v6, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mIsISOAutoDimmed:Z

    .line 154
    iput-boolean v6, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mIsManualFocusZoomPressed:Z

    .line 161
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 162
    iput p6, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I

    .line 164
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->initProSlider()V

    .line 166
    new-instance v0, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v7, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mShowAnimation:Landroid/view/animation/Animation;

    .line 167
    new-instance v0, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v7, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mHideAnimation:Landroid/view/animation/Animation;

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProSlider;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/ProSlider;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProSlider;

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/menu/ProSlider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProSlider;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mIsISOAutoDimmed:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProSlider;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProSlider;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_LEVEL_START_STEP:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/menu/ProSlider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProSlider;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mIsManualFocusZoomPressed:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/menu/ProSlider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProSlider;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mIsManualFocusZoomPressed:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/menu/ProSlider;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProSlider;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->startManualFocusZoomPressTimer()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/menu/ProSlider;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProSlider;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->stopManualFocusZoom()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/menu/ProSlider;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProSlider;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->startManualFocusZoom()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/menu/ProSlider;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProSlider;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->stopManualFocusZoomPressTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/ProSlider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProSlider;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->isTtsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProSlider;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/ProSlider;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProSlider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProSlider;->speakTtsString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProSlider;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/menu/ProSlider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProSlider;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    return p1
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/sec/android/app/camera/menu/ProSlider;->PROEXPOSURE_VALUE_OFFSET:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProSlider;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/sec/android/app/camera/widget/gl/DividedSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProSlider;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    return-object v0
.end method

.method private getKelvinStringFromWBSetting(I)Ljava/lang/String;
    .locals 2
    .param p1, "wbValue"    # I

    .prologue
    .line 459
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 469
    :goto_0
    return-object v0

    .line 461
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802ed

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 463
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 465
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 469
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method private initProSlider()V
    .locals 25

    .prologue
    .line 473
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_GROUP_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 476
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_POS_X:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    const v8, 0x7f020152

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802e8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setClickable(Z)V

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRepeatClickWhenLongClicked(Z)V

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$1;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$2;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 518
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_POS_X:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    sub-int/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    const v8, 0x7f020153

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802e7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_EXPAND_AREA:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setClickable(Z)V

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRepeatClickWhenLongClicked(Z)V

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$3;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$4;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 562
    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_GROUP_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_VALUE_TEXT_MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    int-to-float v7, v7

    const-string v8, ""

    sget v9, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_VALUE_TEXT_SIZE:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_COLOR:I

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_GROUP_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_VALUE_TEXT_MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_GROUP_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_VALUE_TEXT_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_STEP_BUTTON_POS_X:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 576
    const/16 v17, 0x0

    .line 577
    .local v17, "indicatorInterval":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I

    packed-switch v2, :pswitch_data_0

    .line 1395
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1399
    return-void

    .line 579
    :pswitch_0
    new-instance v2, Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SLIDER_POS_X:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SIDE_MARGIN:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_HEIGHT:I

    int-to-float v7, v7

    const v8, 0x7f020169

    sget v9, Lcom/sec/android/app/camera/menu/ProSlider;->PROEXPOSURE_NUM_OF_STEP:I

    const/4 v10, 0x1

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0800a8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080060

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setTitle(Ljava/lang/String;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const v3, 0x7f020084

    const v4, 0x7f020085

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PROEXPOSURE_VALUE_OFFSET:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setGaugeZeroStep(I)V

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PROEXPOSURE_VALUE_OFFSET:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setClickable(Z)V

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$5;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$6;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 610
    sget v2, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    mul-int/lit8 v3, v3, 0x5

    sub-int/2addr v2, v3

    div-int/lit8 v17, v2, 0x4

    .line 611
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    .line 612
    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/4 v2, 0x0

    const-string v3, "+2"

    aput-object v3, v20, v2

    const/4 v2, 0x1

    const-string v3, "+1"

    aput-object v3, v20, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v20, v2

    const/4 v2, 0x3

    const-string v3, "-1"

    aput-object v3, v20, v2

    const/4 v2, 0x4

    const-string v3, "-2"

    aput-object v3, v20, v2

    .line 613
    .local v20, "mExposureIndicatorText":[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    const/4 v2, 0x5

    if-ge v12, v2, :cond_1

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    move-object/from16 v24, v0

    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    add-int v6, v6, v17

    mul-int/2addr v6, v12

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    int-to-float v7, v7

    aget-object v8, v20, v12

    sget v9, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_SIZE:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_COLOR:I

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    aput-object v2, v24, v12

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightBOLDFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setClickable(Z)V

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 626
    const/4 v2, 0x5

    new-array v14, v2, [I

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PROEXPOSURE_NUM_OF_STEP:I

    add-int/lit8 v3, v3, -0x1

    aput v3, v14, v2

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PROEXPOSURE_NUM_OF_STEP:I

    add-int/lit8 v3, v3, -0xb

    aput v3, v14, v2

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PROEXPOSURE_NUM_OF_STEP:I

    add-int/lit8 v3, v3, -0x15

    aput v3, v14, v2

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PROEXPOSURE_NUM_OF_STEP:I

    add-int/lit8 v3, v3, -0x1f

    aput v3, v14, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v3, v14, v2

    .line 627
    .local v14, "indicatorExposureValue":[I
    move v13, v12

    .line 628
    .local v13, "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14, v13}, Lcom/sec/android/app/camera/menu/ProSlider$7;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;[II)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14, v13}, Lcom/sec/android/app/camera/menu/ProSlider$8;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;[II)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 613
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 668
    .end local v13    # "index":I
    .end local v14    # "indicatorExposureValue":[I
    :cond_1
    const/4 v12, 0x0

    :goto_2
    const/4 v2, 0x5

    if-ge v12, v2, :cond_2

    .line 669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v12

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 668
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 671
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_0

    .line 674
    .end local v12    # "i":I
    .end local v20    # "mExposureIndicatorText":[Ljava/lang/String;
    :pswitch_1
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SLIDER_POS_X:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SIDE_MARGIN:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_HEIGHT:I

    int-to-float v7, v7

    const v8, 0x7f020169

    sget v9, Lcom/sec/android/app/camera/menu/ProSlider;->SHUTTER_SPEED_NUM_OF_STEP:I

    const/4 v10, 0x1

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0800d2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080060

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setTitle(Ljava/lang/String;)V

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const v3, 0x7f020084

    const v4, 0x7f020085

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setGaugeMarker(II)V

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const v3, 0x7f020154

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_DIVIDER_SIZE:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_DIVIDER_POS_Y:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setDivider(III)V

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setGaugeZeroStep(I)V

    .line 680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setCurrentStep(I)Z

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->expandTouchAreaFromCenter(FF)V

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setClickable(Z)V

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$9;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$10;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$11;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$12;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 731
    sget v2, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_HEIGHT:I

    div-int/lit8 v17, v2, 0x4

    .line 733
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    .line 734
    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080281

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v22, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080276

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v22, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08026a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v22, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080267

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v22, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080223

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v22, v2

    .line 736
    .local v22, "mShuterSpeedIndicatorText":[Ljava/lang/String;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    const/4 v2, 0x5

    if-ge v12, v2, :cond_3

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    move-object/from16 v24, v0

    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SLIDER_POS_X:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SIDE_MARGIN:I

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    mul-int v6, v17, v12

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_HEIGHT:I

    int-to-float v7, v7

    aget-object v8, v22, v12

    sget v9, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_SIZE:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_COLOR:I

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    aput-object v2, v24, v12

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightBOLDFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setStrokeVisibility(Z)V

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SLIDER_POS_X:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SIDE_MARGIN:I

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    mul-int v6, v17, v12

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SLIDER_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SIDE_MARGIN:I

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int v6, v17, v12

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SLIDER_POS_X:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTER_SPEED_INDICATOR_RIGHT_MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SIDE_MARGIN:I

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int v6, v17, v12

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SLIDER_POS_X:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTER_SPEED_INDICATOR_RIGHT_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SIDE_MARGIN:I

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    mul-int v6, v17, v12

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setClickable(Z)V

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 756
    const/4 v2, 0x5

    new-array v0, v2, [I

    move-object/from16 v18, v0

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->SHUTTER_SPEED_NUM_OF_STEP:I

    add-int/lit8 v3, v3, -0x1

    aput v3, v18, v2

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->SHUTTER_SPEED_NUM_OF_STEP:I

    add-int/lit8 v3, v3, -0xb

    aput v3, v18, v2

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->SHUTTER_SPEED_NUM_OF_STEP:I

    add-int/lit8 v3, v3, -0x16

    aput v3, v18, v2

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->SHUTTER_SPEED_NUM_OF_STEP:I

    add-int/lit8 v3, v3, -0x21

    aput v3, v18, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v3, v18, v2

    .line 757
    .local v18, "indicatorShutterValue":[I
    move v13, v12

    .line 758
    .restart local v13    # "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$13;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1, v13}, Lcom/sec/android/app/camera/menu/ProSlider$13;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;[II)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$14;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1, v13}, Lcom/sec/android/app/camera/menu/ProSlider$14;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;[II)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 736
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 798
    .end local v13    # "index":I
    .end local v18    # "indicatorShutterValue":[I
    :cond_3
    const/4 v12, 0x0

    :goto_4
    const/4 v2, 0x5

    if-ge v12, v2, :cond_4

    .line 799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v12

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 798
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 801
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_0

    .line 804
    .end local v12    # "i":I
    .end local v22    # "mShuterSpeedIndicatorText":[Ljava/lang/String;
    :pswitch_2
    new-instance v2, Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SLIDER_POS_X:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SIDE_MARGIN:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_HEIGHT:I

    int-to-float v7, v7

    const v8, 0x7f020169

    sget v9, Lcom/sec/android/app/camera/menu/ProSlider;->ISO_NUM_OF_STEP:I

    const/4 v10, 0x1

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0800b8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080060

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setTitle(Ljava/lang/String;)V

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const v3, 0x7f020084

    const v4, 0x7f020085

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    .line 808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setGaugeZeroStep(I)V

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setClickable(Z)V

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$15;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$16;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 850
    sget v2, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    mul-int/lit8 v3, v3, 0x5

    sub-int/2addr v2, v3

    div-int/lit8 v17, v2, 0x4

    .line 851
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    .line 852
    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080236

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v21, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080231

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v21, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08022d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v21, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080229

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v21, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080223

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v21, v2

    .line 854
    .local v21, "mISOIndicatorText":[Ljava/lang/String;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    const/4 v2, 0x5

    if-ge v12, v2, :cond_5

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    move-object/from16 v24, v0

    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    add-int v6, v6, v17

    mul-int/2addr v6, v12

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    int-to-float v7, v7

    aget-object v8, v21, v12

    sget v9, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_SIZE:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_COLOR:I

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    aput-object v2, v24, v12

    .line 858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 861
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightBOLDFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setStrokeVisibility(Z)V

    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setClickable(Z)V

    .line 865
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    .line 866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 867
    const/4 v2, 0x5

    new-array v0, v2, [I

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->ISO_NUM_OF_STEP:I

    add-int/lit8 v3, v3, -0x1

    aput v3, v16, v2

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->ISO_NUM_OF_STEP:I

    add-int/lit8 v3, v3, -0x4

    aput v3, v16, v2

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->ISO_NUM_OF_STEP:I

    add-int/lit8 v3, v3, -0x7

    aput v3, v16, v2

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->ISO_NUM_OF_STEP:I

    add-int/lit8 v3, v3, -0xa

    aput v3, v16, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v3, v16, v2

    .line 868
    .local v16, "indicatorISOValue":[I
    move v13, v12

    .line 869
    .restart local v13    # "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$17;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v13, v1}, Lcom/sec/android/app/camera/menu/ProSlider$17;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;I[I)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$18;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v13, v1}, Lcom/sec/android/app/camera/menu/ProSlider$18;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;I[I)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 854
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .line 917
    .end local v13    # "index":I
    .end local v16    # "indicatorISOValue":[I
    :cond_5
    const/4 v12, 0x0

    :goto_6
    const/4 v2, 0x5

    if-ge v12, v2, :cond_6

    .line 918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v12

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 917
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 920
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_0

    .line 924
    .end local v12    # "i":I
    .end local v21    # "mISOIndicatorText":[Ljava/lang/String;
    :pswitch_3
    new-instance v2, Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SLIDER_POS_X:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SIDE_MARGIN:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_HEIGHT:I

    int-to-float v7, v7

    const v8, 0x7f020169

    sget v9, Lcom/sec/android/app/camera/menu/ProSlider;->WB_NUM_OF_STEP:I

    const/4 v10, 0x1

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    .line 926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0800e2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080060

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setTitle(Ljava/lang/String;)V

    .line 927
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const v3, 0x7f020084

    const v4, 0x7f020085

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    .line 928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setGaugeZeroStep(I)V

    .line 929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    .line 931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setClickable(Z)V

    .line 932
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$19;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$19;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$20;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$20;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 970
    sget v2, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    mul-int/lit8 v3, v3, 0x6

    sub-int/2addr v2, v3

    div-int/lit8 v17, v2, 0x5

    .line 971
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    .line 972
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_7
    const/4 v2, 0x6

    if-ge v12, v2, :cond_7

    .line 973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_POS_X:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    add-int v7, v7, v17

    mul-int/2addr v7, v12

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/16 v7, 0x9

    rsub-int/lit8 v8, v12, 0x6

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v7

    iget v7, v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v2, v12

    .line 976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x9

    rsub-int/lit8 v5, v12, 0x6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    .line 978
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setClickable(Z)V

    .line 979
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setClickable(Z)V

    .line 983
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setFocusable(Z)V

    .line 984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 985
    const/4 v2, 0x7

    new-array v0, v2, [I

    move-object/from16 v19, v0

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->WB_NUM_OF_STEP:I

    add-int/lit8 v3, v3, -0x1

    aput v3, v19, v2

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->WB_NUM_OF_STEP:I

    add-int/lit8 v3, v3, -0x2

    aput v3, v19, v2

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->WB_NUM_OF_STEP:I

    add-int/lit8 v3, v3, -0x3

    aput v3, v19, v2

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->WB_NUM_OF_STEP:I

    add-int/lit8 v3, v3, -0x4

    aput v3, v19, v2

    const/4 v2, 0x4

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->WB_NUM_OF_STEP:I

    add-int/lit8 v3, v3, -0x5

    aput v3, v19, v2

    const/4 v2, 0x5

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->WB_NUM_OF_STEP:I

    add-int/lit8 v3, v3, -0x6

    aput v3, v19, v2

    const/4 v2, 0x6

    const/4 v3, 0x0

    aput v3, v19, v2

    .line 986
    .local v19, "indicatorWBValue":[I
    move v13, v12

    .line 987
    .restart local v13    # "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$21;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1, v13}, Lcom/sec/android/app/camera/menu/ProSlider$21;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;[II)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$22;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1, v13}, Lcom/sec/android/app/camera/menu/ProSlider$22;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;[II)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 972
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    .line 1027
    .end local v13    # "index":I
    .end local v19    # "indicatorWBValue":[I
    :cond_7
    const/4 v12, 0x0

    :goto_8
    const/4 v2, 0x6

    if-ge v12, v2, :cond_8

    .line 1028
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v12

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1027
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 1030
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1032
    new-instance v2, Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_HEIGHT:I

    int-to-float v7, v7

    const v8, 0x7f02016f

    sget v9, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_LEVEL_NUM_OF_STEP:I

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    .line 1034
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0800eb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080060

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setTitle(Ljava/lang/String;)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    const v3, 0x7f020084

    const v4, 0x7f020085

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setGaugeZeroStep(I)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 1038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_KELVIN_SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_KELVIN_SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setClickable(Z)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setVisibility(I)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$23;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$23;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$24;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$24;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1065
    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_POS_X:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_TEXT_LEFT_MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_TEXT_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_TEXT_HEIGHT:I

    int-to-float v7, v7

    const-string v8, "6400K"

    sget v9, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_VALUE_TEXT_SIZE:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_COLOR:I

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    .line 1067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_POS_X:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_TEXT_LEFT_MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_TEXT_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_POS_X:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_TEXT_LEFT_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_TEXT_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_POS_X:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_TEXT_LEFT_MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_TEXT_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_POS_X:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_KELVIN_TEXT_LEFT_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_VALUE_TEXT_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$25;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$25;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$26;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$26;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1107
    const/4 v12, 0x1

    :goto_9
    const/4 v2, 0x5

    if-ge v12, v2, :cond_0

    .line 1108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    .line 1107
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 1114
    .end local v12    # "i":I
    :pswitch_4
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SLIDER_POS_X:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SIDE_MARGIN:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_HEIGHT:I

    int-to-float v7, v7

    const v8, 0x7f020169

    sget v9, Lcom/sec/android/app/camera/menu/ProSlider;->FOCUS_NUM_OF_STEP:I

    const/4 v10, 0x1

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    .line 1116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0800ba

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080060

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setTitle(Ljava/lang/String;)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const v3, 0x7f020084

    const v4, 0x7f020085

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setGaugeMarker(II)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const v3, 0x7f020154

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_DIVIDER_SIZE:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_DIVIDER_POS_Y:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setDivider(III)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setGaugeZeroStep(I)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setCurrentStep(I)Z

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->expandTouchAreaFromCenter(FF)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setClickable(Z)V

    .line 1123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$27;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$27;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$28;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$28;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$29;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$29;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$30;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$30;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1175
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mFocusIndicator:[Lcom/samsung/android/glview/GLImage;

    .line 1176
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_a
    const/4 v2, 0x3

    if-ge v12, v2, :cond_b

    .line 1177
    if-nez v12, :cond_9

    .line 1178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mFocusIndicator:[Lcom/samsung/android/glview/GLImage;

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SLIDER_POS_X:I

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTER_SPEED_INDICATOR_RIGHT_MARGIN:I

    sub-int/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_HEIGHT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SIDE_MARGIN:I

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/16 v7, 0x18

    rsub-int/lit8 v8, v12, 0x3

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v7

    iget v7, v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v2, v12

    .line 1181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mFocusIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08004f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    .line 1193
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mFocusIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setClickable(Z)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mFocusIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setFocusable(Z)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mFocusIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mFocusIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mFocusIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mFocusIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 1199
    const/4 v2, 0x3

    new-array v15, v2, [I

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->FOCUS_NUM_OF_STEP:I

    add-int/lit8 v3, v3, -0x1

    aput v3, v15, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput v3, v15, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v15, v2

    .line 1200
    .local v15, "indicatorFocusValue":[I
    move v13, v12

    .line 1201
    .restart local v13    # "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mFocusIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$31;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15, v13}, Lcom/sec/android/app/camera/menu/ProSlider$31;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;[II)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mFocusIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$32;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15, v13}, Lcom/sec/android/app/camera/menu/ProSlider$32;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;[II)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 1176
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_a

    .line 1182
    .end local v13    # "index":I
    .end local v15    # "indicatorFocusValue":[I
    :cond_9
    const/4 v2, 0x1

    if-ne v12, v2, :cond_a

    .line 1183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mFocusIndicator:[Lcom/samsung/android/glview/GLImage;

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SLIDER_POS_X:I

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTER_SPEED_INDICATOR_RIGHT_MARGIN:I

    sub-int/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_HEIGHT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    sub-int/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_MANUAL_FOCUS_INDICATOR_BOTTOM_MARGIN:I

    sub-int/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_HEIGHT:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/16 v7, 0x18

    rsub-int/lit8 v8, v12, 0x3

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v7

    iget v7, v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v2, v12

    .line 1187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mFocusIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080050

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1189
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mFocusIndicator:[Lcom/samsung/android/glview/GLImage;

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_POS_X:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_INDICATOR_SIZE:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/16 v7, 0x18

    rsub-int/lit8 v8, v12, 0x3

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v7

    iget v7, v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v2, v12

    .line 1191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mFocusIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080001

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1241
    :cond_b
    const/4 v12, 0x0

    :goto_c
    const/4 v2, 0x3

    if-ge v12, v2, :cond_c

    .line 1242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mFocusIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v12

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1241
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 1244
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_0

    .line 1247
    .end local v12    # "i":I
    :pswitch_5
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SLIDER_POS_X:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SIDE_MARGIN:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_HEIGHT:I

    int-to-float v7, v7

    const v8, 0x7f020169

    sget v9, Lcom/sec/android/app/camera/menu/ProSlider;->RECORD_SHUTTER_SPEED_NUM_OF_STEP:I

    const/4 v10, 0x1

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0800d2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080060

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setTitle(Ljava/lang/String;)V

    .line 1250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const v3, 0x7f020084

    const v4, 0x7f020085

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setGaugeMarker(II)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const v3, 0x7f020154

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_DIVIDER_SIZE:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_RECORDING_SLIDE_DIVIDER_POS_Y:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setDivider(III)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setGaugeZeroStep(I)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setCurrentStep(I)Z

    .line 1254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->expandTouchAreaFromCenter(FF)V

    .line 1255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setClickable(Z)V

    .line 1256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$33;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$33;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 1274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$34;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$34;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 1294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$35;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$35;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$36;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/ProSlider$36;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1317
    sget v2, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDEBAR_HEIGHT:I

    div-int/lit8 v17, v2, 0x3

    .line 1318
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    .line 1319
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080273

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v23, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080269

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v23, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080267

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v23, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080223

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v23, v2

    .line 1321
    .local v23, "mShutterSpeedIndicatorText":[Ljava/lang/String;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_d
    const/4 v2, 0x4

    if-ge v12, v2, :cond_e

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    move-object/from16 v24, v0

    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SLIDER_POS_X:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SIDE_MARGIN:I

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    mul-int v6, v17, v12

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_HEIGHT:I

    int-to-float v7, v7

    aget-object v8, v23, v12

    sget v9, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_SIZE:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/menu/ProSlider;->INDICATOR_TEXT_COLOR:I

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    aput-object v2, v24, v12

    .line 1325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 1326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightBOLDFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 1327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setStrokeVisibility(Z)V

    .line 1328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SLIDER_POS_X:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SIDE_MARGIN:I

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    mul-int v6, v17, v12

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SLIDER_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SIDE_MARGIN:I

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int v6, v17, v12

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SLIDER_POS_X:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTER_SPEED_INDICATOR_RIGHT_MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SIDE_MARGIN:I

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int v6, v17, v12

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SLIDER_POS_X:I

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTER_SPEED_INDICATOR_RIGHT_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SIDE_MARGIN:I

    sget v6, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_SHUTTER_SPEED_INDICATOR_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    mul-int v6, v17, v12

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setClickable(Z)V

    .line 1339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 1340
    const/4 v2, 0x3

    if-eq v12, v2, :cond_d

    .line 1341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    .line 1343
    :cond_d
    const/4 v2, 0x4

    new-array v0, v2, [I

    move-object/from16 v18, v0

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->RECORD_SHUTTER_SPEED_NUM_OF_STEP:I

    add-int/lit8 v3, v3, -0x1

    aput v3, v18, v2

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->RECORD_SHUTTER_SPEED_NUM_OF_STEP:I

    add-int/lit8 v3, v3, -0xa

    aput v3, v18, v2

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->RECORD_SHUTTER_SPEED_NUM_OF_STEP:I

    add-int/lit8 v3, v3, -0x14

    aput v3, v18, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput v3, v18, v2

    .line 1344
    .restart local v18    # "indicatorShutterValue":[I
    move v13, v12

    .line 1345
    .restart local v13    # "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$37;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v13, v1}, Lcom/sec/android/app/camera/menu/ProSlider$37;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;I[I)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v12

    new-instance v3, Lcom/sec/android/app/camera/menu/ProSlider$38;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1, v13}, Lcom/sec/android/app/camera/menu/ProSlider$38;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;[II)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 1321
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_d

    .line 1385
    .end local v13    # "index":I
    .end local v18    # "indicatorShutterValue":[I
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setDim(Z)V

    .line 1387
    const/4 v12, 0x0

    :goto_e
    const/4 v2, 0x4

    if-ge v12, v2, :cond_f

    .line 1388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v12

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1387
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 1390
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_0

    .line 577
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private isTtsEnabled()Z
    .locals 1

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private speakTtsString(Ljava/lang/String;)V
    .locals 3
    .param p1, "ttsString"    # Ljava/lang/String;

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1408
    return-void
.end method

.method private startManualFocusZoom()V
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderManualFocusZoomListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderManualFocusZoomListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderManualFocusZoomListener;->onManualFocusZoomStarted()V

    .line 1412
    return-void
.end method

.method private startManualFocusZoomPressTimer()V
    .locals 4

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;

    if-eqz v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1418
    :cond_0
    return-void
.end method

.method private stopManualFocusZoom()V
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderManualFocusZoomListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderManualFocusZoomListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderManualFocusZoomListener;->onManualFocusZoomStopped()V

    .line 1422
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->stopManualFocusZoomPressTimer()V

    .line 1423
    return-void
.end method

.method private stopManualFocusZoomPressTimer()V
    .locals 2

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;

    if-eqz v0, :cond_0

    .line 1427
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;->removeMessages(I)V

    .line 1429
    :cond_0
    return-void
.end method


# virtual methods
.method public getSliderValueText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideSlider()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mHideAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mHideAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 177
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->startAnimation()V

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mIsManualFocusZoomPressed:Z

    if-eqz v0, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->stopManualFocusZoom()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mIsManualFocusZoomPressed:Z

    .line 185
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderHideListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;->onHideProSlider(Lcom/sec/android/app/camera/menu/ProSlider;)V

    .line 187
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->stopSliderMenuTimer()V

    .line 188
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 192
    packed-switch p1, :pswitch_data_0

    .line 206
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 207
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 213
    :cond_0
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I

    if-ne v1, v3, :cond_2

    .line 214
    packed-switch p1, :pswitch_data_1

    .line 250
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    .line 251
    return-void

    .line 194
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 195
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto :goto_0

    .line 200
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 201
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto :goto_0

    .line 216
    :pswitch_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v5, :cond_1

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 220
    .end local v0    # "i":I
    :pswitch_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v5, :cond_1

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 225
    .end local v0    # "i":I
    :pswitch_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    if-ge v0, v5, :cond_1

    .line 226
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 231
    .end local v0    # "i":I
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I

    if-ne v1, v5, :cond_1

    .line 232
    packed-switch p1, :pswitch_data_2

    goto :goto_1

    .line 234
    :pswitch_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    if-ge v0, v6, :cond_1

    .line 235
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 238
    .end local v0    # "i":I
    :pswitch_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    if-ge v0, v6, :cond_1

    .line 239
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 243
    .end local v0    # "i":I
    :pswitch_8
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    if-ge v0, v6, :cond_1

    .line 244
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mShutterSpeedIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 214
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 232
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public refreshSliderStep()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 254
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I

    packed-switch v0, :pswitch_data_0

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 256
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    sget v2, Lcom/sec/android/app/camera/menu/ProSlider;->PROEXPOSURE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    goto :goto_0

    .line 259
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setCurrentStep(I)Z

    goto :goto_0

    .line 262
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    goto :goto_0

    .line 265
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 266
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLSlider;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 275
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setCurrentStep(I)Z

    goto :goto_0

    .line 278
    :pswitch_5
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 279
    iput v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setCurrentStep(I)Z

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public restartSliderMenuTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;->removeMessages(I)V

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 292
    return-void
.end method

.method public setISOAutoDim(Z)V
    .locals 2
    .param p1, "isDimmed"    # Z

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mISOIndicator:[Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setDim(Z)V

    .line 298
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mIsISOAutoDimmed:Z

    .line 299
    return-void
.end method

.method public setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderHideListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;

    .line 303
    return-void
.end method

.method public setOnShowSliderListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderShowListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/menu/ProSlider$ProSliderShowListener;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderShowListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderShowListener;

    .line 307
    return-void
.end method

.method public setProSliderLoggingListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderLoggingListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;

    .line 311
    return-void
.end method

.method public setProSliderManualFocusZoomListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderManualFocusZoomListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/menu/ProSlider$ProSliderManualFocusZoomListener;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderManualFocusZoomListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderManualFocusZoomListener;

    .line 315
    return-void
.end method

.method public setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;

    .line 319
    return-void
.end method

.method public setRotateAnimation(Z)V
    .locals 2
    .param p1, "rotateAnimation"    # Z

    .prologue
    .line 322
    iget v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I

    packed-switch v1, :pswitch_data_0

    .line 341
    :cond_0
    :pswitch_0
    return-void

    .line 324
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mExposureIndicator:[Lcom/samsung/android/glview/GLText;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    .end local v0    # "i":I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 334
    .end local v0    # "i":I
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mFocusIndicator:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 322
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showSlider()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mShowAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setAnimation(Landroid/view/animation/Animation;)V

    .line 346
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->startAnimation()V

    .line 348
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderShowListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderShowListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderShowListener;->onShowProSlider(Lcom/sec/android/app/camera/menu/ProSlider;)V

    .line 350
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProSlider;->restartSliderMenuTimer()V

    .line 351
    return-void
.end method

.method public stopSliderMenuTimer()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHandler;->removeMessages(I)V

    .line 355
    return-void
.end method

.method public updateKelvin(I)V
    .locals 4
    .param p1, "modeid"    # I

    .prologue
    .line 359
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    sget v2, Lcom/sec/android/app/camera/menu/ProSlider;->KELVIN_LEVEL_START_STEP:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 361
    mul-int/lit8 v0, p1, 0x64

    .line 362
    .local v0, "kelvin":I
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public updateProRecordingSliderPosition()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_RECORDING_SLIDER_OFFSET_X:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    sget v1, Lcom/sec/android/app/camera/menu/ProSlider;->PRO_SLIDE_RECORDING_VALUE_TEXT_OFFSET_X:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->moveBaseLayoutAbsolute(FF)V

    .line 368
    return-void
.end method

.method public updateProSliderPosition()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLText;->moveBaseLayoutAbsolute(FF)V

    .line 373
    return-void
.end method

.method public updateValue(I)V
    .locals 8
    .param p1, "modeid"    # I

    .prologue
    const v5, 0x7f0b0006

    const v4, 0x7f080001

    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 376
    iput p1, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    .line 379
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I

    packed-switch v2, :pswitch_data_0

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 381
    :pswitch_0
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    if-nez v2, :cond_1

    .line 382
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    if-lez v2, :cond_2

    .line 384
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    div-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    if-gez v2, :cond_0

    .line 386
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    neg-int v4, v4

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    if-ltz v2, :cond_3

    .line 391
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "shutterString":[Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget v3, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 394
    .end local v1    # "shutterString":[Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 399
    :pswitch_2
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    if-lez v2, :cond_4

    .line 400
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "isoString":[Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget v3, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 403
    .end local v0    # "isoString":[Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 407
    :pswitch_3
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 408
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0800eb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLText;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 410
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 411
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v2, v7}, Lcom/samsung/android/glview/GLSlider;->setVisibility(I)V

    .line 412
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v7}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 413
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v7}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 415
    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    if-ltz v2, :cond_0

    .line 416
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    if-nez v2, :cond_7

    .line 417
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 428
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 429
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 430
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mKelvinSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLSlider;->setVisibility(I)V

    .line 431
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepUpButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 432
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mStepDownButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 418
    :cond_7
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 419
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0800e8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/ProSlider;->getKelvinStringFromWBSetting(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 420
    :cond_8
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    if-ne v2, v6, :cond_9

    .line 421
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0800e7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/ProSlider;->getKelvinStringFromWBSetting(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 422
    :cond_9
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 423
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0800ea

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/ProSlider;->getKelvinStringFromWBSetting(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 424
    :cond_a
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 425
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0800e9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/ProSlider;->getKelvinStringFromWBSetting(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 437
    :pswitch_4
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    if-gez v2, :cond_b

    .line 438
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08004b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 440
    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08004e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 444
    :pswitch_5
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    if-ltz v2, :cond_c

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    sget v3, Lcom/sec/android/app/camera/menu/ProSlider;->RECORD_SHUTTER_SPEED_NUM_OF_STEP:I

    if-ge v2, v3, :cond_c

    .line 445
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 446
    .restart local v1    # "shutterString":[Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget v3, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 448
    .end local v1    # "shutterString":[Ljava/lang/String;
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
