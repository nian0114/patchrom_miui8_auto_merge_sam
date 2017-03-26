.class public Lcom/sec/android/app/camera/shootingmode/Pro;
.super Lcom/sec/android/app/camera/shootingmode/RecordingController;
.source "Pro.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$CameraCurrentSettingListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;
.implements Lcom/sec/android/app/camera/menu/ProSlider$ProSliderManualFocusZoomListener;
.implements Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;
.implements Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;
.implements Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;
.implements Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$CustomSettingMenuSelectListener;
.implements Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$CustomSaveMenuSelectListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/menu/ProSlider$ProSliderShowListener;
.implements Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;
.implements Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;
.implements Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListShowListener;
.implements Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListHideListener;
.implements Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EffectProcessorListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ImageStoringListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/Pro$2;,
        Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;,
        Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;,
        Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;,
        Lcom/sec/android/app/camera/shootingmode/Pro$RecordingHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_100:I = 0x64

.field private static final ANIMATION_DURATION_130:I = 0x82

.field private static final ANIMATION_DURATION_300:I = 0x12c

.field private static final ANIMATION_DURATION_470:I = 0x1d6

.field private static final ANIMATION_DURATION_570:I = 0x23a

.field private static final AUTO_MODE:I = 0x1

.field private static final CAF_BUTTON_DIAMETER:I

.field private static final CAF_BUTTON_POS_X:I

.field private static final CAF_BUTTON_POS_Y:I

.field private static final CAMERACURRENTSET_CALLBACK_WAIT_TIME:J = 0x12cL

.field private static final COLORTUNE_LIST_ITEM_WIDTH:I

.field private static final COLORTUNE_LIST_POS_X:I

.field private static final COLORTUNE_LIST_POS_Y:I

.field private static final COLOR_TUNE_CHANGE_STATE_DEFAULT:I = 0x3

.field private static final COLOR_TUNE_CHANGE_STATE_INIT:I = 0x0

.field private static final COLOR_TUNE_CHANGE_STATE_LOADED:I = 0x1

.field private static final COLOR_TUNE_CHANGE_STATE_UPDATED:I = 0x2

.field private static final COLOR_TUNE_CONTRAST:I = 0x2

.field private static final COLOR_TUNE_EDIT_BUTTON_POS_X:I

.field private static final COLOR_TUNE_EDIT_BUTTON_POS_Y:I

.field private static final COLOR_TUNE_EDIT_BUTTON_RIGHT_MARGIN:I

.field private static final COLOR_TUNE_EDIT_BUTTON_WIDTH:I

.field private static final COLOR_TUNE_HIGHLIGHT:I = 0x4

.field private static final COLOR_TUNE_ITEM_NUM:I = 0x7

.field private static final COLOR_TUNE_PRESET_DIVIDE_FACTOR:I

.field private static final COLOR_TUNE_PRESET_MAX_OFFSET_VALUE:I

.field private static final COLOR_TUNE_SATURATION:I = 0x3

.field private static final COLOR_TUNE_SHADOW:I = 0x5

.field private static final COLOR_TUNE_TEMPERATURE:I = 0x0

.field private static final COLOR_TUNE_TINT:I = 0x1

.field private static final COLOR_TUNE_TONE_DIVIDE_FACTOR:I

.field private static final COLOR_TUNE_TONE_MAX_OFFSET_VALUE:I

.field private static final CUSTOM_ID_1:I = 0x1

.field private static final CUSTOM_ID_2:I = 0x2

.field private static final CUSTOM_ID_3:I = 0x3

.field private static final CUSTOM_ID_NONE:I = 0x0

.field private static final DEFAULT_CAMERA_COLOR_TUNE_VALUE:[Ljava/lang/String;

.field private static final ISO_VALUE_COUNT:I

.field private static final KEY_CAMERA_COLOR_TUNE_VALUE:[Ljava/lang/String;

.field private static final KEY_CAMERA_ISO_STATE:Ljava/lang/String; = "pref_camera_iso_state_key"

.field private static final KEY_CAMERA_PRO_CUSTOM_1:Ljava/lang/String; = "pref_camera_pro_custom_1_key"

.field private static final KEY_CAMERA_PRO_CUSTOM_2:Ljava/lang/String; = "pref_camera_pro_custom_2_key"

.field private static final KEY_CAMERA_PRO_CUSTOM_3:Ljava/lang/String; = "pref_camera_pro_custom_3_key"

.field private static final KEY_CAMERA_SAVED_CUSTOM_ID:Ljava/lang/String; = "pref_camera_saved_custom_num_key"

.field private static final LONG_EV_SHOT_DELAY_MSEC:I = 0x3e8

.field private static final LONG_EV_SHOT_PROGRESS_GROUP_POS_X:F

.field private static final LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

.field private static final LONG_EV_SHOT_PROGRESS_TEXT_COLOR:I

.field private static final LONG_EV_SHOT_PROGRESS_TEXT_LINE_SPACING:F

.field private static final LONG_EV_SHOT_PROGRESS_TEXT_SIZE:F

.field private static final LONG_EV_SHOT_PROGRESS_TEXT_TOP_MARGIN:F

.field private static final LONG_EV_SHOT_PROGRESS_TITLE_HEIGHT:I

.field private static final LONG_EV_SHOT_PROGRESS_TITLE_POS_Y:F

.field private static final MANUAL_FOCUS_ZOOM_STEP:I = 0x21c

.field private static final MANUAL_MODE:I = 0x0

.field private static final MAX_PRO_RECORDING_SHUTTER_SPEED:I = 0x13

.field private static final NORMAL_RATIO_PREVIEW_LEFT:I

.field private static final PRO_CUSTOM_POS_X:I

.field private static final PRO_CUSTOM_RIGHT_MARGIN:I

.field private static final PRO_ITEM_NUM:I = 0x6

.field private static final PRO_ITEM_POS_X:I

.field private static final PRO_ITEM_RIGHT_MARGIN:I

.field private static final PRO_ITEM_TEXT_COLOR:I

.field private static final PRO_ITEM_TEXT_EV_LIMIT_COLOR:I

.field private static final PRO_ITEM_TOP_MARGIN:I

.field private static final PRO_ITEM_WIDTH:I

.field private static final PRO_RECORDING_ITEM_3_TOP_MARGIN:I

.field private static final PRO_RECORDING_ITEM_4_TOP_MARGIN:I

.field private static final PRO_RECORDING_ITEM_INTERVAL_OFFSET:I

.field private static final PRO_RECORDING_ITEM_NUM_3:I = 0x3

.field private static final PRO_RECORDING_ITEM_NUM_4:I = 0x4

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

.field protected static final TAG:Ljava/lang/String; = "Pro"

.field private static final TRANSLATION_DELTA_Y:F


# instance fields
.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBlinkCount:I

.field private mCAFButton:Lcom/samsung/android/glview/GLButton;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mColorTuneArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;",
            ">;"
        }
    .end annotation
.end field

.field private mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

.field private mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

.field private mColorTuneResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

.field private mCurrentCustomId:I

.field private mCustom1:Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

.field private mCustom2:Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

.field private mCustom3:Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

.field private mCustomButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mCustomSaveMenu:Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;

.field private mCustomSetToast:Landroid/widget/Toast;

.field private mCustomSettingMenu:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

.field private mEVState:I

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

.field private mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

.field private mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

.field private mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

.field private mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mIsBurstCapturing:Z

.field private mIsManualFocusZoomProcessing:Z

.field private mIsRecordingStopping:Z

.field private mIsSavedPreviousFlashValue:Z

.field private mIsSavedPreviousShutterSpeed:Z

.field private mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

.field private mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

.field private mLongEvShotWaitToast:Landroid/widget/Toast;

.field private mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mPauseButton:Lcom/samsung/android/glview/GLButton;

.field private mPauseButtonText:Lcom/samsung/android/glview/GLText;

.field private mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mRecTimeTextWidth:F

.field private mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Pro$RecordingHandler;

.field private mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

.field private mRecordingTime:I

.field private mRemainRecTimeTextWidth:F

.field private mRemainRecordingTime:Ljava/lang/String;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mResumeButton:Lcom/samsung/android/glview/GLButton;

.field private mResumeButtonText:Lcom/samsung/android/glview/GLText;

.field private mSavedShutterSpeed:I

.field private mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

.field private mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

.field private mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

.field private mSingleCapturing:Z

.field private mSnapShotButton:Lcom/samsung/android/glview/GLButton;

.field private mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

.field private mStopButton:Lcom/samsung/android/glview/GLButton;

.field private mTextAnimation:Landroid/view/animation/AlphaAnimation;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

.field private mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

.field private pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 116
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    .line 117
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    .line 118
    const v0, 0x7f090214

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SIDE_MENU_WIDTH:I

    .line 119
    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->SIDE_MENU_WIDTH:I

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RIGHT_SIDE_MENU_POS_X:I

    .line 120
    const v0, 0x7f09015c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_NORMAL_WIDTH:I

    .line 121
    const v0, 0x7f090148

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->NORMAL_RATIO_PREVIEW_LEFT:I

    .line 127
    const v0, 0x7f090167

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    .line 128
    const v0, 0x7f090161

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_RIGHT_MARGIN:I

    .line 129
    const v0, 0x7f090166

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TOP_MARGIN:I

    .line 130
    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_RIGHT_MARGIN:I

    sub-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_POS_X:I

    .line 131
    const v0, 0x7f0c0024

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TEXT_COLOR:I

    .line 132
    const v0, 0x7f0c002a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TEXT_EV_LIMIT_COLOR:I

    .line 134
    const v0, 0x7f0a0013

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_VIEW_GROUP_SHOW_ANIMATION_DURATION:I

    .line 136
    const v0, 0x7f09016b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_RECORDING_RIGHT_MARGIN:I

    .line 137
    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_RECORDING_RIGHT_MARGIN:I

    sub-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_RECORDING_ITEM_POS_X:I

    .line 138
    const v0, 0x7f09016a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_RECORDING_ITEM_INTERVAL_OFFSET:I

    .line 139
    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_RECORDING_ITEM_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_POS_X:I

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_RECORDING_ITEM_OFFSET:I

    .line 140
    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_RECORDING_ITEM_INTERVAL_OFFSET:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_RECORDING_ITEM_3_TOP_MARGIN:I

    .line 141
    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_RECORDING_ITEM_INTERVAL_OFFSET:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_RECORDING_ITEM_4_TOP_MARGIN:I

    .line 143
    const v0, 0x7f090160

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_CUSTOM_RIGHT_MARGIN:I

    .line 144
    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_CUSTOM_RIGHT_MARGIN:I

    sub-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_CUSTOM_POS_X:I

    .line 146
    const v0, 0x7f090076

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLORTUNE_LIST_ITEM_WIDTH:I

    .line 147
    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    const v3, 0x7f09015f

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->COLORTUNE_LIST_ITEM_WIDTH:I

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLORTUNE_LIST_POS_X:I

    .line 148
    const v0, 0x7f0902f6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLORTUNE_LIST_POS_Y:I

    .line 151
    const v0, 0x7f0902f3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_EDIT_BUTTON_WIDTH:I

    .line 152
    const v0, 0x7f0902f1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_EDIT_BUTTON_RIGHT_MARGIN:I

    .line 153
    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLORTUNE_LIST_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_EDIT_BUTTON_RIGHT_MARGIN:I

    sub-int/2addr v0, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_EDIT_BUTTON_WIDTH:I

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_EDIT_BUTTON_POS_X:I

    .line 154
    const v0, 0x7f0902f2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_EDIT_BUTTON_POS_Y:I

    .line 157
    const v0, 0x7f090341

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    .line 158
    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->NORMAL_RATIO_PREVIEW_LEFT:I

    int-to-float v0, v0

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_NORMAL_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_POS_X:F

    .line 159
    const v0, 0x7f090168

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_TOP_MARGIN:F

    .line 160
    const v0, 0x7f0902ea

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_SIZE:F

    .line 161
    const v0, 0x7f0c002b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_COLOR:I

    .line 162
    const v0, 0x7f090169

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TITLE_HEIGHT:I

    .line 163
    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TITLE_HEIGHT:I

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_TOP_MARGIN:F

    add-float/2addr v3, v4

    sub-float/2addr v0, v3

    div-float/2addr v0, v5

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TITLE_POS_Y:F

    .line 164
    const v0, 0x7f090314

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_LINE_SPACING:F

    .line 167
    const v0, 0x7f090198

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_X:I

    .line 168
    const v0, 0x7f090199

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_Y:I

    .line 169
    const v0, 0x7f0902d7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    .line 170
    const v0, 0x7f09019d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_WIDTH:I

    .line 171
    const v0, 0x7f09019c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_WIDTH:I

    .line 172
    const v0, 0x7f09019a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_HEIGHT:I

    .line 173
    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_WIDTH:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    .line 174
    const v0, 0x7f09019b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_SIZE:I

    .line 177
    const v0, 0x7f0901aa

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_BUTTON_POS_X:I

    .line 178
    const v0, 0x7f0901ab

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_BUTTON_POS_Y:I

    .line 179
    const v0, 0x7f0901ac

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_BUTTON_WIDTH:I

    .line 180
    const v0, 0x7f0901ad

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_SNAPSHOT_MARGIN_Y:I

    .line 183
    const v0, 0x7f0901ae

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_STOP_BUTTON_POS_X:I

    .line 184
    const v0, 0x7f0901af

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_STOP_BUTTON_POS_Y:I

    .line 187
    const v0, 0x7f090194

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->CAF_BUTTON_POS_X:I

    .line 188
    const v0, 0x7f090195

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->CAF_BUTTON_POS_Y:I

    .line 189
    const v0, 0x7f090193

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->CAF_BUTTON_DIAMETER:I

    .line 191
    const v0, 0x7f09020e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SHUTTER_BUTTON_WIDTH:I

    .line 192
    const v0, 0x7f09020b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SHUTTER_BUTTON_POS_Y:I

    .line 194
    const v0, 0x7f0900f1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_WIDTH:I

    .line 195
    const v0, 0x7f0900ee

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    .line 196
    const v0, 0x7f0900ed

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    .line 197
    const v0, 0x7f0900eb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_16_9_RATIO_MARGIN:I

    .line 198
    const v0, 0x7f0900ef

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_POS_Y:I

    .line 199
    const v0, 0x7f0900f0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    .line 200
    const v0, 0x7f0901b3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_TEXT_POS_X:I

    .line 201
    const v0, 0x7f0901b2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    .line 202
    const v0, 0x7f0a0052

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    .line 203
    const v0, 0x7f0c0037

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    .line 204
    const v0, 0x7f0901b1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_ICON_WIDTH:I

    .line 205
    const v0, 0x7f0901b0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_ICON_LEFT_MARGIN:I

    .line 206
    const v0, 0x7f0902dc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->REC_INDICATOR_TEXT_SIZE:F

    .line 207
    const v0, 0x7f0a0030

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_MODE_TEXT_SHADOW:Z

    .line 208
    const v0, 0x7f0a0031

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_MODE_TEXT_SHADOW_OFFSET:I

    .line 221
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "pref_camera_color_tune_none"

    aput-object v3, v0, v2

    const-string v3, "pref_camera_color_tune_breeze"

    aput-object v3, v0, v1

    const-string v3, "pref_camera_color_tune_vivid"

    aput-object v3, v0, v6

    const-string v3, "pref_camera_color_tune_nostalgia"

    aput-object v3, v0, v7

    const/4 v3, 0x4

    const-string v4, "pref_camera_color_tune_soft"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "pref_camera_color_tune_serene"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "pref_camera_color_tune_custom_1"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "pref_camera_color_tune_custom_2"

    aput-object v4, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/Pro;->KEY_CAMERA_COLOR_TUNE_VALUE:[Ljava/lang/String;

    .line 226
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "0,0,0,0,0,0"

    aput-object v3, v0, v2

    const-string v2, "20,10,10,40,50,-60"

    aput-object v2, v0, v1

    const-string v1, "30,0,20,50,20,0"

    aput-object v1, v0, v6

    const-string v1, "40,60,-40,-100,-30,0"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "20,40,-60,-20,40,0"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "0,-30,30,30,-10,-10"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "0,0,0,0,0,0"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "0,0,0,0,0,0"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/Pro;->DEFAULT_CAMERA_COLOR_TUNE_VALUE:[Ljava/lang/String;

    .line 236
    const v0, 0x7f0a0042

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_PRESET_DIVIDE_FACTOR:I

    .line 237
    const v0, 0x7f0a0043

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_TONE_DIVIDE_FACTOR:I

    .line 239
    const v0, 0x7f0a0042

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    const v1, 0x7f0a001f

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    mul-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_PRESET_MAX_OFFSET_VALUE:I

    .line 241
    const v0, 0x7f0a0022

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    const v1, 0x7f0a0043

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    mul-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_TONE_MAX_OFFSET_VALUE:I

    .line 244
    const v0, 0x7f0a004b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->ISO_VALUE_COUNT:I

    .line 274
    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SHUTTER_BUTTON_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_BUTTON_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SHUTTER_SNAPSHOT_RATIO:F

    .line 275
    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_BUTTON_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/shootingmode/Pro;->SHUTTER_BUTTON_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_SHUTTER_RATIO:F

    .line 276
    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_BUTTON_POS_Y:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/Pro;->SHUTTER_BUTTON_POS_Y:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/Pro;->SHUTTER_BUTTON_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Pro;->TRANSLATION_DELTA_Y:F

    return-void

    :cond_0
    move v0, v2

    .line 207
    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 3
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 377
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 280
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 281
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 282
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 283
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 284
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 285
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 286
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .line 302
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    .line 304
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    .line 305
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    .line 306
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    .line 307
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    .line 308
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    .line 309
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    .line 310
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    .line 311
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    .line 313
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    .line 314
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomSettingMenu:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    .line 315
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomSaveMenu:Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;

    .line 340
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    .line 344
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTime:I

    .line 345
    const-string v0, "10:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRemainRecordingTime:Ljava/lang/String;

    .line 351
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBlinkCount:I

    .line 353
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousFlashValue:Z

    .line 354
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousShutterSpeed:Z

    .line 355
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSavedShutterSpeed:I

    .line 357
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    .line 359
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustom1:Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    .line 360
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustom2:Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    .line 361
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustom3:Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    .line 362
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomSetToast:Landroid/widget/Toast;

    .line 363
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCurrentCustomId:I

    .line 365
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    .line 367
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEVState:I

    .line 369
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotWaitToast:Landroid/widget/Toast;

    .line 371
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSingleCapturing:Z

    .line 372
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsRecordingStopping:Z

    .line 373
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsBurstCapturing:Z

    .line 374
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsManualFocusZoomProcessing:Z

    .line 378
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 379
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 380
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/samsung/android/glview/GLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Pro;->KEY_CAMERA_COLOR_TUNE_VALUE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Pro;->DEFAULT_CAMERA_COLOR_TUNE_VALUE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 109
    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_PRESET_DIVIDE_FACTOR:I

    return v0
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 109
    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_TONE_DIVIDE_FACTOR:I

    return v0
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 109
    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_PRESET_MAX_OFFSET_VALUE:I

    return v0
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 109
    sget v0, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_TONE_MAX_OFFSET_VALUE:I

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/shootingmode/Pro;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->changeColorTuneMenu(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/menu/ProSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/menu/ProSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/menu/ProSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/menu/ProSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/menu/ProSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/menu/ProSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/widget/gl/ProItem;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/widget/gl/ProItem;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/widget/gl/ProItem;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/shootingmode/Pro;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getKelvinStringFromWBSetting(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/widget/gl/ProItem;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/camera/shootingmode/Pro;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getFocusStringFromMFSetting(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/widget/gl/ProItem;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/camera/shootingmode/Pro;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;
    .param p1, "x1"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getColorTuneString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/widget/gl/ProItem;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/camera/shootingmode/Pro;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->setShutterPriorityActivate(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/Engine;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/android/app/camera/shootingmode/Pro;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/sec/android/app/camera/shootingmode/Pro;I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/android/app/camera/shootingmode/Pro;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/Pro;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->blinkIndicatorRecIcon(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/Pro;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->blinkIndicatorRecTime(Z)V

    return-void
.end method

.method private blinkIndicatorRecIcon(Z)V
    .locals 2
    .param p1, "bShow"    # Z

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Pro$RecordingHandler;

    if-eqz v0, :cond_0

    .line 2403
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Pro$RecordingHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro$RecordingHandler;->removeMessages(I)V

    .line 2405
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 2406
    if-eqz p1, :cond_2

    .line 2407
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2412
    :cond_1
    :goto_0
    return-void

    .line 2409
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private blinkIndicatorRecTime(Z)V
    .locals 2
    .param p1, "bShow"    # Z

    .prologue
    .line 2415
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Pro$RecordingHandler;

    if-eqz v0, :cond_0

    .line 2416
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Pro$RecordingHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro$RecordingHandler;->removeMessages(I)V

    .line 2419
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 2420
    if-eqz p1, :cond_2

    .line 2421
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2426
    :cond_1
    :goto_0
    return-void

    .line 2423
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method private changeColorTuneMenu(I)V
    .locals 2
    .param p1, "colorTune"    # I

    .prologue
    .line 2430
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 2431
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopPreview()V

    .line 2432
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setColorTune(I)V

    .line 2433
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartPreview()V

    .line 2435
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 2436
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 2443
    :goto_1
    return-void

    .line 2435
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2439
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setColorTune(I)V

    .line 2440
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getEffectParamterString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private clearPro()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2446
    const-string v0, "Pro"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Pro$RecordingHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Pro$RecordingHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$RecordingHandler;->access$300(Lcom/sec/android/app/camera/shootingmode/Pro$RecordingHandler;)V

    .line 2448
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Pro$RecordingHandler;

    .line 2450
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setCameraCurrentSettingListener(Lcom/sec/android/seccamera/SecCamera$CameraCurrentSettingListener;)V

    .line 2452
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 2453
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2454
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    .line 2457
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustom1:Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->clear()V

    .line 2458
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustom2:Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->clear()V

    .line 2459
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustom3:Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->clear()V

    .line 2461
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    .line 2462
    return-void
.end method

.method private doDimmingRecordingButtons(Z)V
    .locals 3
    .param p1, "dimmed"    # Z

    .prologue
    .line 2465
    const-string v0, "Pro"

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

    .line 2468
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 2469
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 2471
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 2472
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 2475
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    .line 2476
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 2479
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    .line 2480
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 2482
    :cond_2
    return-void
.end method

.method private enableMultiAF(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2485
    if-eqz p1, :cond_0

    .line 2486
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableMultiAF(Z)V

    .line 2487
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFocusState(I)V

    .line 2492
    :goto_0
    return-void

    .line 2489
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFocusState(I)V

    .line 2490
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableMultiAF(Z)V

    goto :goto_0
.end method

.method private findNearestISO(I)I
    .locals 5
    .param p1, "iso"    # I

    .prologue
    .line 2495
    const v0, 0x7fffffff

    .line 2496
    .local v0, "abs":I
    const/4 v3, 0x1

    .line 2497
    .local v3, "nearestISOSettingValue":I
    const/4 v2, 0x0

    .line 2498
    .local v2, "nearestAbs":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->ISO_VALUE_COUNT:I

    if-ge v1, v4, :cond_1

    .line 2499
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getIsoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sub-int v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 2500
    if-le v0, v2, :cond_0

    .line 2501
    move v0, v2

    .line 2502
    move v3, v1

    .line 2498
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2505
    :cond_1
    return v3
.end method

.method private findNearestShutter(I)I
    .locals 6
    .param p1, "shutterSpeed"    # I

    .prologue
    .line 2509
    const v0, 0x7fffffff

    .line 2510
    .local v0, "abs":I
    const/4 v4, 0x0

    .line 2511
    .local v4, "nearestShutterSettingValue":I
    const/16 v2, 0x20

    .line 2512
    .local v2, "max_count":I
    const/4 v3, 0x0

    .line 2513
    .local v3, "nearestAbs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2514
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getShutterSpeedString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 2515
    if-le v0, v3, :cond_0

    .line 2516
    move v0, v3

    .line 2517
    move v4, v1

    .line 2513
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2521
    :cond_1
    return v4
.end method

.method private getColorTuneString(I)Ljava/lang/String;
    .locals 6
    .param p1, "colorTune"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2525
    const-string v0, ""

    .line 2526
    .local v0, "colorTuneTitle":Ljava/lang/String;
    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 2527
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2533
    :goto_0
    return-object v0

    .line 2528
    :cond_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 2529
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2531
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCurrentCustomId()I
    .locals 3

    .prologue
    .line 2537
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_saved_custom_num_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCurrentCustomId:I

    .line 2538
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCurrentCustomId:I

    return v0
.end method

.method private getCustomByCommandId(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;
    .locals 1
    .param p1, "commandId"    # I

    .prologue
    .line 2550
    const/4 v0, 0x0

    .line 2552
    .local v0, "custom":Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;
    packed-switch p1, :pswitch_data_0

    .line 2568
    :goto_0
    return-object v0

    .line 2555
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustom1:Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    .line 2556
    goto :goto_0

    .line 2559
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustom2:Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    .line 2560
    goto :goto_0

    .line 2563
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustom3:Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    .line 2564
    goto :goto_0

    .line 2552
    :pswitch_data_0
    .packed-switch 0x1005
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getFocusStringFromMFSetting(I)Ljava/lang/String;
    .locals 2
    .param p1, "focusLength"    # I

    .prologue
    .line 2572
    if-gez p1, :cond_0

    .line 2573
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2575
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getISOState()I
    .locals 3

    .prologue
    .line 2580
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_iso_state_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getKelvinStringFromWBSetting(I)Ljava/lang/String;
    .locals 2
    .param p1, "wbValue"    # I

    .prologue
    .line 2589
    if-nez p1, :cond_0

    .line 2590
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2603
    :goto_0
    return-object v0

    .line 2591
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 2592
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2593
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 2594
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802ed

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2595
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 2596
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2597
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 2598
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2599
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 2600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getKelvinValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2603
    :cond_5
    const-string v0, ""

    goto :goto_0
.end method

.method private getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
    .locals 2
    .param p1, "colorTuneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 2607
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    .line 2608
    .local v0, "colortune":Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
    if-nez v0, :cond_0

    .line 2609
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2611
    :cond_0
    return-object v0
.end method

.method private getShutterSpeedTimeMillis()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 2620
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getShutterSpeedString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    div-long/2addr v0, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private handleProRecordingCancelled()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2624
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideCAFButton()V

    .line 2625
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->doDimmingRecordingButtons(Z)V

    .line 2626
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->unregisterRecordingController()V

    .line 2628
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 2630
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideRecordingButtonWithAnimation()V

    .line 2633
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousShutterSpeed:Z

    if-eqz v0, :cond_0

    .line 2634
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSavedShutterSpeed:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShutterSpeed(I)V

    .line 2635
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSavedShutterSpeed:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 2636
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 2637
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousShutterSpeed:Z

    .line 2640
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showProView()V

    .line 2642
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2643
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideVisibleSlider()V

    .line 2646
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isColorTuneListVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2647
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideVisibleColorTuneList()V

    .line 2650
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 2651
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    .line 2653
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 2654
    return-void
.end method

.method private handleProRecordingStopped()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2657
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideCAFButton()V

    .line 2658
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->unregisterRecordingController()V

    .line 2660
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x9

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 2661
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 2662
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 2664
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideRecordingButtonWithAnimation()V

    .line 2667
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousShutterSpeed:Z

    if-eqz v0, :cond_0

    .line 2668
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSavedShutterSpeed:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShutterSpeed(I)V

    .line 2669
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSavedShutterSpeed:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 2670
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 2671
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousShutterSpeed:Z

    .line 2674
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showProView()V

    .line 2676
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2677
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideVisibleSlider()V

    .line 2680
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isColorTuneListVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2681
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideVisibleColorTuneList()V

    .line 2684
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 2685
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    .line 2687
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 2688
    return-void
.end method

.method private hideCAFButton()V
    .locals 2

    .prologue
    .line 2691
    const-string v0, "Pro"

    const-string v1, "hideCAFButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2694
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2696
    :cond_0
    return-void
.end method

.method private hideLongEvShotProgressHelpText()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 2699
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2700
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2701
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2702
    return-void
.end method

.method private hideProRecordingView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2706
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProSliderPosition()V

    .line 2707
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProSliderPosition()V

    .line 2708
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProSliderPosition()V

    .line 2709
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProSliderPosition()V

    .line 2710
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProSliderPosition()V

    .line 2712
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setRotateAnimation(Z)V

    .line 2713
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setRotateAnimation(Z)V

    .line 2714
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setRotateAnimation(Z)V

    .line 2716
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2717
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLView;->setRotateAnimation(Z)V

    .line 2716
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2719
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4, v4}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    .line 2721
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->isDim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2722
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setDim(Z)V

    .line 2724
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setDim(Z)V

    .line 2725
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setDim(Z)V

    .line 2727
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setVisibility(I)V

    .line 2728
    return-void
.end method

.method private hideProView()V
    .locals 2

    .prologue
    .line 2731
    const-string v0, "Pro"

    const-string v1, "hideProView"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2735
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    if-eqz v0, :cond_0

    .line 2736
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->hideSlider()V

    .line 2738
    :cond_0
    return-void
.end method

.method private hideRecordingButtonWithAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 2741
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2742
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setRecordingButtonForAnimation(Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;)V

    .line 2746
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableRecordingAnimation()V

    .line 2747
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 2749
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2750
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2752
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2753
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2755
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2756
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2758
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2759
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2762
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideProRecordingView()V

    .line 2763
    return-void

    .line 2744
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setRecordingButtonForAnimation(Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;)V

    goto :goto_0
.end method

.method private hideVisibleColorTuneList()V
    .locals 2

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->hideList()V

    .line 2767
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setVisibility(I)V

    .line 2768
    return-void
.end method

.method private hideVisibleSlider()V
    .locals 2

    .prologue
    .line 2771
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    if-eqz v0, :cond_0

    .line 2772
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->hideSlider()V

    .line 2776
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 2777
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setVisibility(I)V

    .line 2779
    :cond_1
    return-void
.end method

.method private initPro()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 2782
    const-string v1, "Pro"

    const-string v2, "initPro"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->loadColorTune()V

    .line 2787
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getCurrentCustomId()I

    move-result v0

    .line 2788
    .local v0, "customId":I
    if-ne v0, v5, :cond_0

    .line 2789
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustom1:Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->loadCustomSettings(Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;)V

    .line 2824
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateCustomSettingMenu()V

    .line 2825
    return-void

    .line 2790
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2791
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustom2:Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->loadCustomSettings(Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;)V

    goto :goto_0

    .line 2792
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2793
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustom3:Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->loadCustomSettings(Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;)V

    goto :goto_0

    .line 2795
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusLength(I)V

    .line 2797
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 2798
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 2799
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 2800
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 2801
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 2802
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 2803
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getKelvinValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProSlider;->updateKelvin(I)V

    .line 2805
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 2806
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 2808
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 2809
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 2810
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->getKelvinStringFromWBSetting(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 2811
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->getFocusStringFromMFSetting(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/ProSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2812
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->getColorTuneString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 2814
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 2815
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1f

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 2816
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x18

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 2818
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v1

    if-eq v1, v4, :cond_4

    .line 2819
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/Pro;->setShutterPriorityActivate(Z)V

    goto/16 :goto_0

    .line 2821
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->setShutterPriorityActivate(Z)V

    goto/16 :goto_0
.end method

.method private isColorTuneListVisible()Z
    .locals 1

    .prologue
    .line 2828
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2829
    const/4 v0, 0x1

    .line 2831
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProBurstCaptureEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2836
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2844
    :cond_0
    :goto_0
    return v0

    .line 2840
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2844
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSliderVisible()Z
    .locals 1

    .prologue
    .line 2848
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2850
    :cond_0
    const/4 v0, 0x1

    .line 2852
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

    .line 2856
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2857
    const-string v1, "Pro"

    const-string v2, "Wrong state for touchAF"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    :cond_0
    :goto_0
    return v0

    .line 2861
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isStopPreviewPending()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2862
    const-string v1, "Pro"

    const-string v2, "Preview is not started"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2866
    :cond_2
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_TOUCH_AF:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2870
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 2873
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadColorTune()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2877
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 2878
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    .line 2880
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2881
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2882
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    invoke-direct {v1, p0, v4}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2883
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    invoke-direct {v1, p0, v5}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2884
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    invoke-direct {v1, p0, v6}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2885
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    const/4 v1, 0x5

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2886
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    const/4 v1, 0x6

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2887
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;

    const/4 v1, 0x7

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2888
    return-void
.end method

.method private loadCustomSettings(Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;)V
    .locals 1
    .param p1, "custom"    # Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    .prologue
    .line 2891
    # invokes: Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->getProCustomSettings()Z
    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->access$400(Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;)Z

    .line 2892
    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->setCurrentCustomId(I)V

    .line 2893
    return-void
.end method

.method private makeRecordingAnimation()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/16 v10, 0x23a

    const/4 v11, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 2896
    const-string v2, "Pro"

    const-string v3, "makeRecordingAnimation"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 2899
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v3, 0x12c

    const/16 v4, 0x82

    new-instance v5, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(IILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2900
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    new-instance v5, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    const/16 v6, 0x12c

    const/16 v7, 0x82

    move v2, v0

    move v3, v1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2902
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 2904
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 2905
    iget-object v12, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->TRANSLATION_DELTA_Y:F

    neg-float v2, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->SHUTTER_SNAPSHOT_RATIO:F

    div-float v4, v2, v3

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    new-instance v9, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v9}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v2, v0

    move v3, v0

    move v5, v0

    invoke-static/range {v2 .. v10}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2907
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v3, 0x1d6

    const/16 v4, 0x64

    new-instance v5, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(IILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2908
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->SHUTTER_SNAPSHOT_RATIO:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/Pro;->SHUTTER_SNAPSHOT_RATIO:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    new-instance v9, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v9}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v5, v1

    move v7, v1

    invoke-static/range {v4 .. v11}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2910
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 2912
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 2913
    iget-object v12, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->TRANSLATION_DELTA_Y:F

    neg-float v2, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_SHUTTER_RATIO:F

    div-float v4, v2, v3

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    new-instance v9, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v9}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v2, v0

    move v3, v0

    move v5, v0

    invoke-static/range {v2 .. v10}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2915
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-static {v10, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2916
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_SHUTTER_RATIO:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_SHUTTER_RATIO:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    new-instance v9, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v9}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v5, v1

    move v7, v1

    invoke-static/range {v4 .. v11}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2918
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 2919
    return-void
.end method

.method private pauseRecording()V
    .locals 2

    .prologue
    .line 2922
    const-string v0, "Pro"

    const-string v1, "pauseRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 2925
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->PAUSE_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 2927
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePauseVideoRecording()V

    .line 2928
    return-void
.end method

.method private resumeRecording()V
    .locals 2

    .prologue
    .line 2931
    const-string v0, "Pro"

    const-string v1, "resumeRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->RESUME_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 2935
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleResumeVideoRecording()V

    .line 2936
    return-void
.end method

.method private saveCustomSettings(Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;)V
    .locals 1
    .param p1, "custom"    # Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    .prologue
    .line 2939
    # invokes: Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->saveProCustomSettings()V
    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->access$500(Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;)V

    .line 2940
    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateCustomButton(I)V

    .line 2941
    return-void
.end method

.method private setCurrentCustomId(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 2542
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCurrentCustomId:I

    if-eq v0, p1, :cond_0

    .line 2543
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCurrentCustomId:I

    .line 2544
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_saved_custom_num_key"

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCurrentCustomId:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2546
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateCustomButton(I)V

    .line 2547
    return-void
.end method

.method private setISOState(I)V
    .locals 2
    .param p1, "isoState"    # I

    .prologue
    .line 2584
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_iso_state_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2585
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

    .line 2944
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2946
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecTimeTextWidth:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2948
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecTimeTextWidth:F

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2951
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRemainRecTimeTextWidth:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2952
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRemainRecTimeTextWidth:F

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2964
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecTimeTextWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v7, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2966
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecTimeTextWidth:F

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v8, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2969
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRemainRecTimeTextWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v7, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2971
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRemainRecTimeTextWidth:F

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v8, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2973
    return-void

    .line 2955
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecTimeTextWidth:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2956
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecTimeTextWidth:F

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2959
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_16_9_RATIO_MARGIN:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRemainRecTimeTextWidth:F

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2960
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_16_9_RATIO_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_ICON_WIDTH:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_HEIGHT:I

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

    .line 2976
    const-string v0, "Pro"

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

    .line 2978
    if-eqz p1, :cond_3

    .line 2979
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEVState:I

    .line 2980
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 2982
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v0

    if-nez v0, :cond_0

    .line 2983
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->setISOState(I)V

    .line 2986
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setISOAutoDim(Z)V

    .line 2989
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 2990
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousFlashValue:Z

    .line 2991
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    .line 3015
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEVState:I

    if-eq v0, v3, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getISOState()I

    move-result v0

    if-eq v0, v3, :cond_2

    if-nez p1, :cond_5

    .line 3016
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableCameraCurrentSet(Z)V

    .line 3020
    :goto_1
    return-void

    .line 2996
    :cond_3
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEVState:I

    .line 2997
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 2998
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 2999
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setTextColor(I)V

    .line 3002
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getISOState()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 3003
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Pro;->setISOState(I)V

    .line 3004
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraISO(I)V

    .line 3005
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 3006
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 3008
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/ProSlider;->setISOAutoDim(Z)V

    .line 3010
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousFlashValue:Z

    if-eqz v0, :cond_1

    .line 3011
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    goto :goto_0

    .line 3018
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableCameraCurrentSet(Z)V

    goto :goto_1
.end method

.method private showCAFButton()V
    .locals 2

    .prologue
    .line 3023
    const-string v0, "Pro"

    const-string v1, "showCAFButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isObjectTrackingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3026
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3028
    :cond_0
    return-void
.end method

.method private showLongEvShotCancelHelpText()V
    .locals 2

    .prologue
    .line 3031
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 3032
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    const v1, 0x7f08010e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 3033
    return-void
.end method

.method private showLongEvShotProgressHelpText()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3036
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewAspectRatio()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v0

    .line 3037
    .local v0, "aspectRatioType":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3038
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v5, v5}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    .line 3046
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 3047
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 3048
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    const v3, 0x7f08010c

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 3049
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 3050
    return-void

    .line 3039
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 3040
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 3041
    .local v1, "offset":I
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, v1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_POS_X:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    goto :goto_0

    .line 3043
    .end local v1    # "offset":I
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_POS_X:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    goto :goto_0
.end method

.method private showProRecordingView()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3055
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3056
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLView;->setRotateAnimation(Z)V

    .line 3055
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3059
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setRotateAnimation(Z)V

    .line 3060
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setRotateAnimation(Z)V

    .line 3061
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setRotateAnimation(Z)V

    .line 3063
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3064
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setDim(Z)V

    .line 3066
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setDim(Z)V

    .line 3067
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setDim(Z)V

    .line 3068
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setVisibility(I)V

    .line 3070
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->setProRecIndicatorPosition()V

    .line 3072
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 3073
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 3074
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 3076
    :cond_2
    return-void
.end method

.method private showProView()V
    .locals 2

    .prologue
    .line 3079
    const-string v0, "Pro"

    const-string v1, "showView"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3082
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 3083
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 3085
    :cond_0
    return-void
.end method

.method private showRecordingTextAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3088
    const-string v0, "Pro"

    const-string v1, "showRecordingTextAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 3091
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    .line 3092
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3095
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isRecordingTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3096
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3097
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    .line 3098
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 3104
    :goto_0
    return-void

    .line 3100
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3101
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    .line 3102
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method private startBlinkIndicatorRecIcon()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3107
    const-string v0, "Pro"

    const-string v1, "startBlinkIndicatorRecIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 3110
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Pro;->blinkIndicatorRecIcon(Z)V

    .line 3112
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Pro$RecordingHandler;

    if-eqz v0, :cond_0

    .line 3113
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Pro$RecordingHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Pro$RecordingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3116
    :cond_0
    return-void
.end method

.method private startLongEVShotShutterProgress()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc

    .line 3122
    const-string v0, "Pro"

    const-string v1, "startLongEVShotShutterProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    if-eqz v0, :cond_0

    .line 3125
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 3126
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 3128
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    if-nez v0, :cond_1

    .line 3129
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getShutterSpeedTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-direct {v0, p0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;J)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    .line 3136
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->start()V

    .line 3137
    :goto_1
    return-void

    .line 3130
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->isStopping()Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->access$200(Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3131
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getShutterSpeedTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    # invokes: Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->setSleepTimeMillis(J)V
    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->access$600(Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;J)V

    goto :goto_0

    .line 3133
    :cond_2
    const-string v0, "Pro"

    const-string v1, "return. ShutterProgressThread already started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private startProRecording()V
    .locals 2

    .prologue
    .line 3140
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->registerRecordingController(Lcom/sec/android/app/camera/interfaces/Engine;)V

    .line 3142
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->START_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 3144
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3145
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    .line 3148
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3149
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideVisibleSlider()V

    .line 3152
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isColorTuneListVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3153
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideVisibleColorTuneList()V

    .line 3156
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showProRecordingView()V

    .line 3157
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->startRecording()V

    .line 3158
    return-void
.end method

.method private startTimer()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 3161
    const-string v0, "Pro"

    const-string v1, "startTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isRecordingTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3163
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 3164
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMaxRecordingTimeLimitInSecond:I

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRemainRecordingTime:Ljava/lang/String;

    .line 3165
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 3166
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 3168
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_0

    .line 3169
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showRecordingTextAnimation()V

    .line 3185
    :goto_0
    return-void

    .line 3171
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 3174
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 3176
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 3177
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 3179
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3180
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showRecordingTextAnimation()V

    goto :goto_0

    .line 3182
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method private stopLongEVShotShutterProgress()V
    .locals 3

    .prologue
    .line 3191
    const-string v0, "Pro"

    const-string v1, "stopLongEVShotShutterProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    if-eqz v0, :cond_1

    .line 3194
    const-string v0, "Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopShutterProgressThread isAlive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3196
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->stopThread()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->access$700(Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;)V

    .line 3198
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    .line 3200
    :cond_1
    return-void
.end method

.method private updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)V
    .locals 4
    .param p1, "colorTune"    # Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3203
    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 3204
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setResetButtonDim(Z)V

    .line 3205
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setSaveButtonDim(Z)V

    .line 3216
    :cond_0
    :goto_0
    return-void

    .line 3206
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getState()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 3207
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setResetButtonDim(Z)V

    .line 3208
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setSaveButtonDim(Z)V

    goto :goto_0

    .line 3209
    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 3210
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setResetButtonDim(Z)V

    .line 3211
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setSaveButtonDim(Z)V

    goto :goto_0

    .line 3212
    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3213
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setResetButtonDim(Z)V

    .line 3214
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setSaveButtonDim(Z)V

    goto :goto_0
.end method

.method private updateCustomButton(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 3219
    packed-switch p1, :pswitch_data_0

    .line 3231
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->refreshButton(I)V

    .line 3235
    :goto_0
    if-nez p1, :cond_0

    .line 3236
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const v1, 0x7f080021

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 3240
    :goto_1
    return-void

    .line 3221
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/16 v1, 0x1005

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->refreshButton(I)V

    goto :goto_0

    .line 3224
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->refreshButton(I)V

    goto :goto_0

    .line 3227
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/16 v1, 0x1007

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->refreshButton(I)V

    goto :goto_0

    .line 3238
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080022

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 3219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateCustomSettingMenu()V
    .locals 9

    .prologue
    const/16 v8, 0x1004

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3244
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustom1:Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->isProCustomSaved()Z

    move-result v0

    .line 3245
    .local v0, "saved1":Z
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustom2:Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->isProCustomSaved()Z

    move-result v1

    .line 3246
    .local v1, "saved2":Z
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustom3:Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->isProCustomSaved()Z

    move-result v2

    .line 3248
    .local v2, "saved3":Z
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomSettingMenu:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    const/16 v7, 0x1005

    if-eqz v0, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v6, v7, v3}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->setPositionDim(IZ)V

    .line 3249
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomSettingMenu:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    const/16 v7, 0x1006

    if-eqz v1, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v6, v7, v3}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->setPositionDim(IZ)V

    .line 3250
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomSettingMenu:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    const/16 v6, 0x1007

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {v3, v6, v4}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->setPositionDim(IZ)V

    .line 3252
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 3253
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomSettingMenu:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080023

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->updateItemText(ILjava/lang/String;)V

    .line 3257
    :goto_3
    return-void

    :cond_0
    move v3, v5

    .line 3248
    goto :goto_0

    :cond_1
    move v3, v5

    .line 3249
    goto :goto_1

    :cond_2
    move v4, v5

    .line 3250
    goto :goto_2

    .line 3255
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomSettingMenu:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0800ca

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->updateItemText(ILjava/lang/String;)V

    goto :goto_3
.end method

.method private updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V
    .locals 8
    .param p1, "cmd"    # Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    .prologue
    const/16 v7, 0x40

    const/16 v6, -0x181

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 3260
    const-string v0, "Pro"

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

    .line 3262
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Pro$2;->$SwitchMap$com$sec$android$app$camera$shootingmode$RecordingController$RecordingCommand:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3336
    :cond_0
    :goto_0
    return-void

    .line 3264
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableRecordingAnimation()V

    .line 3265
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v6}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 3266
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v7}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 3267
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 3270
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3271
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3272
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3273
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 3274
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3275
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 3276
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 3277
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3278
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 3279
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 3280
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3281
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3282
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3283
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    goto :goto_0

    .line 3287
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 3288
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 3290
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3291
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3292
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 3293
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3294
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 3296
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3297
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 3299
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_0

    .line 3302
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v6}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 3305
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 3306
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 3309
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3310
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3311
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 3312
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3313
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 3315
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3316
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 3318
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_0

    .line 3322
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v7}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 3324
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_3

    .line 3325
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 3327
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 3328
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_4

    .line 3329
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 3331
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_0

    .line 3262
    nop

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

    .line 3340
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTime:I

    .line 3342
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isRecordingTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3343
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTime:I

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 3345
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMaxRecordingTimeLimitInSecond:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTime:I

    sub-int/2addr v0, v1

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_2

    .line 3346
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBlinkCount:I

    .line 3353
    :cond_0
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBlinkCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBlinkCount:I

    if-lez v0, :cond_1

    .line 3354
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->blinkIndicatorRecTime(Z)V

    .line 3356
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Pro$RecordingHandler;

    if-eqz v0, :cond_1

    .line 3357
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Pro$RecordingHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Pro$RecordingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3363
    :cond_1
    :goto_1
    return-void

    .line 3347
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMaxRecordingTimeLimitInSecond:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTime:I

    sub-int/2addr v0, v1

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_3

    .line 3348
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBlinkCount:I

    goto :goto_0

    .line 3349
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMaxRecordingTimeLimitInSecond:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTime:I

    sub-int/2addr v0, v1

    if-ne v0, v3, :cond_0

    .line 3350
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBlinkCount:I

    goto :goto_0

    .line 3361
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTime:I

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected cancelRecording()V
    .locals 2

    .prologue
    .line 2232
    const-string v0, "Pro"

    const-string v1, "cancelRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 2234
    const-string v0, "Pro"

    const-string v1, "return cancelRecording - record is already stopping"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    :goto_0
    return-void

    .line 2238
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 2239
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->CANCEL_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 2240
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelVideoRecordingSync()V

    .line 2241
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->stopRecordingTickTimer()V

    .line 2242
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTime:I

    .line 2244
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->doDimmingRecordingButtons(Z)V

    .line 2245
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->registerEAM()V

    goto :goto_0
.end method

.method public getMaxFileSizeOfImage()J
    .locals 2

    .prologue
    .line 384
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSingleCapturing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsBurstCapturing:Z

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

    .line 2250
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v1, :cond_1

    .line 2259
    :cond_0
    :goto_0
    return v0

    .line 2253
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_0

    .line 2256
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEffectRecordingRestricted()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    if-nez v1, :cond_0

    .line 2259
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isZoomAvailable()Z
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x1

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 9
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 399
    const-string v0, "Pro"

    const-string v1, "onActivate"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 402
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Pro$RecordingHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Pro$RecordingHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Pro$RecordingHandler;

    .line 404
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v8, [I

    const/16 v0, 0x91

    aput v0, v2, v5

    const/16 v0, 0xb

    aput v0, v2, v4

    const/4 v3, 0x2

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xab

    :goto_0
    aput v0, v2, v3

    aput v6, v2, v6

    aput v7, v2, v7

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setCameraCurrentSettingListener(Lcom/sec/android/seccamera/SecCamera$CameraCurrentSettingListener;)V

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareImageStoringListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageStoringListener;)V

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    .line 419
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsBurstCapturing:Z

    .line 421
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->initPro()V

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectProcessorListener(Lcom/sec/android/app/camera/interfaces/Engine$EffectProcessorListener;)V

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v8, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v6, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x91

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 439
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v0

    if-gez v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 446
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureFormat()I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->checkStorageLow(I)I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0801a3

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 454
    :cond_2
    return-void

    .line 404
    :cond_3
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 436
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto :goto_1
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 492
    :cond_1
    :goto_1
    return v0

    .line 460
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSliderVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 463
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isColorTuneListVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 468
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSliderVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 469
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideVisibleSlider()V

    goto :goto_1

    .line 472
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isColorTuneListVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_3

    .line 473
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideVisibleColorTuneList()V

    goto :goto_1

    .line 477
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isTouchAfAeDisabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x12

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 483
    goto :goto_1

    .line 486
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusArea(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showCAFButton()V

    goto :goto_0

    .line 458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x0

    .line 497
    const-string v0, "Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 506
    :cond_1
    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 511
    const-string v0, "Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationStart - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void
.end method

.method public onBurstCaptureCompleted()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 517
    const-string v0, "Pro"

    const-string v1, "onBurstCaptureCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsBurstCapturing:Z

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideCaptureProgressText()V

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    .line 523
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x76

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 527
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    .line 529
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showProView()V

    .line 530
    return-void
.end method

.method public onBurstCaptureProgressed(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 534
    const-string v0, "Pro"

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

    .line 535
    if-nez p1, :cond_0

    .line 536
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showCaptureProgressText()V

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    .line 539
    return-void
.end method

.method public onBurstCaptureStarted()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 543
    const-string v0, "Pro"

    const-string v1, "onBurstCaptureStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsBurstCapturing:Z

    .line 546
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 547
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x76

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 553
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideProView()V

    .line 554
    return-void
.end method

.method public onBurstCaptureStopped(I)Z
    .locals 2
    .param p1, "lastImageNum"    # I

    .prologue
    const/4 v1, 0x1

    .line 558
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 559
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    .line 561
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBurstCaptureThumbnailTaken(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I

    .prologue
    .line 566
    const-string v0, "Pro"

    const-string v1, "onBurstCaptureThumbnailTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 568
    return-void
.end method

.method public onBurstStringProgressed([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 572
    return-void
.end method

.method public onCameraCurrentSet(Lcom/sec/android/seccamera/SecCamera$CameraCurrentSet;)V
    .locals 12
    .param p1, "data"    # Lcom/sec/android/seccamera/SecCamera$CameraCurrentSet;

    .prologue
    const/high16 v11, 0x7f080000

    const/16 v10, 0x14

    const/4 v9, 0x1

    const/16 v8, -0x14

    .line 576
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEVState:I

    if-ne v6, v9, :cond_1

    .line 577
    const/4 v1, 0x0

    .line 578
    .local v1, "evString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 579
    .local v4, "plus":Ljava/lang/String;
    iget-short v6, p1, Lcom/sec/android/seccamera/SecCamera$CameraCurrentSet;->exposure_value:S

    invoke-static {v6, v8, v10}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v0

    .line 580
    .local v0, "clampValue":I
    if-eqz v0, :cond_6

    .line 581
    div-int/lit8 v6, v0, 0xa

    if-ltz v6, :cond_4

    const-string v4, "+"

    .line 582
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 587
    :goto_2
    if-ge v0, v10, :cond_0

    if-gt v0, v8, :cond_7

    .line 588
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TEXT_EV_LIMIT_COLOR:I

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setTextColor(I)V

    .line 593
    :goto_3
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v6, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 596
    .end local v0    # "clampValue":I
    .end local v1    # "evString":Ljava/lang/String;
    .end local v4    # "plus":Ljava/lang/String;
    :cond_1
    iget-short v6, p1, Lcom/sec/android/seccamera/SecCamera$CameraCurrentSet;->iso:S

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/Pro;->findNearestISO(I)I

    move-result v2

    .line 597
    .local v2, "nearestISO":I
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getISOState()I

    move-result v6

    if-ne v6, v9, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v6

    if-nez v6, :cond_8

    .line 598
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraISO(I)V

    .line 599
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v6, v2}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 600
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraParameters;->getIsoString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 604
    :cond_2
    :goto_4
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 605
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 606
    .local v5, "shutterString":[Ljava/lang/String;
    iget-wide v6, p1, Lcom/sec/android/seccamera/SecCamera$CameraCurrentSet;->exposure_time:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/Pro;->findNearestShutter(I)I

    move-result v3

    .line 607
    .local v3, "nearestShutter":I
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "A "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    .end local v3    # "nearestShutter":I
    .end local v5    # "shutterString":[Ljava/lang/String;
    :cond_3
    return-void

    .line 581
    .end local v2    # "nearestISO":I
    .restart local v0    # "clampValue":I
    .restart local v1    # "evString":Ljava/lang/String;
    .restart local v4    # "plus":Ljava/lang/String;
    :cond_4
    const-string v4, ""

    goto/16 :goto_0

    .line 582
    :cond_5
    neg-int v6, v0

    rem-int/lit8 v6, v6, 0xa

    goto/16 :goto_1

    .line 584
    :cond_6
    const-string v1, "0"

    goto/16 :goto_2

    .line 590
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TEXT_COLOR:I

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setTextColor(I)V

    goto/16 :goto_3

    .line 601
    .end local v0    # "clampValue":I
    .end local v1    # "evString":Ljava/lang/String;
    .end local v4    # "plus":Ljava/lang/String;
    .restart local v2    # "nearestISO":I
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-nez v6, :cond_2

    .line 602
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "A "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-short v8, p1, Lcom/sec/android/seccamera/SecCamera$CameraCurrentSet;->iso:S

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-short v9, p1, Lcom/sec/android/seccamera/SecCamera$CameraCurrentSet;->iso:S

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public onCameraSettingChanged(II)V
    .locals 2
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 613
    sparse-switch p1, :sswitch_data_0

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 615
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 616
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_0

    .line 621
    :sswitch_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousFlashValue:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 622
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousFlashValue:Z

    goto :goto_0

    .line 627
    :sswitch_2
    if-ne p2, v0, :cond_1

    .line 628
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    goto :goto_0

    .line 630
    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    goto :goto_0

    .line 613
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x5 -> :sswitch_0
        0x91 -> :sswitch_2
    .end sparse-switch
.end method

.method public onChangeShootingModeParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 12
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    const/16 v11, 0x2a

    const/16 v10, 0xb

    const/16 v9, 0x5dc0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 641
    const-string v4, "Pro"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChangeShootingModeParameters : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

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

    .line 643
    const/4 v1, 0x1

    .line 644
    .local v1, "isPhaseAfEnabled":Z
    const/4 v0, 0x1

    .line 646
    .local v0, "isDrcEnabled":Z
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setManualSettings(I)V

    .line 648
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v2

    .line 649
    .local v2, "shutterSpeed":I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v3, v4, :cond_0

    .line 650
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v3

    const/16 v4, 0x13

    if-le v3, v4, :cond_0

    .line 651
    const-string v3, "Pro"

    const-string v4, "Shutter speed value is more than 1/30. Adjust it for Recording."

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/16 v2, 0x13

    .line 655
    :cond_0
    const/16 v3, 0x1f

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraParameters;->getShutterSpeedString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const/4 v3, 0x7

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 657
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getIsoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const/16 v3, 0x23

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getKelvinValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getKelvinValueString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const/16 v3, 0x9

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v3, v4, :cond_4

    .line 662
    invoke-static {v10}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :goto_1
    const/16 v3, 0x13b

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureFormat()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getPictureFormatString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v3

    if-gez v3, :cond_5

    .line 669
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 670
    const/4 v1, 0x1

    .line 675
    :goto_2
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const/16 v3, 0x18

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getManualFocusValue(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 678
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v3, v4, :cond_9

    .line 679
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_6

    .line 680
    const-string v3, "max-limit-recording-time-uhd"

    invoke-virtual {p1, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 681
    const-string v3, "max-limit-recording-time-uhd"

    invoke-virtual {p1, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->limitRecordingTimeBySystem(I)V

    .line 693
    :cond_1
    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEffectRecordingRestricted()Z

    move-result v3

    if-nez v3, :cond_8

    .line 694
    invoke-virtual {p1, v9, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 695
    const-string v3, "effectrecording-hint"

    invoke-virtual {p1, v3, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 696
    const/4 v0, 0x0

    .line 702
    :goto_4
    const/16 v3, 0x91

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraParameters;->getMultiAFModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :goto_5
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v3, :cond_2

    .line 718
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v3, v4, :cond_b

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    if-ne v3, v11, :cond_b

    .line 719
    const-string v3, "phase-af"

    const-string v4, "off"

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v3, "dynamic-range-control"

    const-string v4, "off"

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    :cond_2
    :goto_6
    return-void

    .line 641
    .end local v0    # "isDrcEnabled":Z
    .end local v1    # "isPhaseAfEnabled":Z
    .end local v2    # "shutterSpeed":I
    :cond_3
    const-string v3, "PREVIEW"

    goto/16 :goto_0

    .line 664
    .restart local v0    # "isDrcEnabled":Z
    .restart local v1    # "isPhaseAfEnabled":Z
    .restart local v2    # "shutterSpeed":I
    :cond_4
    invoke-static {v10}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraExposureMeter()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 672
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    .line 673
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 683
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_7

    .line 684
    const-string v3, "max-limit-recording-time-wqhd"

    invoke-virtual {p1, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 685
    const-string v3, "max-limit-recording-time-wqhd"

    invoke-virtual {p1, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->limitRecordingTimeBySystem(I)V

    goto/16 :goto_3

    .line 687
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    if-ne v3, v11, :cond_1

    .line 688
    const-string v3, "max-limit-recording-time-fhd60"

    invoke-virtual {p1, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 689
    const-string v3, "max-limit-recording-time-fhd60"

    invoke-virtual {p1, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->limitRecordingTimeBySystem(I)V

    goto/16 :goto_3

    .line 699
    :cond_8
    const-string v3, "effectrecording-hint"

    invoke-virtual {p1, v3, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 700
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 705
    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v3

    if-eqz v3, :cond_a

    .line 706
    const/16 v3, 0x2710

    invoke-virtual {p1, v3, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 707
    const-string v3, "effect_hint"

    invoke-virtual {p1, v3, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 708
    const/4 v0, 0x0

    .line 714
    :goto_7
    const/16 v3, 0x91

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getMultiAFModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 710
    :cond_a
    const/16 v3, 0x2710

    const/16 v4, 0x7530

    invoke-virtual {p1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 711
    const-string v3, "effect_hint"

    invoke-virtual {p1, v3, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 712
    const/4 v0, 0x1

    goto :goto_7

    .line 722
    :cond_b
    const-string v4, "phase-af"

    if-eqz v1, :cond_c

    const-string v3, "on"

    :goto_8
    invoke-virtual {p1, v4, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v4, "dynamic-range-control"

    if-eqz v0, :cond_d

    const-string v3, "on"

    :goto_9
    invoke-virtual {p1, v4, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 722
    :cond_c
    const-string v3, "off"

    goto :goto_8

    .line 723
    :cond_d
    const-string v3, "off"

    goto :goto_9
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 730
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-nez v3, :cond_2

    .line 731
    :cond_0
    const-string v2, "Pro"

    const-string v3, "Call onClick after Clear!"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_1
    :goto_0
    return v1

    .line 734
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 735
    const-string v2, "Pro"

    const-string v3, "onClick = mCAFButton"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 737
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 738
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0

    .line 741
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 742
    const-string v2, "Pro"

    const-string v3, "onClick = mSnapShotButton"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 744
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->onShutterKeyReleased(I)Z

    goto :goto_0

    .line 746
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 747
    const-string v2, "Pro"

    const-string v3, "onClick = mStopButton"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v2

    if-nez v2, :cond_1

    .line 751
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->stopRecording()V

    goto :goto_0

    .line 753
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 754
    const-string v2, "Pro"

    const-string v3, "onClick = mPauseButton"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v2

    if-nez v2, :cond_1

    .line 758
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTime:I

    if-lt v2, v1, :cond_1

    .line 761
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->pauseRecording()V

    goto :goto_0

    .line 763
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 764
    const-string v2, "Pro"

    const-string v3, "onClick = mResumeButton"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v2

    if-nez v2, :cond_1

    .line 768
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->resumeRecording()V

    goto/16 :goto_0

    .line 770
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 771
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->hideList()V

    .line 773
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_a

    .line 774
    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setColorTuneSettingSlideType(I)V

    .line 779
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    .line 780
    .local v0, "colorTune":Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->loadColorTuneValues()V

    .line 781
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneSliderValues()[I

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->updateColorTuneSlider([I)V

    .line 782
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)V

    .line 784
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v3, 0x77

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    .end local v0    # "colorTune":Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
    :cond_9
    :goto_2
    move v1, v2

    .line 835
    goto/16 :goto_0

    .line 776
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setColorTuneSettingSlideType(I)V

    goto :goto_1

    .line 785
    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->contains(Lcom/samsung/android/glview/GLView;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_d

    .line 786
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->getVisibility()I

    move-result v2

    if-nez v2, :cond_c

    .line 787
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->hideSlider()V

    goto/16 :goto_0

    .line 789
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->showSlider()V

    goto/16 :goto_0

    .line 792
    :cond_d
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->contains(Lcom/samsung/android/glview/GLView;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 793
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v2, v3, :cond_f

    .line 794
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->getVisibility()I

    move-result v2

    if-nez v2, :cond_e

    .line 795
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->hideSlider()V

    goto/16 :goto_0

    .line 797
    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->showSlider()V

    goto/16 :goto_0

    .line 800
    :cond_f
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->getVisibility()I

    move-result v2

    if-nez v2, :cond_10

    .line 801
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->hideSlider()V

    goto/16 :goto_0

    .line 803
    :cond_10
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->showSlider()V

    goto/16 :goto_0

    .line 807
    :cond_11
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->contains(Lcom/samsung/android/glview/GLView;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 808
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12

    .line 809
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->hideSlider()V

    goto/16 :goto_0

    .line 811
    :cond_12
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->showSlider()V

    goto/16 :goto_0

    .line 814
    :cond_13
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->contains(Lcom/samsung/android/glview/GLView;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 815
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->getVisibility()I

    move-result v2

    if-nez v2, :cond_14

    .line 816
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->hideSlider()V

    goto/16 :goto_0

    .line 818
    :cond_14
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->showSlider()V

    goto/16 :goto_0

    .line 821
    :cond_15
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->contains(Lcom/samsung/android/glview/GLView;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 822
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->getVisibility()I

    move-result v2

    if-nez v2, :cond_16

    .line 823
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->hideSlider()V

    goto/16 :goto_0

    .line 825
    :cond_16
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->showSlider()V

    goto/16 :goto_0

    .line 828
    :cond_17
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->contains(Lcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 829
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->getVisibility()I

    move-result v1

    if-nez v1, :cond_18

    .line 830
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->hideList()V

    goto/16 :goto_2

    .line 832
    :cond_18
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->showList()V

    goto/16 :goto_2
.end method

.method public onColorTuneSettingCancel()V
    .locals 3

    .prologue
    .line 840
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    .line 841
    .local v0, "colorTune":Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->loadColorTuneValues()V

    .line 842
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getEffectParamterString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    .line 843
    return-void
.end method

.method public onColorTuneSettingListSelect(I)V
    .locals 0
    .param p1, "modeId"    # I

    .prologue
    .line 847
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->onProColorTuneListSelect(I)V

    .line 848
    return-void
.end method

.method public onColorTuneSettingReset()V
    .locals 3

    .prologue
    .line 852
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    .line 853
    .local v0, "colorTune":Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->resetColorTuneValues()V

    .line 854
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)V

    .line 855
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getEffectParamterString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    .line 856
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->setCurrentCustomId(I)V

    .line 857
    return-void
.end method

.method public onColorTuneSettingSave()V
    .locals 2

    .prologue
    .line 861
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 862
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->saveColorTuneValues()V

    .line 861
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 864
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->setCurrentCustomId(I)V

    .line 865
    return-void
.end method

.method public onContrastMenuSelect(I)V
    .locals 3
    .param p1, "contrast"    # I

    .prologue
    .line 869
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    .line 870
    .local v0, "colorTune":Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->setColortuneValue(II)V

    .line 871
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)V

    .line 872
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getEffectParamterString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    .line 873
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 29
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 877
    const-string v2, "Pro"

    const-string v3, "onCreateView"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 879
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 880
    new-instance v2, Lcom/sec/android/app/camera/resourcedata/ProModeResourceData;

    invoke-direct {v2}, Lcom/sec/android/app/camera/resourcedata/ProModeResourceData;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 881
    new-instance v2, Lcom/sec/android/app/camera/resourcedata/ColorTuneResourceData;

    invoke-direct {v2}, Lcom/sec/android/app/camera/resourcedata/ColorTuneResourceData;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 883
    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TOP_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    mul-int/lit8 v3, v3, 0x6

    sub-int/2addr v2, v3

    div-int/lit8 v26, v2, 0x5

    .line 886
    .local v26, "itemOffset":I
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    int-to-float v6, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 891
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 893
    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v7

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v8

    float-to-int v8, v8

    new-instance v9, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v9}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    sget v10, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_VIEW_GROUP_SHOW_ANIMATION_DURATION:I

    invoke-static/range {v2 .. v10}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v28

    .line 895
    .local v28, "translateAnim":Landroid/view/animation/Animation;
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 897
    new-instance v25, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 898
    .local v25, "alphaAnim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x258

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 899
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 904
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 906
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_POS_X:I

    int-to-float v4, v3

    const/4 v5, 0x0

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v6, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 909
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v9

    .line 910
    .local v9, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TOP_MARGIN:I

    sget v8, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    add-int v8, v8, v26

    mul-int/lit8 v8, v8, 0x5

    add-int/2addr v7, v8

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v8, v8

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/widget/gl/ProItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    .line 912
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotatable(Z)V

    .line 913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotateAnimation(Z)V

    .line 914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setCenterPivot(Z)V

    .line 915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v9

    .line 921
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TOP_MARGIN:I

    sget v8, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    add-int v8, v8, v26

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v8, v8

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/widget/gl/ProItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotatable(Z)V

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotateAnimation(Z)V

    .line 925
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setCenterPivot(Z)V

    .line 926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 927
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v9

    .line 931
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TOP_MARGIN:I

    sget v8, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    add-int v8, v8, v26

    mul-int/lit8 v8, v8, 0x3

    add-int/2addr v7, v8

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v8, v8

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/widget/gl/ProItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    .line 933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotatable(Z)V

    .line 934
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotateAnimation(Z)V

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setCenterPivot(Z)V

    .line 936
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v9

    .line 941
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TOP_MARGIN:I

    sget v8, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    add-int v8, v8, v26

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v8, v8

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/widget/gl/ProItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    .line 943
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotatable(Z)V

    .line 944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotateAnimation(Z)V

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setCenterPivot(Z)V

    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v9

    .line 951
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TOP_MARGIN:I

    sget v8, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    add-int/2addr v7, v8

    add-int v7, v7, v26

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v8, v8

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/widget/gl/ProItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotatable(Z)V

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotateAnimation(Z)V

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setCenterPivot(Z)V

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 960
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v9

    .line 961
    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v10

    .line 962
    .local v10, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TOP_MARGIN:I

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v8, v8

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/widget/gl/ProItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    .end local v10    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    .line 963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotatable(Z)V

    .line 964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotateAnimation(Z)V

    .line 965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setCenterPivot(Z)V

    .line 966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 969
    new-instance v10, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_EDIT_BUTTON_POS_X:I

    int-to-float v12, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_EDIT_BUTTON_POS_Y:I

    int-to-float v13, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_EDIT_BUTTON_WIDTH:I

    int-to-float v14, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->COLOR_TUNE_EDIT_BUTTON_WIDTH:I

    int-to-float v15, v2

    const v16, 0x7f020151

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    .line 971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 972
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 974
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080019

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 978
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/shootingmode/Pro$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/shootingmode/Pro$1;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setButtonPressListener(Lcom/samsung/android/glview/GLButton$ButtonPressListener;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v9

    .line 991
    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v10

    .line 992
    .restart local v10    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_CUSTOM_POS_X:I

    int-to-float v5, v5

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_TOP_MARGIN:I

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_ITEM_WIDTH:I

    int-to-float v8, v8

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/widget/gl/ProItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    .line 993
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotatable(Z)V

    .line 994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotateAnimation(Z)V

    .line 995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setCenterPivot(Z)V

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 997
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const v3, 0x7f080021

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 1000
    new-instance v2, Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/menu/ProSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    .line 1001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setOnShowSliderListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderShowListener;)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderLoggingListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setVisibility(I)V

    .line 1008
    new-instance v2, Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/menu/ProSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    .line 1009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;)V

    .line 1010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setOnShowSliderListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderShowListener;)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderLoggingListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setVisibility(I)V

    .line 1016
    new-instance v2, Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    const/4 v8, 0x2

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/menu/ProSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    .line 1017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setOnShowSliderListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderShowListener;)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderLoggingListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setVisibility(I)V

    .line 1024
    new-instance v2, Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    const/4 v8, 0x3

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/menu/ProSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    .line 1025
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setOnShowSliderListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderShowListener;)V

    .line 1027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderLoggingListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setVisibility(I)V

    .line 1032
    new-instance v2, Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    const/4 v8, 0x4

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/menu/ProSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    .line 1033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderManualFocusZoomListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderManualFocusZoomListener;)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setOnShowSliderListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderShowListener;)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderLoggingListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setVisibility(I)V

    .line 1041
    new-instance v2, Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    const/4 v8, 0x5

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/menu/ProSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    .line 1042
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setOnShowSliderListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderShowListener;)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderHideListener;)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->setProSliderLoggingListener(Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->setVisibility(I)V

    .line 1049
    new-instance v2, Lcom/sec/android/app/camera/menu/ProColorTuneList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->COLORTUNE_LIST_POS_X:I

    int-to-float v4, v4

    const/4 v5, 0x0

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_WIDTH:I

    int-to-float v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/menu/ProColorTuneList;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    .line 1050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setOnProColorTuneListSelectListener(Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setOnShowProColorTuneListListener(Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListShowListener;)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setOnHideProColorTuneListListener(Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListHideListener;)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setVisibility(I)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1069
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_POS_X:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v5, v7

    sget v6, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setCenterPivot(Z)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1075
    const v2, 0x7f08010d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v16

    .line 1076
    .local v16, "textHeight":F
    new-instance v11, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v12

    const/4 v13, 0x0

    sget v14, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TITLE_POS_Y:F

    sget v15, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    const v2, 0x7f08010d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v17

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v18, v2, v3

    invoke-direct/range {v11 .. v18}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    .line 1078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_COLOR:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const v4, 0x7f0a0044

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x7f0c002c

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressTitle:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1087
    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    const v3, 0x7f08010c

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v27

    .line 1089
    .local v27, "rows":I
    move/from16 v0, v27

    int-to-float v2, v0

    mul-float v2, v2, v16

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_LINE_SPACING:F

    add-int/lit8 v4, v27, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v16, v2, v3

    .line 1090
    new-instance v11, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v12

    const/4 v13, 0x0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TITLE_POS_Y:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TITLE_HEIGHT:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_TOP_MARGIN:F

    add-float v14, v2, v3

    sget v15, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_GROUP_WIDTH:F

    const v2, 0x7f08010c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v17

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v18, v2, v3

    invoke-direct/range {v11 .. v18}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    .line 1092
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->LONG_EV_SHOT_PROGRESS_TEXT_COLOR:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const v4, 0x7f0a0044

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x7f0c002c

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1104
    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getHMSFormatStringWidth(F)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecTimeTextWidth:F

    .line 1105
    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecTimeTextWidth:F

    add-float v6, v2, v3

    .line 1107
    .local v6, "recTimeGroupWidth":F
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1111
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_ICON_LEFT_MARGIN:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x7f0201cd

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    .line 1112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1114
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_ICON_LEFT_MARGIN:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x7f0201cc

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    .line 1115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1117
    new-instance v17, Lcom/samsung/android/glview/GLText;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v0, v2

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecTimeTextWidth:F

    move/from16 v21, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v0, v2

    move/from16 v22, v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v23

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v24, v2, v3

    move-object/from16 v18, p1

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1130
    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getMSFormatStringWidth(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const-string v3, " / "

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRemainRecTimeTextWidth:F

    .line 1133
    new-instance v17, Lcom/samsung/android/glview/GLViewGroup;

    const/16 v19, 0x0

    const/16 v20, 0x0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRemainRecTimeTextWidth:F

    add-float v21, v2, v3

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v22, v0

    move-object/from16 v18, p1

    invoke-direct/range {v17 .. v22}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1138
    new-instance v17, Lcom/samsung/android/glview/GLText;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v0, v2

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRemainRecTimeTextWidth:F

    move/from16 v21, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v0, v2

    move/from16 v22, v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v23

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v24, v2, v3

    move-object/from16 v18, p1

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    .line 1140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1142
    sget-boolean v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_MODE_TEXT_SHADOW:Z

    if-eqz v2, :cond_2

    .line 1143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_MODE_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_MODE_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setShadowOffset(FF)V

    .line 1147
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1151
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v2, :cond_3

    .line 1152
    new-instance v17, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v18

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v19, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_SNAPSHOT_MARGIN_Y:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v20, v0

    const v21, 0x7f02010c

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    .line 1158
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 1164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08018d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1169
    new-instance v17, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v18

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v19, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v20, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_WIDTH:I

    int-to-float v0, v2

    move/from16 v21, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_HEIGHT:I

    int-to-float v0, v2

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08018d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_SIZE:I

    int-to-float v0, v2

    move/from16 v24, v0

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 1177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 1178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1186
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v2, :cond_4

    .line 1187
    new-instance v17, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v18

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v19, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_SNAPSHOT_MARGIN_Y:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v20, v0

    const v21, 0x7f02010d

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    .line 1193
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801b3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1200
    new-instance v17, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v18

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v19, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v20, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_WIDTH:I

    int-to-float v0, v2

    move/from16 v21, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_HEIGHT:I

    int-to-float v0, v2

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0801b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_SIZE:I

    int-to-float v0, v2

    move/from16 v24, v0

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    .line 1203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 1208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 1209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1219
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v2, :cond_0

    .line 1220
    new-instance v17, Lcom/samsung/android/glview/GLButton;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v19, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_BUTTON_POS_Y:I

    int-to-float v0, v2

    move/from16 v20, v0

    const v21, 0x7f02010b

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, p1

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    .line 1221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08010b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1232
    new-instance v17, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v18

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_BUTTON_POS_X:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v19, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v20, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_WIDTH:I

    int-to-float v0, v2

    move/from16 v21, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_HEIGHT:I

    int-to-float v0, v2

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08010b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_SIZE:I

    int-to-float v0, v2

    move/from16 v24, v0

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    .line 1235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 1239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 1240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_BUTTON_POS_X:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_BUTTON_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_BUTTON_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Pro;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Pro;->SNAPSHOT_BUTTON_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1250
    :cond_0
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    if-eqz v2, :cond_1

    .line 1251
    new-instance v17, Lcom/samsung/android/glview/GLButton;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->CAF_BUTTON_POS_X:I

    int-to-float v0, v2

    move/from16 v19, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->CAF_BUTTON_POS_Y:I

    int-to-float v0, v2

    move/from16 v20, v0

    const v21, 0x7f020023

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, p1

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    .line 1252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->CAF_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 1259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08004b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1264
    :cond_1
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v2, :cond_5

    .line 1265
    new-instance v17, Lcom/samsung/android/glview/GLButton;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_STOP_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v19, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_STOP_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_SNAPSHOT_MARGIN_Y:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v20, v0

    const v21, 0x7f020109

    const v22, 0x7f02010a

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, p1

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    .line 1271
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 1277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 1279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801d8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1282
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->makeRecordingAnimation()V

    .line 1284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v3, 0x77

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    .line 1285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setColorTuneSettingListSelectListener(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;)V

    .line 1286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setColorTuneSettingMenuBarListener(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;)V

    .line 1287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setColorTuneSettingSliderBarListener(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;)V

    .line 1289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v3, 0x19

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomSettingMenu:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    .line 1290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomSettingMenu:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->setCustomSettingMenuSelectListener(Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu$CustomSettingMenuSelectListener;)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v3, 0x1004

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomSaveMenu:Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;

    .line 1293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomSaveMenu:Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->setCustomSaveMenuSelectListener(Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu$CustomSaveMenuSelectListener;)V

    .line 1295
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    const-string v3, "pref_camera_pro_custom_1_key"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustom1:Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    .line 1296
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    const-string v3, "pref_camera_pro_custom_2_key"

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustom2:Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    .line 1297
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    const-string v3, "pref_camera_pro_custom_3_key"

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustom3:Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    .line 1299
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateCustomSettingMenu()V

    .line 1300
    return-void

    .line 1145
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    goto/16 :goto_0

    .line 1155
    :cond_3
    new-instance v17, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v18

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v19, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v0, v2

    move/from16 v20, v0

    const v21, 0x7f02010c

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Pro;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_1

    .line 1190
    :cond_4
    new-instance v17, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v18

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v19, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v0, v2

    move/from16 v20, v0

    const v21, 0x7f02010d

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Pro;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_2

    .line 1268
    :cond_5
    new-instance v17, Lcom/samsung/android/glview/GLButton;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_STOP_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v19, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Pro;->RECORDING_STOP_BUTTON_POS_Y:I

    int-to-float v0, v2

    move/from16 v20, v0

    const v21, 0x7f020109

    const v22, 0x7f02010a

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, p1

    invoke-direct/range {v17 .. v24}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_3
.end method

.method public onCustomSaveMenuSelected(I)V
    .locals 7
    .param p1, "commandId"    # I

    .prologue
    const/4 v6, 0x0

    .line 1304
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getCustomByCommandId(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    move-result-object v0

    .line 1305
    .local v0, "custom":Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->saveCustomSettings(Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;)V

    .line 1306
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateCustomSettingMenu()V

    .line 1308
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080022

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomSetToast:Landroid/widget/Toast;

    .line 1309
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomSetToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1311
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1004

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    .line 1312
    return-void
.end method

.method public onCustomSettingMenuSelected(I)V
    .locals 8
    .param p1, "commandId"    # I

    .prologue
    const/16 v3, 0x1004

    const/16 v7, 0x19

    const/4 v6, 0x0

    .line 1317
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_0

    .line 1318
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 1321
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomSettingMenu:Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProCustomSettingListMenu;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1322
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v7}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    .line 1325
    :cond_1
    if-ne p1, v3, :cond_3

    .line 1326
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomSaveMenu:Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProCustomSaveListMenu;->isActive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1327
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    .line 1338
    :cond_2
    :goto_0
    return-void

    .line 1330
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getCustomByCommandId(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    move-result-object v0

    .line 1331
    .local v0, "custom":Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->loadCustomSettings(Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;)V

    .line 1333
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080022

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomSetToast:Landroid/widget/Toast;

    .line 1334
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomSetToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1336
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v7, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    goto :goto_0
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1342
    const-string v0, "sef_file_type"

    const/16 v1, 0x9f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1343
    const/4 v0, 0x0

    return v0
.end method

.method public onEffectProcessorPrepared()V
    .locals 2

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getEffectParamterString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    .line 1351
    :cond_0
    return-void
.end method

.method public onEngineStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1355
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->updateMultiAFLayout()V

    .line 1360
    :cond_0
    return-void
.end method

.method public onExposureValueMenuSelect(I)V
    .locals 3
    .param p1, "exposure"    # I

    .prologue
    .line 1364
    const-string v0, "Pro"

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

    .line 1365
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setExposureValue(I)V

    .line 1366
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 1367
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 1369
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->setCurrentCustomId(I)V

    .line 1370
    return-void
.end method

.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    .line 1376
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showProRecordingView()V

    .line 1381
    :cond_0
    :goto_0
    return-void

    .line 1378
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showProView()V

    goto :goto_0
.end method

.method public onHideProColorTuneList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1386
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1387
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSelected(Z)V

    .line 1390
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setVisibility(I)V

    .line 1391
    return-void
.end method

.method public onHideProSlider(Lcom/sec/android/app/camera/menu/ProSlider;)V
    .locals 3
    .param p1, "slider"    # Lcom/sec/android/app/camera/menu/ProSlider;

    .prologue
    const/4 v2, 0x0

    .line 1395
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSelected(Z)V

    .line 1399
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1400
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 1401
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setVisibility(I)V

    .line 1404
    :cond_1
    return-void
.end method

.method public onHighlightMenuSelect(I)V
    .locals 3
    .param p1, "highlight"    # I

    .prologue
    .line 1408
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    .line 1409
    .local v0, "colorTune":Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->setColortuneValue(II)V

    .line 1410
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)V

    .line 1411
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getEffectParamterString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    .line 1412
    return-void
.end method

.method public onISOValueMenuSelect(I)V
    .locals 4
    .param p1, "iso"    # I

    .prologue
    const/4 v3, 0x0

    .line 1416
    const-string v0, "Pro"

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

    .line 1417
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getISOState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1418
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->setISOState(I)V

    .line 1421
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraISO(I)V

    .line 1422
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 1423
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 1425
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->setCurrentCustomId(I)V

    .line 1426
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 5

    .prologue
    .line 1430
    const-string v1, "Pro"

    const-string v2, "onImageStoringCompleted"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    const-string v0, "Pro_Mode_Info"

    .line 1432
    .local v0, "keyName":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0x9f0

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/android/secvision/sef/SEF;->addSEFData(Ljava/lang/String;Ljava/lang/String;[BII)I

    .line 1433
    const/4 v1, 0x0

    return v1
.end method

.method public onImageStoringPrepared(Lcom/sec/android/app/camera/util/ImageStoringInfo;)Z
    .locals 3
    .param p1, "info"    # Lcom/sec/android/app/camera/util/ImageStoringInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1438
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_PICTURE_FORMAT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureFormat()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1440
    invoke-static {v1}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/util/ImageStoringInfo;->setDirectory(Ljava/lang/String;)V

    .line 1443
    :cond_0
    return v1
.end method

.method public onInactivate()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1448
    const-string v0, "Pro"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->clearSideQuickSetting()V

    .line 1452
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsBurstCapturing:Z

    if-eqz v0, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelBurstCapture()V

    .line 1454
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsBurstCapturing:Z

    .line 1457
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSingleCapturing:Z

    if-eqz v0, :cond_2

    .line 1458
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 1459
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showLongEvShotCancelHelpText()V

    .line 1460
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->stopLongEVShotShutterProgress()V

    .line 1461
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 1463
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelTakePicture()V

    .line 1464
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->stopLongEVShotShutterProgress()V

    .line 1465
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideLongEvShotProgressHelpText()V

    .line 1467
    :cond_1
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSingleCapturing:Z

    .line 1470
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_3

    .line 1471
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTime:I

    if-ge v0, v2, :cond_8

    .line 1472
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->cancelRecording()V

    .line 1478
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1479
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1481
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideCAFButton()V

    .line 1483
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 1484
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    .line 1488
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1489
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xe

    invoke-interface {v0, v1, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 1490
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1f

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 1494
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 1497
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setManualSettings(I)V

    .line 1498
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setExposureValue(I)V

    .line 1500
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 1501
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 1502
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x91

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 1505
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 1506
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 1507
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .line 1509
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 1510
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 1512
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 1513
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectProcessorListener(Lcom/sec/android/app/camera/interfaces/Engine$EffectProcessorListener;)V

    .line 1514
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 1515
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareImageStoringListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageStoringListener;)V

    .line 1516
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    .line 1517
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableCameraCurrentSet(Z)V

    .line 1518
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 1520
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1521
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideVisibleSlider()V

    .line 1524
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isColorTuneListVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1525
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideVisibleColorTuneList()V

    .line 1528
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1530
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->clearPro()V

    .line 1531
    return-void

    .line 1474
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->stopRecordingForced()V

    goto/16 :goto_0
.end method

.method public onKelvinValueMenuSelect(I)V
    .locals 3
    .param p1, "kelvin"    # I

    .prologue
    .line 1535
    const-string v0, "Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kelvin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setKelvinValue(I)V

    .line 1537
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    if-eqz v0, :cond_0

    .line 1538
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getKelvinValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateKelvin(I)V

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getKelvinStringFromWBSetting(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 1542
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->setCurrentCustomId(I)V

    .line 1543
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1547
    sparse-switch p1, :sswitch_data_0

    .line 1563
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1551
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    .line 1552
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isRecordingControlAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1553
    const-string v1, "Pro"

    const-string v2, "Recording control is not available at this moment, ignore key down event"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1556
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSnapShotAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1557
    const-string v1, "Pro"

    const-string v2, "returning capture key because recording snapshot is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1547
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1568
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 1626
    :cond_1
    :goto_0
    return v0

    .line 1570
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSliderVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1571
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideVisibleSlider()V

    goto :goto_0

    .line 1575
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isColorTuneListVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1576
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideVisibleColorTuneList()V

    goto :goto_0

    .line 1580
    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsBurstCapturing:Z

    if-nez v2, :cond_1

    .line 1584
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSingleCapturing:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v2

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_6

    .line 1585
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1586
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelIntervalCapture()V

    .line 1589
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()I

    move-result v1

    if-nez v1, :cond_1

    .line 1590
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotWaitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotWaitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotWaitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1591
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v2, 0x7f080174

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotWaitToast:Landroid/widget/Toast;

    .line 1592
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mLongEvShotWaitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1597
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v2, v3, :cond_0

    .line 1598
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->stopRecording()V

    goto :goto_0

    .line 1606
    :sswitch_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsBurstCapturing:Z

    if-eqz v2, :cond_7

    move v0, v1

    .line 1607
    goto :goto_0

    .line 1610
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v2, v3, :cond_0

    .line 1611
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isSnapShotAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1612
    const-string v1, "Pro"

    const-string v2, "returning because the enter key of the keyboard was inputted in the recording state"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1618
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v2, v3, :cond_0

    .line 1619
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->stopRecording()V

    goto/16 :goto_0

    .line 1568
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

.method public onManualFocusValueMenuSelect(I)V
    .locals 7
    .param p1, "focuslength"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1631
    const-string v1, "Pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ManualFocus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1675
    :cond_0
    :goto_0
    return-void

    .line 1637
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v0

    .line 1639
    .local v0, "preFocusLength":I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_4

    .line 1640
    if-ne v0, v4, :cond_2

    if-ne p1, v4, :cond_3

    :cond_2
    if-eq v0, v4, :cond_4

    if-ne p1, v4, :cond_4

    .line 1642
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x18

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 1646
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 1647
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 1648
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideCAFButton()V

    .line 1651
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusLength(I)V

    .line 1652
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 1653
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->getFocusStringFromMFSetting(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/ProSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/Pro;->setCurrentCustomId(I)V

    .line 1657
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v1

    if-gez v1, :cond_6

    .line 1658
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 1666
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_0

    .line 1667
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 1668
    if-gez p1, :cond_8

    .line 1669
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    goto :goto_0

    .line 1660
    :cond_6
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_OBJECT_TRACKING_AF:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isObjectTrackingAFStarted()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1661
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->stopObjectTrackingAF()V

    .line 1663
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    goto :goto_1

    .line 1671
    :cond_8
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    goto/16 :goto_0
.end method

.method public onManualFocusZoomStarted()V
    .locals 3

    .prologue
    const/16 v2, 0x21c

    .line 1679
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsManualFocusZoomProcessing:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 1680
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setZoomValue(I)V

    .line 1683
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsManualFocusZoomProcessing:Z

    .line 1685
    :cond_1
    return-void
.end method

.method public onManualFocusZoomStopped()V
    .locals 2

    .prologue
    .line 1689
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 1690
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setZoomValue(I)V

    .line 1692
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsManualFocusZoomProcessing:Z

    .line 1693
    return-void
.end method

.method public onMediaRecorderPreparedEvent(Lcom/sec/android/secmediarecorder/SecMediaRecorder;)V
    .locals 2
    .param p1, "mediaRecorder"    # Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .prologue
    .line 1697
    const-string v0, "Pro"

    const-string v1, "onMediaRecorderPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMaxRecordingTimeLimitInSecond:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1699
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMaxRecordingTimeLimitInSecond:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 1701
    :cond_0
    return-void
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 1705
    const/4 v0, 0x0

    return v0
.end method

.method public onNewImageLoggingPrepared(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1710
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v0, "Z060"

    const/16 v1, 0x13b

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureFormat()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1712
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getTouchAeLockState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1713
    const-string v0, "Z068"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1715
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, 0x0

    .line 1719
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 1720
    packed-switch p1, :pswitch_data_0

    .line 1743
    :cond_0
    :goto_0
    return-void

    .line 1723
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProSliderPosition()V

    .line 1724
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProSliderPosition()V

    .line 1725
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProSliderPosition()V

    .line 1726
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProSliderPosition()V

    .line 1727
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProSliderPosition()V

    .line 1728
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    goto :goto_0

    .line 1732
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProRecordingSliderPosition()V

    .line 1733
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProRecordingSliderPosition()V

    .line 1734
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProRecordingSliderPosition()V

    .line 1735
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProRecordingSliderPosition()V

    .line 1736
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->updateProRecordingSliderPosition()V

    .line 1737
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Pro;->PRO_RECORDING_ITEM_OFFSET:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    goto :goto_0

    .line 1720
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onProColorTuneListSelect(I)V
    .locals 5
    .param p1, "modeId"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x77

    .line 1747
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    .line 1748
    .local v0, "colorTune":Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->loadColorTuneValues()V

    .line 1750
    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-ne p1, v1, :cond_2

    .line 1751
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setColorTuneSettingSlideType(I)V

    .line 1752
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v1

    if-nez v1, :cond_1

    # invokes: Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->isDefaultColortuneValues()Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->access$100(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1753
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->hideList()V

    .line 1754
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    .line 1760
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneSliderValues()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->updateColorTuneSlider([I)V

    .line 1761
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)V

    .line 1762
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->setCurrentCustomId(I)V

    .line 1763
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->changeColorTuneMenu(I)V

    .line 1765
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getColorTuneString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 1767
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    invoke-interface {v1, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    .line 1768
    return-void

    .line 1757
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setColorTuneSettingSlideType(I)V

    goto :goto_0
.end method

.method public onProSliderLoggingEvent(II)V
    .locals 4
    .param p1, "sliderId"    # I
    .param p2, "loggingType"    # I

    .prologue
    .line 1772
    const/4 v0, -0x1

    .line 1775
    .local v0, "commandId":I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v2, v3, :cond_0

    .line 1776
    packed-switch p1, :pswitch_data_0

    .line 1817
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 1818
    const-string v1, "Button"

    .line 1823
    .local v1, "type":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    .line 1824
    return-void

    .line 1778
    .end local v1    # "type":Ljava/lang/String;
    :pswitch_1
    const/16 v0, 0x1c39

    .line 1779
    goto :goto_0

    .line 1781
    :pswitch_2
    const/16 v0, 0x1c3a

    .line 1782
    goto :goto_0

    .line 1784
    :pswitch_3
    const/16 v0, 0x1c3b

    .line 1785
    goto :goto_0

    .line 1787
    :pswitch_4
    const/16 v0, 0x1c3c

    .line 1788
    goto :goto_0

    .line 1790
    :pswitch_5
    const/16 v0, 0x1c3d

    .line 1791
    goto :goto_0

    .line 1796
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 1798
    :pswitch_6
    const/16 v0, 0x1c34

    .line 1799
    goto :goto_0

    .line 1801
    :pswitch_7
    const/16 v0, 0x1c35

    .line 1802
    goto :goto_0

    .line 1804
    :pswitch_8
    const/16 v0, 0x1c36

    .line 1805
    goto :goto_0

    .line 1807
    :pswitch_9
    const/16 v0, 0x1c37

    .line 1808
    goto :goto_0

    .line 1810
    :pswitch_a
    const/16 v0, 0x1c38

    .line 1811
    goto :goto_0

    .line 1820
    :cond_1
    const-string v1, "Slider"

    .restart local v1    # "type":Ljava/lang/String;
    goto :goto_1

    .line 1776
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch

    .line 1796
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onRecordKeyReleased()Z
    .locals 2

    .prologue
    .line 1828
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 1829
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->startProRecording()V

    .line 1831
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onRecordingEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 1836
    packed-switch p1, :pswitch_data_0

    .line 1850
    :goto_0
    :pswitch_0
    return-void

    .line 1842
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->handleProRecordingStopped()V

    goto :goto_0

    .line 1845
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->handleProRecordingCancelled()V

    goto :goto_0

    .line 1836
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
    .line 1855
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0801fe

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1857
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->onStopRecordingRequested(Z)V

    .line 1858
    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 4

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getMaxVideoFileSize()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1863
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->stopRecording()V

    .line 1869
    :goto_0
    return-void

    .line 1865
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->removeTouchAeRequest()V

    .line 1866
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->removeAfRequest()V

    .line 1867
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopAndRestartVideoRecording()V

    goto :goto_0
.end method

.method protected onRecordingRestricted(ZZ)V
    .locals 0
    .param p1, "isRestricted"    # Z
    .param p2, "stopForced"    # Z

    .prologue
    .line 2264
    if-eqz p1, :cond_0

    .line 2265
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/Pro;->onStopRecordingRequested(Z)V

    .line 2267
    :cond_0
    return-void
.end method

.method public onRecordingShutterSpeedValueMenuSelect(I)V
    .locals 0
    .param p1, "shutterspeed"    # I

    .prologue
    .line 1873
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->onShutterSpeedValueMenuSelect(I)V

    .line 1874
    return-void
.end method

.method public onRecordingTick(JJ)V
    .locals 3
    .param p1, "elapsedTime"    # J
    .param p3, "fileSize"    # J

    .prologue
    .line 1878
    const-string v0, "Pro"

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

    .line 1880
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1881
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->startTimer()V

    .line 1885
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->startBlinkIndicatorRecIcon()V

    .line 1886
    return-void

    .line 1883
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateRecordingTime(J)V

    goto :goto_0
.end method

.method public onSaturationMenuSelect(I)V
    .locals 3
    .param p1, "saturation"    # I

    .prologue
    .line 1890
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    .line 1891
    .local v0, "colorTune":Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->setColortuneValue(II)V

    .line 1892
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)V

    .line 1893
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getEffectParamterString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    .line 1894
    return-void
.end method

.method public onShadowMenuSelect(I)V
    .locals 3
    .param p1, "shadow"    # I

    .prologue
    .line 1898
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    .line 1899
    .local v0, "colorTune":Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->setColortuneValue(II)V

    .line 1900
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)V

    .line 1901
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getEffectParamterString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    .line 1902
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->setCurrentCustomId(I)V

    .line 1903
    return-void
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 1
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1908
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideProView()V

    .line 1910
    :cond_0
    return-void
.end method

.method public onShowProColorTuneList()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1915
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v3, :cond_0

    .line 1916
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 1919
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    if-eqz v0, :cond_1

    .line 1920
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->hideSlider()V

    .line 1923
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setVisibility(I)V

    .line 1925
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->refreshColorTuneItems()V

    .line 1927
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1928
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1930
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    if-eqz v0, :cond_2

    .line 1931
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSelected(Z)V

    .line 1933
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    .line 1934
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSelected(Z)V

    .line 1935
    return-void

    :cond_3
    move v0, v2

    .line 1927
    goto :goto_0
.end method

.method public onShowProSlider(Lcom/sec/android/app/camera/menu/ProSlider;)V
    .locals 2
    .param p1, "slider"    # Lcom/sec/android/app/camera/menu/ProSlider;

    .prologue
    .line 1940
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 1941
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 1944
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1945
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    if-eqz v0, :cond_1

    .line 1946
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->hideSlider()V

    .line 1950
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->hideList()V

    .line 1952
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCustomButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setVisibility(I)V

    .line 1956
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1957
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    .line 1970
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    if-eqz v0, :cond_3

    .line 1971
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSelected(Z)V

    .line 1974
    :cond_3
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    .line 1975
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->refreshSliderStep()V

    .line 1977
    return-void

    .line 1958
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1959
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    goto :goto_0

    .line 1960
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1961
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    goto :goto_0

    .line 1962
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1963
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    goto :goto_0

    .line 1964
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1965
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    goto :goto_0

    .line 1966
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1967
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    goto :goto_0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1981
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBurstCaptureAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->isProBurstCaptureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1982
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterPressed()V

    .line 1983
    const/4 v0, 0x1

    .line 1991
    :cond_0
    :goto_0
    return v0

    .line 1986
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isBurstCaptureAvailableFPS()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isLowLightDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1988
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v2, 0x7f0800fe

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onShutterKeyPressed()Z
    .locals 2

    .prologue
    .line 1996
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsManualFocusZoomProcessing:Z

    if-eqz v0, :cond_0

    .line 1997
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setZoomValue(I)V

    .line 2000
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBurstCaptureAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2001
    const/4 v0, 0x1

    .line 2003
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 4
    .param p1, "captureMethod"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2008
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v2, v3, :cond_3

    .line 2009
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2035
    :cond_0
    :goto_0
    return v0

    .line 2013
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getRemainRecordingTime()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    .line 2014
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleTakePicture()V

    goto :goto_0

    .line 2016
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x191

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(I)V

    goto :goto_0

    .line 2021
    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsBurstCapturing:Z

    if-eqz v2, :cond_4

    .line 2022
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2023
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterReleased()V

    goto :goto_0

    .line 2027
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v2

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_5

    .line 2028
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 2030
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(I)V

    .line 2031
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2032
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v2, v0, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    :cond_6
    move v0, v1

    .line 2035
    goto :goto_0
.end method

.method public onShutterSpeedValueMenuSelect(I)V
    .locals 8
    .param p1, "shutterspeed"    # I

    .prologue
    const/16 v7, 0x1f

    const/4 v6, 0x0

    const/16 v5, 0x19

    const/4 v4, -0x1

    .line 2040
    const-string v1, "Pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterSpeedValueMenuSelect : ShutterSpeed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    .line 2045
    .local v0, "preShutterSpeed":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShutterSpeed(I)V

    .line 2046
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 2047
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 2048
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 2051
    if-ne v0, v4, :cond_2

    if-eq p1, v4, :cond_2

    .line 2052
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v7, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 2053
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->setShutterPriorityActivate(Z)V

    .line 2065
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_1

    const/16 v1, 0x13

    if-ge p1, v1, :cond_1

    .line 2066
    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousShutterSpeed:Z

    .line 2069
    :cond_1
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/Pro;->setCurrentCustomId(I)V

    .line 2070
    return-void

    .line 2054
    :cond_2
    if-eq v0, v4, :cond_3

    if-ne p1, v4, :cond_3

    .line 2055
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v7, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 2056
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/Pro;->setShutterPriorityActivate(Z)V

    goto :goto_0

    .line 2059
    :cond_3
    if-ge v0, v5, :cond_4

    if-ge p1, v5, :cond_5

    :cond_4
    if-lt v0, v5, :cond_0

    if-ge p1, v5, :cond_0

    .line 2061
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v7, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 8
    .param p1, "event"    # I

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x1c

    const/4 v5, 0x3

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 2074
    const-string v0, "Pro"

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

    .line 2076
    packed-switch p1, :pswitch_data_0

    .line 2149
    :cond_0
    :goto_0
    return-void

    .line 2078
    :pswitch_0
    iput-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSingleCapturing:Z

    .line 2079
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2080
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    if-lt v0, v6, :cond_1

    .line 2081
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 2083
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideProView()V

    goto :goto_0

    .line 2087
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    if-lt v0, v6, :cond_0

    .line 2088
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x102

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 2089
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideProView()V

    .line 2090
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showLongEvShotProgressHelpText()V

    .line 2091
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->startLongEVShotShutterProgress()V

    .line 2092
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xd

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    goto :goto_0

    .line 2100
    :pswitch_2
    if-eq p1, v7, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 2101
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2102
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelIntervalCapture()V

    .line 2103
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 2104
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 2106
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showProView()V

    .line 2110
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    if-lt v0, v6, :cond_8

    .line 2111
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->hideLongEvShotProgressHelpText()V

    .line 2112
    if-ne p1, v5, :cond_4

    .line 2113
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    .line 2114
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xe

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 2116
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->stopLongEVShotShutterProgress()V

    .line 2118
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 2120
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_7

    .line 2121
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 2122
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showProView()V

    .line 2123
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 2130
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 2144
    :cond_6
    :goto_2
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSingleCapturing:Z

    goto/16 :goto_0

    .line 2126
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showProView()V

    .line 2127
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    goto :goto_1

    .line 2132
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_9

    .line 2133
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-ne v0, v5, :cond_9

    .line 2134
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->showProView()V

    .line 2138
    :cond_9
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsManualFocusZoomProcessing:Z

    if-eqz v0, :cond_6

    .line 2139
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v0

    const/16 v1, 0x21c

    if-ge v0, v1, :cond_6

    .line 2140
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v1, 0x21c

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setZoomValue(I)V

    goto :goto_2

    .line 2076
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
    .line 2153
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTime:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 2154
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->cancelRecording()V

    .line 2162
    :goto_0
    return-void

    .line 2156
    :cond_1
    if-eqz p1, :cond_2

    .line 2157
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->stopRecordingForced()V

    goto :goto_0

    .line 2159
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->stopRecording()V

    goto :goto_0
.end method

.method public onTemperatureMenuSelect(I)V
    .locals 3
    .param p1, "temperature"    # I

    .prologue
    .line 2166
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    .line 2167
    .local v0, "colorTune":Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->setColortuneValue(II)V

    .line 2168
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)V

    .line 2169
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getEffectParamterString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    .line 2170
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 2174
    const-string v0, "Pro"

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

    .line 2175
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2176
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 2178
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 2179
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 2181
    :cond_1
    if-nez p1, :cond_3

    .line 2182
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2183
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 2184
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 2185
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 2192
    :cond_3
    :goto_0
    return-void

    .line 2188
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 2189
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0
.end method

.method public onTintMenuSelect(I)V
    .locals 3
    .param p1, "tint"    # I

    .prologue
    .line 2196
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    .line 2197
    .local v0, "colorTune":Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->setColortuneValue(II)V

    .line 2198
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;)V

    .line 2199
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getEffectParamterString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    .line 2200
    return-void
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 2204
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 2209
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoStoringPreparedEvent()V
    .locals 0

    .prologue
    .line 2214
    return-void
.end method

.method public onWBValueMenuSelect(I)V
    .locals 3
    .param p1, "wb"    # I

    .prologue
    .line 2218
    const-string v0, "Pro"

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

    .line 2219
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setWhiteBalance(I)V

    .line 2220
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2221
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getKelvinValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateKelvin(I)V

    .line 2224
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 2225
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->getKelvinStringFromWBSetting(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 2227
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->setCurrentCustomId(I)V

    .line 2229
    return-void
.end method

.method protected runShutterProgress(J)V
    .locals 7
    .param p1, "sleepTimeMillis"    # J

    .prologue
    const/16 v5, 0xc

    .line 2275
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->isStopping()Z
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->access$200(Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2276
    const-string v3, "Pro"

    const-string v4, "runProgress mShutterProgressThread is stop"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    :cond_0
    :goto_0
    return-void

    .line 2280
    :cond_1
    const-string v3, "Pro"

    const-string v4, "runShutterProgress"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    const/4 v2, 0x0

    .line 2283
    .local v2, "progress":I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    if-eqz v3, :cond_3

    .line 2284
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-gt v1, v5, :cond_0

    .line 2285
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2286
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterProgressThread:Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->isStopping()Z
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->access$200(Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2290
    mul-int/lit8 v3, v1, 0x64

    div-int/lit8 v2, v3, 0xc

    .line 2291
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    .line 2293
    if-ge v1, v5, :cond_2

    .line 2295
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2284
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2296
    :catch_0
    move-exception v0

    .line 2297
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "Pro"

    const-string v4, "runShutterProgress - interrupted"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2304
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "i":I
    :cond_3
    const-string v3, "Pro"

    const-string v4, "runProgress mProgressThread is null by stopThread"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected startRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x13

    const/4 v2, 0x0

    .line 2309
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 2310
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->unregisterEAM()V

    .line 2311
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    .line 2312
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 2313
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x8

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 2315
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 2316
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V

    .line 2319
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setMaxVideoFileSize()V

    .line 2320
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->startRecordingPreviewVI()V

    .line 2321
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSwitchToCamcorderPreview()V

    .line 2322
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->finishRecordingPreviewVI()V

    .line 2323
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePrepareVideoRecording()V

    .line 2324
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartVideoRecording()V

    .line 2326
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsRecordingStopping:Z

    .line 2328
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 2329
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 2330
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->doDimmingRecordingButtons(Z)V

    .line 2331
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->onOrientationChanged(I)V

    .line 2333
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2334
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2335
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 2339
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 2340
    const-string v0, "Pro"

    const-string v1, "Shutter speed value is more than 1/30. Adjust it for Recording."

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsSavedPreviousShutterSpeed:Z

    .line 2343
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mSavedShutterSpeed:I

    .line 2345
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShutterSpeed(I)V

    .line 2346
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 2347
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 2348
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 2350
    :cond_2
    return-void
.end method

.method protected stopRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2353
    const-string v0, "Pro"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTime:I

    if-lt v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsRecordingStopping:Z

    if-eqz v0, :cond_1

    .line 2356
    :cond_0
    const-string v0, "Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecording : already stopping - recordingTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    :goto_0
    return-void

    .line 2359
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsRecordingStopping:Z

    .line 2361
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 2362
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getVideoRecordingTimeInMilliSecond()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateRecordingTime(J)V

    .line 2363
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 2365
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_3

    .line 2366
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopVideoRecordingAsync()V

    .line 2370
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->stopRecordingTickTimer()V

    .line 2371
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTime:I

    .line 2372
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2374
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->doDimmingRecordingButtons(Z)V

    .line 2375
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->registerEAM()V

    goto :goto_0

    .line 2368
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopVideoRecordingSync()V

    goto :goto_1
.end method

.method protected stopRecordingForced()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2379
    const-string v0, "Pro"

    const-string v1, "stopRecordingForced"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTime:I

    if-lt v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsRecordingStopping:Z

    if-eqz v0, :cond_1

    .line 2382
    :cond_0
    const-string v0, "Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecordingForced : already stopping - recordingTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    :goto_0
    return-void

    .line 2386
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 2387
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getVideoRecordingTimeInMilliSecond()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateRecordingTime(J)V

    .line 2388
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 2389
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopVideoRecordingForced()V

    .line 2391
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->stopRecordingTickTimer()V

    .line 2392
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingTime:I

    .line 2393
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2395
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->doDimmingRecordingButtons(Z)V

    .line 2397
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mIsRecordingStopping:Z

    .line 2398
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->registerEAM()V

    goto :goto_0
.end method
