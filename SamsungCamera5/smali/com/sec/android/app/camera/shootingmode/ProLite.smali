.class public Lcom/sec/android/app/camera/shootingmode/ProLite;
.super Lcom/sec/android/app/camera/shootingmode/RecordingController;
.source "ProLite.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$CameraCurrentSettingListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderShowListener;
.implements Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ImageStoringListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/ProLite$1;,
        Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;,
        Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_100:I = 0x64

.field private static final ANIMATION_DURATION_130:I = 0x82

.field private static final ANIMATION_DURATION_300:I = 0x12c

.field private static final ANIMATION_DURATION_470:I = 0x1d6

.field private static final ANIMATION_DURATION_570:I = 0x23a

.field private static final AUTO_MODE:I = 0x1

.field private static final CAMERACURRENTSET_CALLBACK_WAIT_TIME:J = 0x12cL

.field private static final ISO_COMPENSATION_STEP:I = 0x3

.field private static final ISO_VALUE_COUNT:I

.field private static final LONG_EV_SHOT_PROGRESS_GROUP_POS_X:F

.field private static final LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

.field private static final LONG_EV_SHOT_PROGRESS_TEXT_COLOR:I

.field private static final LONG_EV_SHOT_PROGRESS_TEXT_LINE_SPACING:F

.field private static final LONG_EV_SHOT_PROGRESS_TEXT_SIZE:F

.field private static final LONG_EV_SHOT_PROGRESS_TEXT_TOP_MARGIN:F

.field private static final LONG_EV_SHOT_PROGRESS_TITLE_HEIGHT:I

.field private static final LONG_EV_SHOT_PROGRESS_TITLE_POS_Y:F

.field private static final MANUAL_MODE:I = 0x0

.field private static final MAX_PRO_RECORDING_SHUTTER_SPEED:I = 0x13

.field private static final NORMAL_RATIO_PREVIEW_LEFT:I

.field private static final PRO_ITEM_NUM:I = 0x3

.field private static final PRO_ITEM_POS_X:I

.field private static final PRO_ITEM_RIGHT_MARGIN:I

.field private static final PRO_ITEM_TEXT_COLOR:I

.field private static final PRO_ITEM_TEXT_EV_LIMIT_COLOR:I

.field private static final PRO_ITEM_TEXT_MARGIN:I

.field private static final PRO_ITEM_TOP_MARGIN:I

.field private static final PRO_ITEM_WIDTH:I

.field private static final PRO_RECORDING_ITEM_OFFSET:I

.field private static final PRO_RECORDING_ITEM_POS_X:I

.field private static final PRO_RECORDING_RIGHT_MARGIN:I

.field private static final PRO_VIEW_GROUP_SHOW_ANIMATION_DURATION:I

.field private static final RECORDING_MODE_TEXT_SHADOW:Z

.field private static final RECORDING_MODE_TEXT_SHADOW_OFFSET:I

.field private static final RECORDING_MSG_BLINK_INDICATOR_REC_ICON:I = 0x1

.field private static final RECORDING_MSG_BLINK_INDICATOR_REC_TIME:I = 0x2

.field private static final RECORDING_PAUSE_BUTTON_DIAMETER:I

.field private static final RECORDING_PAUSE_BUTTON_POS_X:I

.field private static final RECORDING_PAUSE_BUTTON_POS_Y:I

.field private static final RECORDING_PAUSE_BUTTON_TEXT_HEIGHT:I

.field private static final RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

.field private static final RECORDING_PAUSE_BUTTON_TEXT_SIZE:I

.field private static final RECORDING_PAUSE_BUTTON_TEXT_WIDTH:I

.field private static final RECORDING_PAUSE_BUTTON_WIDTH:I

.field private static final RECORDING_REC_ICON_LEFT_MARGIN:I

.field private static final RECORDING_REC_ICON_WIDTH:I

.field private static final RECORDING_REC_TIME_GROUP_16_9_RATIO_MARGIN:I

.field private static final RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

.field private static final RECORDING_REC_TIME_GROUP_HEIGHT:I

.field private static final RECORDING_REC_TIME_GROUP_POS_Y:I

.field private static final RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

.field private static final RECORDING_REC_TIME_GROUP_WIDTH:I

.field private static final RECORDING_REC_TIME_TEXT_HEIGHT:I

.field private static final RECORDING_REC_TIME_TEXT_POS_X:I

.field private static final RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

.field private static final RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

.field private static final RECORDING_SNAPSHOT_MARGIN_Y:I

.field private static final RECORDING_STOP_BUTTON_POS_X:I

.field private static final RECORDING_STOP_BUTTON_POS_Y:I

.field private static final REC_INDICATOR_TEXT_SIZE:F

.field private static final RIGHT_SIDE_MENU_POS_X:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_NORMAL_WIDTH:I

.field private static final SCREEN_WIDTH:I

.field private static final SHUTTER_BUTTON_POS_Y:I

.field private static final SHUTTER_BUTTON_WIDTH:I

.field private static final SHUTTER_PROGRESS_STEP:I = 0xc

.field private static final SHUTTER_SNAPSHOT_RATIO:F

.field private static final SIDE_MENU_WIDTH:I

.field private static final SNAPSHOT_BUTTON_POS_X:I

.field private static final SNAPSHOT_BUTTON_POS_Y:I

.field private static final SNAPSHOT_BUTTON_WIDTH:I

.field private static final SNAPSHOT_SHUTTER_RATIO:F

.field protected static final TAG:Ljava/lang/String; = "ProLite"

.field private static final TRANSLATION_DELTA_Y:F


# instance fields
.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBlinkCount:I

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private volatile mCameraCurrentSetCallbackTimeStamp:J

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEVState:I

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

.field private mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

.field private mISOState:I

.field private mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

.field private mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

.field private mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mIsBurstCapturing:Z

.field private mIsLongExposureCancelling:Z

.field private mIsRecordingStopping:Z

.field private mIsSavedPreviousFlashValue:Z

.field private mIsSavedPreviousShutterSpeed:Z

.field private mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

.field private mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mPauseButton:Lcom/samsung/android/glview/GLButton;

.field private mPauseButtonText:Lcom/samsung/android/glview/GLText;

.field private mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mRecTimeTextWidth:F

.field private mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;

.field private mRecordingTime:I

.field private mRemainRecTimeTextWidth:F

.field private mRemainRecordingTime:Ljava/lang/String;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mResumeButton:Lcom/samsung/android/glview/GLButton;

.field private mResumeButtonText:Lcom/samsung/android/glview/GLText;

.field private mSavedShutterSpeed:I

.field private mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mSelectedSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

.field private mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;

.field private mSingleCapturing:Z

.field private mSnapShotButton:Lcom/samsung/android/glview/GLButton;

.field private mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

.field private mStopButton:Lcom/samsung/android/glview/GLButton;

.field private mTextAnimation:Landroid/view/animation/AlphaAnimation;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

.field private mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

.field private pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v5, 0x7f0a0046

    const/4 v0, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    .line 86
    const v1, 0x7f0901bf

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    .line 87
    const v1, 0x7f0901be

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    .line 88
    const v1, 0x7f090214

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SIDE_MENU_WIDTH:I

    .line 89
    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->SIDE_MENU_WIDTH:I

    sub-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RIGHT_SIDE_MENU_POS_X:I

    .line 90
    const v1, 0x7f09015c

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_NORMAL_WIDTH:I

    .line 91
    const v1, 0x7f090148

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->NORMAL_RATIO_PREVIEW_LEFT:I

    .line 95
    const v1, 0x7f090167

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    .line 96
    const v1, 0x7f090161

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_RIGHT_MARGIN:I

    .line 97
    const v1, 0x7f090166

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_TOP_MARGIN:I

    .line 98
    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_RIGHT_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    sub-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_POS_X:I

    .line 99
    const v1, 0x7f090162

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_TEXT_MARGIN:I

    .line 100
    const v1, 0x7f0c0024

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_TEXT_COLOR:I

    .line 101
    const v1, 0x7f0c002a

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_TEXT_EV_LIMIT_COLOR:I

    .line 103
    const v1, 0x7f0a0013

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_VIEW_GROUP_SHOW_ANIMATION_DURATION:I

    .line 105
    const v1, 0x7f09016b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_RECORDING_RIGHT_MARGIN:I

    .line 106
    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_RECORDING_RIGHT_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    sub-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_RECORDING_ITEM_POS_X:I

    .line 107
    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_RECORDING_ITEM_POS_X:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_POS_X:I

    sub-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_RECORDING_ITEM_OFFSET:I

    .line 110
    const v1, 0x7f090341

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    .line 111
    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->NORMAL_RATIO_PREVIEW_LEFT:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_NORMAL_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_GROUP_POS_X:F

    .line 112
    const v1, 0x7f090168

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_TEXT_TOP_MARGIN:F

    .line 113
    const v1, 0x7f0902ea

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_TEXT_SIZE:F

    .line 114
    const v1, 0x7f0c002b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_TEXT_COLOR:I

    .line 115
    const v1, 0x7f090169

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_TITLE_HEIGHT:I

    .line 116
    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_TITLE_HEIGHT:I

    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_TEXT_TOP_MARGIN:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_TITLE_POS_Y:F

    .line 117
    const v1, 0x7f090314

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_TEXT_LINE_SPACING:F

    .line 120
    const v1, 0x7f090198

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_X:I

    .line 121
    const v1, 0x7f090199

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_Y:I

    .line 122
    const v1, 0x7f0902d7

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    .line 123
    const v1, 0x7f09019d

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_WIDTH:I

    .line 124
    const v1, 0x7f09019c

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_WIDTH:I

    .line 125
    const v1, 0x7f09019a

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_HEIGHT:I

    .line 126
    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    .line 127
    const v1, 0x7f09019b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_SIZE:I

    .line 130
    const v1, 0x7f0901aa

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_BUTTON_POS_X:I

    .line 131
    const v1, 0x7f0901ab

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_BUTTON_POS_Y:I

    .line 132
    const v1, 0x7f0901ac

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_BUTTON_WIDTH:I

    .line 133
    const v1, 0x7f0901ad

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_SNAPSHOT_MARGIN_Y:I

    .line 136
    const v1, 0x7f0901ae

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_STOP_BUTTON_POS_X:I

    .line 137
    const v1, 0x7f0901af

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_STOP_BUTTON_POS_Y:I

    .line 139
    const v1, 0x7f09020e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SHUTTER_BUTTON_WIDTH:I

    .line 140
    const v1, 0x7f09020b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SHUTTER_BUTTON_POS_Y:I

    .line 142
    const v1, 0x7f0900f1

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_WIDTH:I

    .line 143
    const v1, 0x7f0900ee

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    .line 144
    const v1, 0x7f0900ed

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    .line 145
    const v1, 0x7f0900eb

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_16_9_RATIO_MARGIN:I

    .line 146
    const v1, 0x7f0900ef

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_POS_Y:I

    .line 147
    const v1, 0x7f0900f0

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    .line 148
    const v1, 0x7f0901b3

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_TEXT_POS_X:I

    .line 149
    const v1, 0x7f0901b2

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    .line 150
    const v1, 0x7f0a0052

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    .line 151
    const v1, 0x7f0c0037

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    .line 152
    const v1, 0x7f0901b1

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_ICON_WIDTH:I

    .line 153
    const v1, 0x7f0901b0

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_ICON_LEFT_MARGIN:I

    .line 154
    const v1, 0x7f0902dc

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->REC_INDICATOR_TEXT_SIZE:F

    .line 155
    const v1, 0x7f0a0030

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_MODE_TEXT_SHADOW:Z

    .line 156
    const v0, 0x7f0a0031

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_MODE_TEXT_SHADOW_OFFSET:I

    .line 167
    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_MAX_ISO:Ljava/lang/String;

    const-string v1, "400"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    sput v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->ISO_VALUE_COUNT:I

    .line 179
    sget v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SHUTTER_BUTTON_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_BUTTON_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SHUTTER_SNAPSHOT_RATIO:F

    .line 180
    sget v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_BUTTON_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SHUTTER_BUTTON_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_SHUTTER_RATIO:F

    .line 181
    sget v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_BUTTON_POS_Y:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SHUTTER_BUTTON_POS_Y:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SHUTTER_BUTTON_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->TRANSLATION_DELTA_Y:F

    return-void

    .line 155
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 167
    :cond_1
    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    goto :goto_1
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 4
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 183
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 184
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 185
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 186
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 187
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 188
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 189
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .line 200
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    .line 201
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .line 202
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .line 203
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .line 204
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .line 228
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    .line 232
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTime:I

    .line 233
    const-string v0, "10:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRemainRecordingTime:Ljava/lang/String;

    .line 239
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBlinkCount:I

    .line 241
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsSavedPreviousFlashValue:Z

    .line 242
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsSavedPreviousShutterSpeed:Z

    .line 243
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSavedShutterSpeed:I

    .line 246
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraCurrentSetCallbackTimeStamp:J

    .line 248
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;

    .line 250
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEVState:I

    .line 251
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOState:I

    .line 253
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSingleCapturing:Z

    .line 254
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsRecordingStopping:Z

    .line 255
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsBurstCapturing:Z

    .line 256
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsLongExposureCancelling:Z

    .line 260
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 261
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 262
    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/ProLite;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/ProLite;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProLite;->blinkIndicatorRecIcon(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/ProLite;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/ProLite;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProLite;->blinkIndicatorRecTime(Z)V

    return-void
.end method

.method private blinkIndicatorRecIcon(Z)V
    .locals 2
    .param p1, "bShow"    # Z

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;

    if-eqz v0, :cond_0

    .line 1590
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;->removeMessages(I)V

    .line 1592
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 1593
    if-eqz p1, :cond_2

    .line 1594
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1599
    :cond_1
    :goto_0
    return-void

    .line 1596
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private blinkIndicatorRecTime(Z)V
    .locals 2
    .param p1, "bShow"    # Z

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;->removeMessages(I)V

    .line 1606
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 1607
    if-eqz p1, :cond_2

    .line 1608
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1613
    :cond_1
    :goto_0
    return-void

    .line 1610
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method private clearPro()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1616
    const-string v0, "ProLite"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;->access$100(Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;)V

    .line 1618
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;

    .line 1620
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setCameraCurrentSettingListener(Lcom/sec/android/seccamera/SecCamera$CameraCurrentSettingListener;)V

    .line 1622
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    .line 1623
    return-void
.end method

.method private doDimmingRecordingButtons(Z)V
    .locals 3
    .param p1, "dimmed"    # Z

    .prologue
    .line 1626
    const-string v0, "ProLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doDimmingRecordingButtons : dimmed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1630
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1632
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 1633
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1636
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    .line 1637
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1639
    :cond_1
    return-void
.end method

.method private enableMultiAF(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1642
    if-eqz p1, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableMultiAF(Z)V

    .line 1644
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFocusState(I)V

    .line 1649
    :goto_0
    return-void

    .line 1646
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFocusState(I)V

    .line 1647
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableMultiAF(Z)V

    goto :goto_0
.end method

.method private findNearestISO(I)I
    .locals 5
    .param p1, "iso"    # I

    .prologue
    .line 1652
    const v0, 0x7fffffff

    .line 1653
    .local v0, "abs":I
    const/4 v3, 0x3

    .line 1654
    .local v3, "nearestISOSettingValue":I
    const/4 v2, 0x0

    .line 1655
    .local v2, "nearestAbs":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->ISO_VALUE_COUNT:I

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    .line 1656
    mul-int/lit8 v4, v1, 0x3

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getIsoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sub-int v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1657
    if-le v0, v2, :cond_0

    .line 1658
    move v0, v2

    .line 1659
    move v3, v1

    .line 1655
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1662
    :cond_1
    return v3
.end method

.method private getShutterSpeedTimeMillis()J
    .locals 4

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getShutterSpeedString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private handleProRecordingCancelled()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1675
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/ProLite;->doDimmingRecordingButtons(Z)V

    .line 1676
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->unregisterRecordingController()V

    .line 1678
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 1680
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideRecordingButtonWithAnimation()V

    .line 1683
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsSavedPreviousShutterSpeed:Z

    if-eqz v0, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSavedShutterSpeed:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShutterSpeed(I)V

    .line 1685
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsSavedPreviousShutterSpeed:Z

    .line 1688
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showProView()V

    .line 1690
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1691
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideVisibleSlider()V

    .line 1694
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1695
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/ProLite;->enableMultiAF(Z)V

    .line 1697
    :cond_2
    return-void
.end method

.method private handleProRecordingStopped()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1700
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->unregisterRecordingController()V

    .line 1702
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x9

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 1703
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 1704
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 1706
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideRecordingButtonWithAnimation()V

    .line 1709
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsSavedPreviousShutterSpeed:Z

    if-eqz v0, :cond_0

    .line 1710
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSavedShutterSpeed:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShutterSpeed(I)V

    .line 1711
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsSavedPreviousShutterSpeed:Z

    .line 1714
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showProView()V

    .line 1716
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1717
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideVisibleSlider()V

    .line 1719
    :cond_1
    return-void
.end method

.method private hideLongEvShotProgressHelpText()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1722
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1723
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1724
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1725
    return-void
.end method

.method private hideProRecordingView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1729
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->updateProSliderPosition()V

    .line 1730
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->updateProSliderPosition()V

    .line 1732
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setRotateAnimation(Z)V

    .line 1733
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setRotateAnimation(Z)V

    .line 1735
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1736
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setRotateAnimation(Z)V

    .line 1735
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1738
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v3, v3}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    .line 1739
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setDim(Z)V

    .line 1740
    return-void
.end method

.method private hideProView()V
    .locals 2

    .prologue
    .line 1743
    const-string v0, "ProLite"

    const-string v1, "hideProView"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1747
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    if-eqz v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->hideSlider()V

    .line 1750
    :cond_0
    return-void
.end method

.method private hideRecordingButtonWithAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 1753
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setRecordingButtonForAnimation(Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;)V

    .line 1754
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableRecordingAnimation()V

    .line 1755
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1757
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1758
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1760
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1761
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1762
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1765
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1766
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1768
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideProRecordingView()V

    .line 1769
    return-void
.end method

.method private hideVisibleSlider()V
    .locals 1

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    if-eqz v0, :cond_0

    .line 1773
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->hideSlider()V

    .line 1775
    :cond_0
    return-void
.end method

.method private initPro()V
    .locals 4

    .prologue
    .line 1778
    const-string v0, "ProLite"

    const-string v1, "initPro"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusLength(I)V

    .line 1782
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v1

    sget v2, Lcom/sec/android/app/camera/feature/Feature;->EXPOSURE_COMPENSATION_STEP:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->updateValue(I)V

    .line 1783
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->updateValue(I)V

    .line 1784
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->updateValue(I)V

    .line 1786
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 1787
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 1788
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 1790
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 1791
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 1793
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1794
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->setShutterPriorityActivate(Z)V

    .line 1798
    :goto_0
    return-void

    .line 1796
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->setShutterPriorityActivate(Z)V

    goto :goto_0
.end method

.method private isProBurstCaptureEnabled()Z
    .locals 1

    .prologue
    .line 1801
    const/4 v0, 0x1

    return v0
.end method

.method private isSliderVisible()Z
    .locals 1

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1806
    :cond_0
    const/4 v0, 0x1

    .line 1808
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTouchAfAeDisabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1812
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1813
    const-string v1, "ProLite"

    const-string v2, "Wrong state for touchAF"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    :cond_0
    :goto_0
    return v0

    .line 1817
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isStopPreviewPending()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1818
    const-string v1, "ProLite"

    const-string v2, "Preview is not started"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1822
    :cond_2
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_TOUCH_AF:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1826
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1829
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeRecordingAnimation()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/16 v10, 0x23a

    const/4 v11, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1833
    const-string v2, "ProLite"

    const-string v3, "makeRecordingAnimation"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1836
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v3, 0x12c

    const/16 v4, 0x82

    new-instance v5, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(IILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1837
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    new-instance v5, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    const/16 v6, 0x12c

    const/16 v7, 0x82

    move v2, v0

    move v3, v1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1839
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1841
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSnapShotAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1842
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1843
    iget-object v12, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->TRANSLATION_DELTA_Y:F

    neg-float v2, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->SHUTTER_SNAPSHOT_RATIO:F

    div-float v4, v2, v3

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    new-instance v9, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v9}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v2, v0

    move v3, v0

    move v5, v0

    invoke-static/range {v2 .. v10}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1845
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v3, 0x1d6

    const/16 v4, 0x64

    new-instance v5, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(IILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1846
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->SHUTTER_SNAPSHOT_RATIO:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/ProLite;->SHUTTER_SNAPSHOT_RATIO:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    new-instance v9, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v9}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v5, v1

    move v7, v1

    invoke-static/range {v4 .. v11}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1848
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1851
    :cond_0
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1852
    iget-object v12, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->TRANSLATION_DELTA_Y:F

    neg-float v2, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_SHUTTER_RATIO:F

    div-float v4, v2, v3

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    new-instance v9, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v9}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v2, v0

    move v3, v0

    move v5, v0

    invoke-static/range {v2 .. v10}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1854
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-static {v10, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1855
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_SHUTTER_RATIO:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_SHUTTER_RATIO:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    new-instance v9, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v9}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v5, v1

    move v7, v1

    invoke-static/range {v4 .. v11}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1857
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1858
    return-void
.end method

.method private pauseRecording()V
    .locals 2

    .prologue
    .line 1861
    const-string v0, "ProLite"

    const-string v1, "pauseRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1864
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->PAUSE_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1866
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePauseVideoRecording()V

    .line 1867
    return-void
.end method

.method private resumeRecording()V
    .locals 2

    .prologue
    .line 1870
    const-string v0, "ProLite"

    const-string v1, "resumeRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->RESUME_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1874
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleResumeVideoRecording()V

    .line 1875
    return-void
.end method

.method private setProRecIndicatorPosition()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 1878
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1880
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecTimeTextWidth:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1882
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecTimeTextWidth:F

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1885
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRemainRecTimeTextWidth:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1886
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRemainRecTimeTextWidth:F

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1898
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecTimeTextWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v7, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1900
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecTimeTextWidth:F

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v8, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1903
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRemainRecTimeTextWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v7, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1905
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRemainRecTimeTextWidth:F

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v8, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1907
    return-void

    .line 1889
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecTimeTextWidth:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1890
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecTimeTextWidth:F

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1893
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_16_9_RATIO_MARGIN:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRemainRecTimeTextWidth:F

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1894
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_16_9_RATIO_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_ICON_WIDTH:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_0
.end method

.method private setShutterPriorityActivate(Z)V
    .locals 5
    .param p1, "isActive"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1910
    const-string v0, "ProLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShutterPriorityActivate : isActive - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    if-eqz p1, :cond_2

    .line 1913
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEVState:I

    .line 1915
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v0

    if-nez v0, :cond_0

    .line 1916
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOState:I

    .line 1919
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setISOAutoDim(Z)V

    .line 1922
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1923
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsSavedPreviousFlashValue:Z

    .line 1924
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    .line 1945
    :cond_1
    :goto_0
    return-void

    .line 1928
    :cond_2
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEVState:I

    .line 1929
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setTextColor(I)V

    .line 1930
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 1933
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOState:I

    if-ne v0, v3, :cond_3

    .line 1934
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOState:I

    .line 1935
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->updateValue(I)V

    .line 1936
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraISO(I)V

    .line 1937
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 1939
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setISOAutoDim(Z)V

    .line 1941
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsSavedPreviousFlashValue:Z

    if-eqz v0, :cond_1

    .line 1942
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    goto :goto_0
.end method

.method private showLongEvShotCancelHelpText()V
    .locals 2

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1949
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    const v1, 0x7f08010e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1950
    return-void
.end method

.method private showLongEvShotProgressHelpText()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1953
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewAspectRatio()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v0

    .line 1954
    .local v0, "aspectRatioType":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1955
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v5, v5}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    .line 1963
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1964
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1965
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    const v3, 0x7f08010c

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1966
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1967
    return-void

    .line 1956
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1957
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 1958
    .local v1, "offset":I
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, v1

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_GROUP_POS_X:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    goto :goto_0

    .line 1960
    .end local v1    # "offset":I
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_GROUP_POS_X:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    goto :goto_0
.end method

.method private showProRecordingView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1972
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1973
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLView;->setRotateAnimation(Z)V

    .line 1972
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1976
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setRotateAnimation(Z)V

    .line 1977
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setRotateAnimation(Z)V

    .line 1979
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setDim(Z)V

    .line 1981
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->setProRecIndicatorPosition()V

    .line 1983
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1984
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1985
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 1987
    :cond_1
    return-void
.end method

.method private showProView()V
    .locals 2

    .prologue
    .line 1990
    const-string v0, "ProLite"

    const-string v1, "showView"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1993
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1994
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 1996
    :cond_0
    return-void
.end method

.method private showRecordingTextAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1999
    const-string v0, "ProLite"

    const-string v1, "showRecordingTextAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 2002
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    .line 2003
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2006
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isRecordingTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2007
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2008
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    .line 2009
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2015
    :goto_0
    return-void

    .line 2011
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2012
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    .line 2013
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method private startBlinkIndicatorRecIcon()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2018
    const-string v0, "ProLite"

    const-string v1, "startBlinkIndicatorRecIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 2021
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/ProLite;->blinkIndicatorRecIcon(Z)V

    .line 2023
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;

    if-eqz v0, :cond_0

    .line 2024
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2027
    :cond_0
    return-void
.end method

.method private startLongEVShotShutterProgress()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc

    .line 2033
    const-string v0, "ProLite"

    const-string v1, "startLongEVShotShutterProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    if-eqz v0, :cond_0

    .line 2036
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 2037
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 2039
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;

    if-nez v0, :cond_1

    .line 2040
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getShutterSpeedTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-direct {v0, p0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;-><init>(Lcom/sec/android/app/camera/shootingmode/ProLite;J)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;

    .line 2047
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->start()V

    .line 2048
    :goto_1
    return-void

    .line 2041
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;

    # invokes: Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->isStopThread()Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->access$000(Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2042
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getShutterSpeedTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    # invokes: Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->setSleepTimeMillis(J)V
    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->access$200(Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;J)V

    goto :goto_0

    .line 2044
    :cond_2
    const-string v0, "ProLite"

    const-string v1, "return. ShutterProgressThread already started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private startProRecording()V
    .locals 1

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->registerRecordingController(Lcom/sec/android/app/camera/interfaces/Engine;)V

    .line 2053
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->START_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 2055
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2056
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideVisibleSlider()V

    .line 2058
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showProRecordingView()V

    .line 2059
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->startRecording()V

    .line 2060
    return-void
.end method

.method private startTimer()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 2063
    const-string v0, "ProLite"

    const-string v1, "startTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isRecordingTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2065
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2066
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMaxRecordingTimeLimitInSecond:I

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRemainRecordingTime:Ljava/lang/String;

    .line 2067
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 2068
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2070
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_0

    .line 2071
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showRecordingTextAnimation()V

    .line 2087
    :goto_0
    return-void

    .line 2073
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 2076
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2078
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 2079
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2081
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2082
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showRecordingTextAnimation()V

    goto :goto_0

    .line 2084
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method private stopLongEVShotShutterProgress()V
    .locals 3

    .prologue
    .line 2093
    const-string v0, "ProLite"

    const-string v1, "stopLongEVShotShutterProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;

    if-eqz v0, :cond_1

    .line 2096
    const-string v0, "ProLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopShutterProgressThread isAlive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2098
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;

    # invokes: Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->stopThread()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->access$300(Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;)V

    .line 2100
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;

    .line 2102
    :cond_1
    return-void
.end method

.method private updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V
    .locals 7
    .param p1, "cmd"    # Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    .prologue
    const/16 v6, -0x181

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 2105
    const-string v0, "ProLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRecordingLayout : cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/ProLite$1;->$SwitchMap$com$sec$android$app$camera$shootingmode$RecordingController$RecordingCommand:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2179
    :cond_0
    :goto_0
    return-void

    .line 2109
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableRecordingAnimation()V

    .line 2110
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v6}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 2112
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2115
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2116
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2117
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2118
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2119
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2120
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 2121
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 2122
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2123
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 2124
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2125
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2126
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2127
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    goto :goto_0

    .line 2131
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2132
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2134
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2135
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2136
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2137
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2138
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2140
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2141
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 2143
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_0

    .line 2146
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v6}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 2149
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2150
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2153
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2154
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2155
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2156
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2157
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2159
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2160
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 2162
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_0

    .line 2167
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_3

    .line 2168
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 2170
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 2171
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_4

    .line 2172
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 2174
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_0

    .line 2107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private updateRecordingTime(J)V
    .locals 5
    .param p1, "ms"    # J

    .prologue
    const/16 v3, 0xa

    const/4 v4, 0x2

    .line 2183
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTime:I

    .line 2185
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isRecordingTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2186
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTime:I

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 2188
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMaxRecordingTimeLimitInSecond:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTime:I

    sub-int/2addr v0, v1

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_2

    .line 2189
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBlinkCount:I

    .line 2196
    :cond_0
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBlinkCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBlinkCount:I

    if-lez v0, :cond_1

    .line 2197
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->blinkIndicatorRecTime(Z)V

    .line 2199
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;

    if-eqz v0, :cond_1

    .line 2200
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2206
    :cond_1
    :goto_1
    return-void

    .line 2190
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMaxRecordingTimeLimitInSecond:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTime:I

    sub-int/2addr v0, v1

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_3

    .line 2191
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBlinkCount:I

    goto :goto_0

    .line 2192
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMaxRecordingTimeLimitInSecond:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTime:I

    sub-int/2addr v0, v1

    if-ne v0, v3, :cond_0

    .line 2193
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBlinkCount:I

    goto :goto_0

    .line 2204
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTime:I

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected cancelRecording()V
    .locals 2

    .prologue
    .line 1417
    const-string v0, "ProLite"

    const-string v1, "cancelRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 1419
    const-string v0, "ProLite"

    const-string v1, "return cancelRecording - record is already stopping"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    :goto_0
    return-void

    .line 1423
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1424
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->CANCEL_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1425
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelVideoRecordingSync()V

    .line 1426
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopRecordingTickTimer()V

    .line 1427
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTime:I

    .line 1429
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->doDimmingRecordingButtons(Z)V

    .line 1430
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->registerEAM()V

    goto :goto_0
.end method

.method public getMaxFileSizeOfImage()J
    .locals 2

    .prologue
    .line 266
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSingleCapturing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsBurstCapturing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSnapShotAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1435
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v1, :cond_1

    .line 1447
    :cond_0
    :goto_0
    return v0

    .line 1438
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_0

    .line 1441
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEffectRecordingRestricted()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1444
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    if-nez v1, :cond_0

    .line 1447
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isZoomAvailable()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 9
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/16 v1, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 281
    const-string v0, "ProLite"

    const-string v2, "onActivate"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 284
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/ProLite;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/ProLite$RecordingHandler;

    .line 286
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v3, v8, [I

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x7f

    :goto_0
    aput v0, v3, v6

    const/16 v0, 0xb

    aput v0, v3, v5

    const/4 v4, 0x2

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v0, :cond_4

    const/16 v0, 0xab

    :goto_1
    aput v0, v3, v4

    aput v8, v3, v7

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x12

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setCameraCurrentSettingListener(Lcom/sec/android/seccamera/SecCamera$CameraCurrentSettingListener;)V

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareImageStoringListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageStoringListener;)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 299
    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsBurstCapturing:Z

    .line 301
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->initPro()V

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v2, 0x5

    invoke-interface {v0, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v7, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 313
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 319
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/ProLite;->enableMultiAF(Z)V

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureFormat()I

    move-result v0

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0801a3

    invoke-static {v0, v1, v5}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableCameraCurrentSet(Z)V

    .line 327
    return-void

    :cond_3
    move v0, v1

    .line 286
    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x6

    goto/16 :goto_1

    .line 310
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v6}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto :goto_2
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 348
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 333
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSliderVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 338
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSliderVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideVisibleSlider()V

    goto :goto_0

    .line 343
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isTouchAfAeDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 361
    :cond_1
    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 366
    return-void
.end method

.method public onBurstCaptureCompleted()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 371
    const-string v0, "ProLite"

    const-string v1, "onBurstCaptureCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsBurstCapturing:Z

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideCaptureProgressText()V

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x76

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 381
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/ProLite;->enableMultiAF(Z)V

    .line 383
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showProView()V

    .line 384
    return-void
.end method

.method public onBurstCaptureProgressed(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 388
    const-string v0, "ProLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstCaptureProgressed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    if-nez p1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showCaptureProgressText()V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    .line 393
    return-void
.end method

.method public onBurstCaptureStarted()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 397
    const-string v0, "ProLite"

    const-string v1, "onBurstCaptureStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsBurstCapturing:Z

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 401
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->enableMultiAF(Z)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x76

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 407
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideProView()V

    .line 408
    return-void
.end method

.method public onBurstCaptureStopped(I)Z
    .locals 2
    .param p1, "lastImageNum"    # I

    .prologue
    const/4 v1, 0x1

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 413
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/ProLite;->enableMultiAF(Z)V

    .line 415
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBurstCaptureThumbnailTaken(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I

    .prologue
    .line 420
    const-string v0, "ProLite"

    const-string v1, "onBurstCaptureThumbnailTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 422
    return-void
.end method

.method public onBurstStringProgressed([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 426
    return-void
.end method

.method public onCameraCurrentSet(Lcom/sec/android/seccamera/SecCamera$CameraCurrentSet;)V
    .locals 13
    .param p1, "data"    # Lcom/sec/android/seccamera/SecCamera$CameraCurrentSet;

    .prologue
    const/16 v12, 0x14

    const/4 v11, 0x1

    const/16 v10, -0x14

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 432
    .local v2, "currentTime":J
    iget-wide v6, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraCurrentSetCallbackTimeStamp:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x12c

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraCurrentSetCallbackTimeStamp:J

    .line 437
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEVState:I

    if-ne v6, v11, :cond_3

    .line 439
    const/4 v1, 0x0

    .line 440
    .local v1, "evString":Ljava/lang/String;
    const/4 v5, 0x0

    .line 441
    .local v5, "plus":Ljava/lang/String;
    iget-short v6, p1, Lcom/sec/android/seccamera/SecCamera$CameraCurrentSet;->exposure_value:S

    invoke-static {v6, v10, v12}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v0

    .line 442
    .local v0, "clampValue":I
    if-eqz v0, :cond_6

    .line 443
    div-int/lit8 v6, v0, 0xa

    if-ltz v6, :cond_4

    const-string v5, "+"

    .line 444
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-int/lit8 v7, v0, 0xa

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-lez v0, :cond_5

    rem-int/lit8 v6, v0, 0xa

    :goto_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 449
    :goto_3
    if-ge v0, v12, :cond_2

    if-gt v0, v10, :cond_7

    .line 450
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_TEXT_EV_LIMIT_COLOR:I

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setTextColor(I)V

    .line 455
    :goto_4
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v6, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 458
    .end local v0    # "clampValue":I
    .end local v1    # "evString":Ljava/lang/String;
    .end local v5    # "plus":Ljava/lang/String;
    :cond_3
    iget-short v6, p1, Lcom/sec/android/seccamera/SecCamera$CameraCurrentSet;->iso:S

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/ProLite;->findNearestISO(I)I

    move-result v4

    .line 459
    .local v4, "nearestISO":I
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOState:I

    if-ne v6, v11, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-nez v6, :cond_8

    .line 460
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraISO(I)V

    .line 461
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->updateValue(I)V

    goto :goto_0

    .line 443
    .end local v4    # "nearestISO":I
    .restart local v0    # "clampValue":I
    .restart local v1    # "evString":Ljava/lang/String;
    .restart local v5    # "plus":Ljava/lang/String;
    :cond_4
    const-string v5, ""

    goto :goto_1

    .line 444
    :cond_5
    neg-int v6, v0

    rem-int/lit8 v6, v6, 0xa

    goto :goto_2

    .line 446
    :cond_6
    const-string v1, "0"

    goto :goto_3

    .line 452
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_TEXT_COLOR:I

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setTextColor(I)V

    goto :goto_4

    .line 462
    .end local v0    # "clampValue":I
    .end local v1    # "evString":Ljava/lang/String;
    .end local v5    # "plus":Ljava/lang/String;
    .restart local v4    # "nearestISO":I
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-nez v6, :cond_0

    .line 463
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "A "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getIsoString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCameraSettingChanged(II)V
    .locals 2
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 469
    packed-switch p1, :pswitch_data_0

    .line 484
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 471
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_0

    .line 477
    :pswitch_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsSavedPreviousFlashValue:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsSavedPreviousFlashValue:Z

    goto :goto_0

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onChangeShootingModeParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 12
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    const/16 v11, 0x91

    const/16 v10, 0x2a

    const/16 v9, 0xb

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 488
    const-string v4, "ProLite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChangeShootingModeParameters : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v3

    sget-object v6, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v3, v6, :cond_3

    const-string v3, "RECORDING"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v1, 0x1

    .line 491
    .local v1, "isPhaseAfEnabled":Z
    const/4 v0, 0x1

    .line 493
    .local v0, "isDrcEnabled":Z
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setManualSettings(I)V

    .line 495
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v2

    .line 496
    .local v2, "shutterSpeed":I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v3, v4, :cond_0

    .line 497
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v3

    const/16 v4, 0x13

    if-le v3, v4, :cond_0

    .line 498
    const-string v3, "ProLite"

    const-string v4, "Shutter speed value is more than 1/30. Adjust it for Recording."

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/16 v2, 0x13

    .line 502
    :cond_0
    const/4 v3, 0x7

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 503
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getIsoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const/16 v3, 0x9

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v3, v4, :cond_4

    .line 506
    invoke-static {v9}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :goto_1
    const/16 v3, 0x13b

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureFormat()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getPictureFormatString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v3

    if-gez v3, :cond_5

    .line 513
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 514
    const/4 v1, 0x1

    .line 519
    :goto_2
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const/16 v3, 0x3a98

    const/16 v4, 0x7530

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 522
    const-string v3, "effect_hint"

    invoke-virtual {p1, v3, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 523
    const/4 v0, 0x1

    .line 525
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v3, v4, :cond_9

    .line 526
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_6

    .line 527
    const-string v3, "max-limit-recording-time-uhd"

    invoke-virtual {p1, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 528
    const-string v3, "max-limit-recording-time-uhd"

    invoke-virtual {p1, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/shootingmode/ProLite;->limitRecordingTimeBySystem(I)V

    .line 540
    :cond_1
    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEffectRecordingRestricted()Z

    move-result v3

    if-nez v3, :cond_8

    .line 541
    const-string v3, "effectrecording-hint"

    invoke-virtual {p1, v3, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 545
    :goto_4
    invoke-static {v11}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraParameters;->getMultiAFModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :goto_5
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v3, :cond_2

    .line 551
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v3, v4, :cond_a

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    if-ne v3, v10, :cond_a

    .line 552
    const-string v3, "phase-af"

    const-string v4, "off"

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v3, "dynamic-range-control"

    const-string v4, "off"

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_2
    :goto_6
    return-void

    .line 488
    .end local v0    # "isDrcEnabled":Z
    .end local v1    # "isPhaseAfEnabled":Z
    .end local v2    # "shutterSpeed":I
    :cond_3
    const-string v3, "PREVIEW"

    goto/16 :goto_0

    .line 508
    .restart local v0    # "isDrcEnabled":Z
    .restart local v1    # "isPhaseAfEnabled":Z
    .restart local v2    # "shutterSpeed":I
    :cond_4
    invoke-static {v9}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraExposureMeter()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 516
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    .line 517
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 530
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_7

    .line 531
    const-string v3, "max-limit-recording-time-wqhd"

    invoke-virtual {p1, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 532
    const-string v3, "max-limit-recording-time-wqhd"

    invoke-virtual {p1, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/shootingmode/ProLite;->limitRecordingTimeBySystem(I)V

    goto :goto_3

    .line 534
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    if-ne v3, v10, :cond_1

    .line 535
    const-string v3, "max-limit-recording-time-fhd60"

    invoke-virtual {p1, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 536
    const-string v3, "max-limit-recording-time-fhd60"

    invoke-virtual {p1, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/shootingmode/ProLite;->limitRecordingTimeBySystem(I)V

    goto/16 :goto_3

    .line 543
    :cond_8
    const-string v3, "effectrecording-hint"

    invoke-virtual {p1, v3, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 547
    :cond_9
    invoke-static {v11}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getMultiAFModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 555
    :cond_a
    const-string v4, "phase-af"

    if-eqz v1, :cond_b

    const-string v3, "on"

    :goto_7
    invoke-virtual {p1, v4, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v4, "dynamic-range-control"

    if-eqz v0, :cond_c

    const-string v3, "on"

    :goto_8
    invoke-virtual {p1, v4, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 555
    :cond_b
    const-string v3, "off"

    goto :goto_7

    .line 556
    :cond_c
    const-string v3, "off"

    goto :goto_8
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v0, 0x1

    .line 563
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-nez v1, :cond_2

    .line 564
    :cond_0
    const-string v1, "ProLite"

    const-string v2, "Call onClick after Clear!"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_1
    :goto_0
    return v0

    .line 567
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 568
    const-string v1, "ProLite"

    const-string v2, "onClick = mSnapShotButton"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 570
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->onShutterKeyReleased(I)Z

    goto :goto_0

    .line 572
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 573
    const-string v1, "ProLite"

    const-string v2, "onClick = mStopButton"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 577
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopRecording()V

    goto :goto_0

    .line 579
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 580
    const-string v1, "ProLite"

    const-string v2, "onClick = mPauseButton"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v1

    if-nez v1, :cond_1

    .line 584
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTime:I

    if-lt v1, v0, :cond_1

    .line 587
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->pauseRecording()V

    goto :goto_0

    .line 589
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 590
    const-string v1, "ProLite"

    const-string v2, "onClick = mResumeButton"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v1

    if-nez v1, :cond_1

    .line 594
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->resumeRecording()V

    goto :goto_0

    .line 596
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->contains(Lcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 597
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    .line 598
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->hideSlider()V

    goto/16 :goto_0

    .line 600
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->showSlider()V

    goto/16 :goto_0

    .line 603
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->contains(Lcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 604
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    .line 605
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->hideSlider()V

    goto/16 :goto_0

    .line 607
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->showSlider()V

    goto/16 :goto_0

    .line 610
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->contains(Lcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 611
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b

    .line 612
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->hideSlider()V

    goto/16 :goto_0

    .line 614
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->showSlider()V

    goto/16 :goto_0

    .line 618
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 28
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 623
    const-string v2, "ProLite"

    const-string v3, "onCreateView"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 625
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 626
    new-instance v2, Lcom/sec/android/app/camera/resourcedata/ProModeResourceData;

    invoke-direct {v2}, Lcom/sec/android/app/camera/resourcedata/ProModeResourceData;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 628
    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_TOP_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    div-int/lit8 v25, v2, 0x2

    .line 631
    .local v25, "itemOffset":I
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    int-to-float v6, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 636
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 638
    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v7

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v8

    float-to-int v8, v8

    new-instance v9, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v9}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    sget v10, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_VIEW_GROUP_SHOW_ANIMATION_DURATION:I

    invoke-static/range {v2 .. v10}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v27

    .line 640
    .local v27, "translateAnim":Landroid/view/animation/Animation;
    const/4 v2, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 642
    new-instance v24, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v24

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 643
    .local v24, "alphaAnim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x258

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 644
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 651
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_POS_X:I

    int-to-float v4, v3

    const/4 v5, 0x0

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_TEXT_MARGIN:I

    add-int/2addr v3, v7

    int-to-float v6, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v9

    .line 655
    .local v9, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_TOP_MARGIN:I

    sget v8, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    add-int v8, v8, v25

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    int-to-float v8, v8

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/widget/gl/ProItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotatable(Z)V

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotateAnimation(Z)V

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setCenterPivot(Z)V

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v9

    .line 665
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_TOP_MARGIN:I

    sget v8, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    add-int v8, v8, v25

    add-int/2addr v7, v8

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    int-to-float v8, v8

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/widget/gl/ProItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    .line 667
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotatable(Z)V

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotateAnimation(Z)V

    .line 669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setCenterPivot(Z)V

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v9

    .line 675
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_TOP_MARGIN:I

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    int-to-float v8, v8

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/widget/gl/ProItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotatable(Z)V

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotateAnimation(Z)V

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setCenterPivot(Z)V

    .line 680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 684
    new-instance v2, Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/menu/ProLiteSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setOnShowSliderListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderShowListener;)V

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v3

    sget v4, Lcom/sec/android/app/camera/feature/Feature;->EXPOSURE_COMPENSATION_STEP:F

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->updateValue(I)V

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setVisibility(I)V

    .line 691
    new-instance v2, Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/menu/ProLiteSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;)V

    .line 693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setOnShowSliderListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderShowListener;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->updateValue(I)V

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setVisibility(I)V

    .line 698
    new-instance v2, Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    const/4 v8, 0x2

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/menu/ProLiteSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setOnShowSliderListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderShowListener;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->updateValue(I)V

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setVisibility(I)V

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 713
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_GROUP_POS_X:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v5, v7

    sget v6, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setCenterPivot(Z)V

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 719
    const v2, 0x7f08010d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v15

    .line 720
    .local v15, "textHeight":F
    new-instance v10, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    const/4 v12, 0x0

    sget v13, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_TITLE_POS_Y:F

    sget v14, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    const v2, 0x7f08010d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v17, v2, v3

    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_TEXT_COLOR:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const v4, 0x7f0a0044

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x7f0c002c

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 731
    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    const v3, 0x7f08010c

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v26

    .line 733
    .local v26, "rows":I
    move/from16 v0, v26

    int-to-float v2, v0

    mul-float/2addr v2, v15

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_TEXT_LINE_SPACING:F

    add-int/lit8 v4, v26, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v15, v2, v3

    .line 734
    new-instance v10, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    const/4 v12, 0x0

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_TITLE_POS_Y:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_TITLE_HEIGHT:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_TEXT_TOP_MARGIN:F

    add-float v13, v2, v3

    sget v14, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    const v2, 0x7f08010c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v17, v2, v3

    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->LONG_EV_SHOT_PROGRESS_TEXT_COLOR:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const v4, 0x7f0a0044

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x7f0c002c

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 748
    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getHMSFormatStringWidth(F)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecTimeTextWidth:F

    .line 749
    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecTimeTextWidth:F

    add-float v6, v2, v3

    .line 751
    .local v6, "recTimeGroupWidth":F
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 755
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_ICON_LEFT_MARGIN:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x7f0201cd

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 758
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_ICON_LEFT_MARGIN:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x7f0201cc

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 761
    new-instance v16, Lcom/samsung/android/glview/GLText;

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v0, v2

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecTimeTextWidth:F

    move/from16 v20, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v0, v2

    move/from16 v21, v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v22

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v23, v2, v3

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v23}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 774
    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getMSFormatStringWidth(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const-string v3, " / "

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRemainRecTimeTextWidth:F

    .line 777
    new-instance v16, Lcom/samsung/android/glview/GLViewGroup;

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRemainRecTimeTextWidth:F

    add-float v20, v2, v3

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v21, v0

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v21}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 782
    new-instance v16, Lcom/samsung/android/glview/GLText;

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v0, v2

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRemainRecTimeTextWidth:F

    move/from16 v20, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v0, v2

    move/from16 v21, v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v22

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v23, v2, v3

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v23}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 786
    sget-boolean v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_MODE_TEXT_SHADOW:Z

    if-eqz v2, :cond_1

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_MODE_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_MODE_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setShadowOffset(FF)V

    .line 791
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 795
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSnapShotAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 796
    new-instance v16, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v17

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v18, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_SNAPSHOT_MARGIN_Y:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v19, v0

    const v20, 0x7f02010c

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v16 .. v23}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    .line 802
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08018d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 813
    new-instance v16, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v17

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v18, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v19, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_WIDTH:I

    int-to-float v0, v2

    move/from16 v20, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_HEIGHT:I

    int-to-float v0, v2

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08018d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_SIZE:I

    int-to-float v0, v2

    move/from16 v23, v0

    invoke-direct/range {v16 .. v23}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 817
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 828
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 830
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSnapShotAvailable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 831
    new-instance v16, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v17

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v18, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_SNAPSHOT_MARGIN_Y:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v19, v0

    const v20, 0x7f02010d

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v16 .. v23}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    .line 837
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801b3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 844
    new-instance v16, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v17

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v18, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v19, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_WIDTH:I

    int-to-float v0, v2

    move/from16 v20, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_HEIGHT:I

    int-to-float v0, v2

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0801b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_SIZE:I

    int-to-float v0, v2

    move/from16 v23, v0

    invoke-direct/range {v16 .. v23}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 849
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 863
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSnapShotAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 864
    new-instance v16, Lcom/samsung/android/glview/GLButton;

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v18, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_BUTTON_POS_Y:I

    int-to-float v0, v2

    move/from16 v19, v0

    const v20, 0x7f02010b

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v23}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    .line 865
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 869
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08010b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 876
    new-instance v16, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v17

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_BUTTON_POS_X:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v18, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v19, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_WIDTH:I

    int-to-float v0, v2

    move/from16 v20, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_HEIGHT:I

    int-to-float v0, v2

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08010b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_SIZE:I

    int-to-float v0, v2

    move/from16 v23, v0

    invoke-direct/range {v16 .. v23}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    .line 879
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 881
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 882
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 883
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_BUTTON_POS_X:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_BUTTON_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_BUTTON_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_BUTTON_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 894
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSnapShotAvailable()Z

    move-result v2

    if-nez v2, :cond_4

    .line 895
    new-instance v16, Lcom/samsung/android/glview/GLButton;

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_STOP_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v18, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_STOP_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_SNAPSHOT_MARGIN_Y:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v19, v0

    const v20, 0x7f020109

    const v21, 0x7f02010a

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v23}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    .line 901
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 904
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 907
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 909
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801d8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 910
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 912
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->makeRecordingAnimation()V

    .line 913
    return-void

    .line 789
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    goto/16 :goto_0

    .line 799
    :cond_2
    new-instance v16, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v17

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v18, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v0, v2

    move/from16 v19, v0

    const v20, 0x7f02010c

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v16 .. v23}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_1

    .line 834
    :cond_3
    new-instance v16, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v17

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v18, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v0, v2

    move/from16 v19, v0

    const v20, 0x7f02010d

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v16 .. v23}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_2

    .line 898
    :cond_4
    new-instance v16, Lcom/samsung/android/glview/GLButton;

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_STOP_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v18, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_STOP_BUTTON_POS_Y:I

    int-to-float v0, v2

    move/from16 v19, v0

    const v20, 0x7f020109

    const v21, 0x7f02010a

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v23}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_3
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 917
    const-string v0, "sef_file_type"

    const/16 v1, 0x9f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 918
    const/4 v0, 0x0

    return v0
.end method

.method public onEngineStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 923
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 925
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->updateMultiAFLayout()V

    .line 928
    :cond_0
    return-void
.end method

.method public onExposureValueMenuSelect(I)V
    .locals 3
    .param p1, "exposure"    # I

    .prologue
    .line 932
    const-string v0, "ProLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExposureValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->EXPOSURE_COMPENSATION_STEP:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    div-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setExposureValue(I)V

    .line 934
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->updateValue(I)V

    .line 935
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 936
    return-void
.end method

.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 940
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    .line 942
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showProRecordingView()V

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showProView()V

    goto :goto_0
.end method

.method public onHideProSlider(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V
    .locals 2
    .param p1, "slider"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 951
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSelected(Z)V

    .line 954
    :cond_0
    return-void
.end method

.method public onISOValueMenuSelect(I)V
    .locals 3
    .param p1, "iso"    # I

    .prologue
    .line 958
    const-string v0, "ProLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 960
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOState:I

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    mul-int/lit8 v1, p1, 0x3

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraISO(I)V

    .line 964
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->updateValue(I)V

    .line 965
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 966
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 5

    .prologue
    .line 970
    const-string v1, "ProLite"

    const-string v2, "onImageStoringCompleted"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const-string v0, "Pro_Mode_Info"

    .line 972
    .local v0, "keyName":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0x9f0

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/android/secvision/sef/SEF;->addSEFData(Ljava/lang/String;Ljava/lang/String;[BII)I

    .line 973
    const/4 v1, 0x0

    return v1
.end method

.method public onImageStoringPrepared(Lcom/sec/android/app/camera/util/ImageStoringInfo;)Z
    .locals 3
    .param p1, "info"    # Lcom/sec/android/app/camera/util/ImageStoringInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 978
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_PICTURE_FORMAT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureFormat()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 979
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 980
    invoke-static {v1}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/util/ImageStoringInfo;->setDirectory(Ljava/lang/String;)V

    .line 983
    :cond_0
    return v1
.end method

.method public onInactivate()V
    .locals 6

    .prologue
    const/16 v5, 0xe

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 989
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->clearSideQuickSetting()V

    .line 991
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsBurstCapturing:Z

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelBurstCapture()V

    .line 993
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsBurstCapturing:Z

    .line 996
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 997
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideVisibleSlider()V

    .line 1000
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 1001
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 1002
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .line 1004
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 1005
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectProcessorListener(Lcom/sec/android/app/camera/interfaces/Engine$EffectProcessorListener;)V

    .line 1006
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 1007
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareImageStoringListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageStoringListener;)V

    .line 1010
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1011
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 1012
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1f

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 1015
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSingleCapturing:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_3

    .line 1016
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showLongEvShotCancelHelpText()V

    .line 1017
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopLongEVShotShutterProgress()V

    .line 1018
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 1020
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelTakePicture()V

    .line 1021
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopLongEVShotShutterProgress()V

    .line 1022
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideLongEvShotProgressHelpText()V

    .line 1025
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSingleCapturing:Z

    if-eqz v0, :cond_4

    .line 1026
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSingleCapturing:Z

    .line 1029
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setManualSettings(I)V

    .line 1031
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 1032
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 1033
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 1034
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v5, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 1035
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x91

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 1037
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_5

    .line 1038
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTime:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    .line 1039
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->cancelRecording()V

    .line 1045
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1046
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1048
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_6

    .line 1049
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1050
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1053
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1055
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableCameraCurrentSet(Z)V

    .line 1058
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 1060
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->clearPro()V

    .line 1061
    return-void

    .line 1041
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopRecordingForced()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1065
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1070
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 1116
    :cond_1
    :goto_0
    return v0

    .line 1072
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSliderVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1073
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideVisibleSlider()V

    goto :goto_0

    .line 1076
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsBurstCapturing:Z

    if-nez v2, :cond_1

    .line 1080
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSingleCapturing:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v2

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_3

    .line 1081
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showLongEvShotCancelHelpText()V

    .line 1082
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopLongEVShotShutterProgress()V

    .line 1083
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsLongExposureCancelling:Z

    .line 1084
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelTakePicture()V

    goto :goto_0

    .line 1087
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v2, v3, :cond_0

    .line 1088
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopRecording()V

    goto :goto_0

    .line 1096
    :sswitch_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsBurstCapturing:Z

    if-eqz v2, :cond_4

    move v0, v1

    .line 1097
    goto :goto_0

    .line 1100
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v2, v3, :cond_0

    .line 1101
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSnapShotAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1102
    const-string v1, "ProLite"

    const-string v2, "returning because the enter key of the keyboard was inputted in the recording state"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1108
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v2, v3, :cond_0

    .line 1109
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopRecording()V

    goto :goto_0

    .line 1070
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public onMediaRecorderPreparedEvent(Lcom/sec/android/secmediarecorder/SecMediaRecorder;)V
    .locals 2
    .param p1, "mediaRecorder"    # Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .prologue
    .line 1121
    const-string v0, "ProLite"

    const-string v1, "onMediaRecorderPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMaxRecordingTimeLimitInSecond:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1123
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMaxRecordingTimeLimitInSecond:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 1125
    :cond_0
    return-void
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 1129
    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, 0x0

    .line 1134
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 1135
    packed-switch p1, :pswitch_data_0

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1138
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->updateProSliderPosition()V

    .line 1139
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->updateProSliderPosition()V

    .line 1140
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    goto :goto_0

    .line 1144
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_RECORDING_ITEM_OFFSET:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    goto :goto_0

    .line 1135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRecordKeyReleased()Z
    .locals 2

    .prologue
    .line 1154
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 1155
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->startProRecording()V

    .line 1157
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onRecordingEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 1162
    packed-switch p1, :pswitch_data_0

    .line 1176
    :goto_0
    :pswitch_0
    return-void

    .line 1168
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->handleProRecordingStopped()V

    goto :goto_0

    .line 1171
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->handleProRecordingCancelled()V

    goto :goto_0

    .line 1162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onRecordingMaxDurationReached()V
    .locals 3

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0801fe

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->onStopRecordingRequested(Z)V

    .line 1183
    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 4

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getMaxVideoFileSize()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1188
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopRecording()V

    .line 1194
    :goto_0
    return-void

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->removeTouchAeRequest()V

    .line 1191
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->removeAfRequest()V

    .line 1192
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopAndRestartVideoRecording()V

    goto :goto_0
.end method

.method protected onRecordingRestricted(ZZ)V
    .locals 0
    .param p1, "isRestricted"    # Z
    .param p2, "stopForced"    # Z

    .prologue
    .line 1452
    if-eqz p1, :cond_0

    .line 1453
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/ProLite;->onStopRecordingRequested(Z)V

    .line 1455
    :cond_0
    return-void
.end method

.method public onRecordingTick(JJ)V
    .locals 3
    .param p1, "elapsedTime"    # J
    .param p3, "fileSize"    # J

    .prologue
    .line 1198
    const-string v0, "ProLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingTick : elapsedTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1201
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->startTimer()V

    .line 1205
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->startBlinkIndicatorRecIcon()V

    .line 1206
    return-void

    .line 1203
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/ProLite;->updateRecordingTime(J)V

    goto :goto_0
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 1
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1211
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideProView()V

    .line 1213
    :cond_0
    return-void
.end method

.method public onShowProSlider(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V
    .locals 2
    .param p1, "slider"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 1220
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->hideSlider()V

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1229
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    .line 1236
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    if-eqz v0, :cond_2

    .line 1237
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSelected(Z)V

    .line 1240
    :cond_2
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .line 1241
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->refreshSliderStep()V

    .line 1243
    return-void

    .line 1230
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1231
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    goto :goto_0

    .line 1232
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1233
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    goto :goto_0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 1247
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBurstCaptureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isProBurstCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterPressed()V

    .line 1249
    const/4 v0, 0x1

    .line 1251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 1256
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBurstCaptureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1257
    const/4 v0, 0x1

    .line 1259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 3
    .param p1, "captureMethod"    # I

    .prologue
    const/4 v0, 0x1

    .line 1264
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_3

    .line 1265
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1288
    :cond_0
    :goto_0
    return v0

    .line 1269
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getRemainRecordingTime()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    .line 1270
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleTakePicture()V

    goto :goto_0

    .line 1272
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x191

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(I)V

    goto :goto_0

    .line 1277
    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsBurstCapturing:Z

    if-eqz v1, :cond_4

    .line 1278
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1279
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterReleased()V

    goto :goto_0

    .line 1283
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(I)V

    .line 1284
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1285
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1, v0, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    .line 1288
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 8
    .param p1, "event"    # I

    .prologue
    const/16 v7, 0x1c

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1293
    const-string v0, "ProLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleCaptureEvent - event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    packed-switch p1, :pswitch_data_0

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1297
    :pswitch_0
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSingleCapturing:Z

    .line 1298
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1299
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideProView()V

    goto :goto_0

    .line 1303
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    if-lt v0, v7, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x102

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 1305
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideProView()V

    .line 1306
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showLongEvShotProgressHelpText()V

    .line 1307
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->startLongEVShotShutterProgress()V

    goto :goto_0

    .line 1314
    :pswitch_2
    if-eq p1, v5, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1315
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1316
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelIntervalCapture()V

    .line 1317
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 1318
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1320
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showProView()V

    .line 1324
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    if-lt v0, v7, :cond_6

    .line 1325
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideLongEvShotProgressHelpText()V

    .line 1326
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopLongEVShotShutterProgress()V

    .line 1327
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 1329
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1330
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 1331
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showProView()V

    .line 1332
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1349
    :cond_3
    :goto_1
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSingleCapturing:Z

    .line 1350
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsLongExposureCancelling:Z

    goto :goto_0

    .line 1333
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsLongExposureCancelling:Z

    if-eqz v0, :cond_3

    .line 1334
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showProView()V

    .line 1335
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    goto :goto_1

    .line 1338
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showProView()V

    .line 1339
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    goto :goto_1

    .line 1342
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1343
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 1344
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showProView()V

    goto :goto_1

    .line 1295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onStopRecordingRequested(Z)V
    .locals 4
    .param p1, "forced"    # Z

    .prologue
    .line 1360
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTime:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1361
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->cancelRecording()V

    .line 1369
    :goto_0
    return-void

    .line 1363
    :cond_1
    if-eqz p1, :cond_2

    .line 1364
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopRecordingForced()V

    goto :goto_0

    .line 1366
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopRecording()V

    goto :goto_0
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 1373
    const-string v0, "ProLite"

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

    .line 1374
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 1378
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 1380
    :cond_1
    if-nez p1, :cond_3

    .line 1381
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1382
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 1383
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1384
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 1391
    :cond_3
    :goto_0
    return-void

    .line 1387
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1388
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1395
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 1400
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoStoringPreparedEvent()V
    .locals 0

    .prologue
    .line 1405
    return-void
.end method

.method public onWBValueMenuSelect(I)V
    .locals 3
    .param p1, "wb"    # I

    .prologue
    .line 1409
    const-string v0, "ProLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setWhiteBalance(I)V

    .line 1412
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->updateValue(I)V

    .line 1413
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 1414
    return-void
.end method

.method protected runShutterProgress(J)V
    .locals 5
    .param p1, "sleepTimeMillis"    # J

    .prologue
    const/16 v4, 0xc

    .line 1463
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;

    # invokes: Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->isStopThread()Z
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->access$000(Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1464
    const-string v2, "ProLite"

    const-string v3, "runProgress mShutterProgressThread is stop"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :cond_0
    :goto_0
    return-void

    .line 1468
    :cond_1
    const-string v2, "ProLite"

    const-string v3, "runShutterProgress"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    const/4 v1, 0x0

    .line 1471
    .local v1, "progress":I
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;

    if-eqz v2, :cond_3

    .line 1472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-gt v0, v4, :cond_0

    .line 1474
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;

    # invokes: Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->isStopThread()Z
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;->access$000(Lcom/sec/android/app/camera/shootingmode/ProLite$ShutterProgressThread;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1478
    mul-int/lit8 v2, v0, 0x64

    div-int/lit8 v1, v2, 0xc

    .line 1479
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    .line 1481
    if-ge v0, v4, :cond_2

    .line 1483
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1472
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1496
    .end local v0    # "i":I
    :cond_3
    const-string v2, "ProLite"

    const-string v3, "runProgress mProgressThread is null by stopThread"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1484
    .restart local v0    # "i":I
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method protected startRecording()V
    .locals 5

    .prologue
    const/16 v4, 0x13

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1501
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1502
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->unregisterEAM()V

    .line 1503
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    .line 1504
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 1505
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x8

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 1507
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1508
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/ProLite;->enableMultiAF(Z)V

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setMaxVideoFileSize()V

    .line 1512
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSwitchToCamcorderPreview()V

    .line 1513
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePrepareVideoRecording()V

    .line 1514
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartVideoRecording()V

    .line 1516
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsRecordingStopping:Z

    .line 1518
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1519
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1520
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/ProLite;->doDimmingRecordingButtons(Z)V

    .line 1521
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->onOrientationChanged(I)V

    .line 1523
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1524
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1525
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 1529
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    if-le v0, v4, :cond_2

    .line 1530
    const-string v0, "ProLite"

    const-string v1, "Shutter speed value is more than 1/30. Adjust it for Recording."

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsSavedPreviousShutterSpeed:Z

    .line 1533
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSavedShutterSpeed:I

    .line 1535
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShutterSpeed(I)V

    .line 1537
    :cond_2
    return-void
.end method

.method protected stopRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1540
    const-string v0, "ProLite"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTime:I

    if-lt v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsRecordingStopping:Z

    if-eqz v0, :cond_1

    .line 1543
    :cond_0
    const-string v0, "ProLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecording : already stopping - recordingTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :goto_0
    return-void

    .line 1546
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsRecordingStopping:Z

    .line 1548
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1549
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getVideoRecordingTimeInMilliSecond()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/ProLite;->updateRecordingTime(J)V

    .line 1550
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1552
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_3

    .line 1553
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopVideoRecordingAsync()V

    .line 1557
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopRecordingTickTimer()V

    .line 1558
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTime:I

    .line 1559
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1561
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/ProLite;->doDimmingRecordingButtons(Z)V

    .line 1562
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->registerEAM()V

    goto :goto_0

    .line 1555
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopVideoRecordingSync()V

    goto :goto_1
.end method

.method protected stopRecordingForced()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1566
    const-string v0, "ProLite"

    const-string v1, "stopRecordingForced"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTime:I

    if-lt v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsRecordingStopping:Z

    if-eqz v0, :cond_1

    .line 1569
    :cond_0
    const-string v0, "ProLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecordingForced : already stopping - recordingTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    :goto_0
    return-void

    .line 1573
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1574
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getVideoRecordingTimeInMilliSecond()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/ProLite;->updateRecordingTime(J)V

    .line 1575
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1576
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopVideoRecordingForced()V

    .line 1578
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopRecordingTickTimer()V

    .line 1579
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTime:I

    .line 1580
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1582
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/ProLite;->doDimmingRecordingButtons(Z)V

    .line 1584
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsRecordingStopping:Z

    .line 1585
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->registerEAM()V

    goto :goto_0
.end method
