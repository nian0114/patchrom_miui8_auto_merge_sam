.class public Lcom/sec/android/app/camera/shootingmode/VideoCollage;
.super Lcom/sec/android/app/camera/shootingmode/RecordingController;
.source "VideoCollage.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EffectProcessorListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;,
        Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_570:I = 0x23a

.field private static final CAF_BUTTON_DIAMETER:I

.field private static final CAF_BUTTON_POS_X:I

.field private static final CAF_BUTTON_POS_Y:I

.field private static final CAMERA_ID_NONE:I = -0x1

.field private static final COLLAGE1BY1_01_ICONLINE_ARRAY:[[I

.field private static final COLLAGE1BY1_01_ICON_ARRAY:[[I

.field private static final COLLAGE1BY1_02_ICONLINE_ARRAY:[[I

.field private static final COLLAGE1BY1_02_ICON_ARRAY:[[I

.field private static final COLLAGE1BY1_03_ICONLINE_ARRAY:[[I

.field private static final COLLAGE1BY1_03_ICON_ARRAY:[[I

.field private static final COLLAGE1BY1_04_ICONLINE_ARRAY:[[I

.field private static final COLLAGE1BY1_04_ICON_ARRAY:[[I

.field private static final COLLAGE4BY3_01_ICONLINE_ARRAY:[[I

.field private static final COLLAGE4BY3_01_ICON_ARRAY:[[I

.field private static final COLLAGE4BY3_02_ICONLINE_ARRAY:[[I

.field private static final COLLAGE4BY3_02_ICON_ARRAY:[[I

.field private static final COLLAGE4BY3_03_ICONLINE_ARRAY:[[I

.field private static final COLLAGE4BY3_03_ICON_ARRAY:[[I

.field private static final COLLAGE4BY3_04_ICONLINE_ARRAY:[[I

.field private static final COLLAGE4BY3_04_ICON_ARRAY:[[I

.field private static final COLLAGE_ICON_ORDER_DEFAULT:I = 0x0

.field private static final COLLAGE_ICON_ORDER_HORIZONTAL:I = 0x1

.field private static final COLLAGE_ICON_ORDER_VERTICAL:I = 0x0

.field private static final COLLAGE_TYPE_HEIGHT:I

.field private static final COLLAGE_TYPE_MARGIN_Y:I

.field private static final COLLAGE_TYPE_MARGIN_Y_270:I

.field private static final COLLAGE_TYPE_WIDTH:I

.field private static final DIM_CROP_ALPHA_VALUE:F = 0.45f

.field private static final EDITOR_COLLAGE_1_BY_1_1x2:I = 0x1

.field private static final EDITOR_COLLAGE_1_BY_1_1x22:I = 0x7

.field private static final EDITOR_COLLAGE_1_BY_1_1x3:I = 0x2

.field private static final EDITOR_COLLAGE_1_BY_1_2x2:I = 0x3

.field private static final EDITOR_COLLAGE_4_BY_3_1x2:I = 0x4

.field private static final EDITOR_COLLAGE_4_BY_3_1x22:I = 0x8

.field private static final EDITOR_COLLAGE_4_BY_3_1x3:I = 0x5

.field private static final EDITOR_COLLAGE_4_BY_3_2x2:I = 0x6

.field private static final EDITOR_COLLAGE_NONE:I = 0x0

.field private static final EFFECT_BUTTON_HEIGHT:I

.field private static final EFFECT_BUTTON_POS_X:I

.field private static final EFFECT_BUTTON_POS_Y_FRONT:I

.field private static final EFFECT_BUTTON_POS_Y_REAR:I

.field private static final EFFECT_BUTTON_WIDTH:I

.field private static final FLASH_BUTTON_HEIGHT:I

.field private static final FLASH_BUTTON_POS_X:I

.field private static final FLASH_BUTTON_POS_Y:I

.field private static final FLASH_BUTTON_WIDTH:I

.field private static final FOCUS_PAUSE_BUTTON:I = 0x1

.field private static final FOCUS_RECORDING_BUTTON:I = 0x0

.field private static final FOCUS_RESUME_BUTTON:I = 0x2

.field private static final FULL_SCREEN_HEIGHT:I

.field private static final FULL_SCREEN_WIDTH:I

.field private static final INTERVAL_UPDATE_PROGRESS:I = 0x1f4

.field private static final KEY_VIDEO_COLLAGE_IS_PROJECT_SAVED:Ljava/lang/String; = "pref_video_collage_is_project_saved_key"

.field private static final KEY_VIDEO_COLLAGE_IS_PROJECT_SECURE_SAVED:Ljava/lang/String; = "pref_video_collage_is_project_secure_saved_key"

.field private static final LAUNCH_EDITOR_MSG:I = 0x1

.field private static final MAX_COLLAGE_COUNT:I = 0x5

.field private static final MAX_COLLAGE_TYPE:I = 0x7

.field private static final MAX_PROGRESS:I = 0x3e8

.field private static final NORMAL_RATIO_LANDSCAPE_CROP_WIDTH_DIVIDE_2:F

.field private static final NORMAL_RATIO_PREVIEW_LEFT:I

.field private static final NO_VALUE:I = -0x1

.field private static final PROGRESSBAR_DIVIDER_WIDTH:I

.field private static final PROGRESSBAR_HEIGHT:I

.field private static final PROGRESSBAR_WIDTH:I

.field private static final PROGRESS_GROUP_HEIGHT:I

.field private static final PROGRESS_GROUP_MARGIN_Y:I

.field private static final PROGRESS_GROUP_MARGIN_Y_270:I

.field private static final PROGRESS_GROUP_WIDTH:I

.field private static final RECORDING_BUTTON_POS_X:I

.field private static final RECORDING_BUTTON_POS_Y:I

.field private static final RECORDING_DURATION_GUARANTEE_TIME:I = 0x46

.field private static final RECORDING_ICON_WIDTH:I

.field private static final RECORDING_TIME_GROUP_HEIGHT:I

.field private static final RECORDING_TIME_GROUP_MARGIN_Y:I

.field private static final RECORDING_TIME_GROUP_MARGIN_Y_270:I

.field private static final RECORDING_TIME_GROUP_WIDTH:I

.field private static final RECORDING_TIME_TEXT_LEFT_PADDING:I

.field private static final RECORDING_TIME_TEXT_POS_X:I

.field private static final RECORDING_TIME_TEXT_SIZE:F

.field private static final RECORDING_TIME_TEXT_STROKE_COLOR:I

.field private static final RECORDING_TIME_TEXT_STROKE_WIDTH:I

.field private static final RECORDING_TIME_TEXT_WIDTH:I

.field private static final RIGHT_SIDE_MENU_POS_X:I

.field private static final SCREEN_NORMAL_WIDTH:I

.field private static final SHOW_UI_DELAY_TIME:I = 0x32

.field private static final SHOW_UI_MSG:I = 0x4

.field private static final SIDE_MENU_HEIGHT:I

.field private static final SIDE_MENU_WIDTH:I

.field private static final SLOW_MOTION_ENCODING_BITRATE:I = 0x2dc6c0

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSING:I = 0x3

.field private static final STATE_RECORDED:I = 0x5

.field private static final STATE_RECORDING:I = 0x2

.field private static final STATE_RECORD_STARTING:I = 0x1

.field private static final STATE_RECORD_STOPPING:I = 0x4

.field private static final SWITCH_CAMERA_BUTTON_DIAMETER:I

.field private static final SWITCH_CAMERA_BUTTON_POS_X:I

.field private static final SWITCH_CAMERA_BUTTON_POS_Y:I

.field private static final SWITCH_CAMERA_BUTTON_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "VideoCollage"

.field private static final UNDO_BUTTON_DIAMETER:I

.field private static final UNDO_BUTTON_POS_X:I

.field private static final UNDO_BUTTON_POS_Y:I

.field private static final UNDO_BUTTON_TEXT_HEIGHT:I

.field private static final UNDO_BUTTON_TEXT_MARGIN:I

.field private static final UNDO_BUTTON_TEXT_SIZE:I

.field private static final UNDO_BUTTON_TEXT_WIDTH:I

.field private static final UNDO_BUTTON_WIDTH:I

.field private static final UPDATE_PROGRESS_MSG:I = 0x3

.field private static final UPDATE_REC_INDICATOR_MSG:I = 0x2

.field private static final VIDEO_COLLAGE_EDITOR_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.clipvideo.activity.ClipVideoEditorActivity"

.field private static final VIDEO_COLLAGE_EDITOR_PACKAGE:Ljava/lang/String; = "com.sec.android.app.clipvideo"

.field private static final VIDEO_COLLAGE_PROJECT_SAVE_FILE:Ljava/lang/String; = "VideoCollageProjectSave"

.field private static final VIDEO_COLLAGE_PROJECT_SECURE_SAVE_FILE:Ljava/lang/String; = "VideoCollageProjectSecureSave"

.field private static final VIDEO_COLLAGE_SAVE_DIRECTORY:Ljava/lang/String; = "/.VideoCollage"


# instance fields
.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCAFButton:Lcom/samsung/android/glview/GLButton;

.field private mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

.field private mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

.field private mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mCurrentOrientation:I

.field private mEffectButton:Lcom/sec/android/app/camera/widget/gl/Item;

.field private mFirstCameraId:I

.field private mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

.field private mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

.field private mIsCameraSwitching:Z

.field private mIsLayoutUpdateNeeded:Z

.field private mIsMaxDurationReached:Z

.field private mIsNeedBackupRecordingTime:Z

.field private mIsNeedDrawingProgressDivider:Z

.field private mIsTimerCounting:Z

.field private mLastDivider:Lcom/samsung/android/glview/GLImage;

.field private mLowDeviceStorageToast:Landroid/widget/Toast;

.field private mMaxRecordingTimeBackup:I

.field private mMaxRecordingTimeChangeCnt:I

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mPauseButton:Lcom/samsung/android/glview/GLButton;

.field private mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

.field private mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

.field private mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

.field private mProgressBarDividerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

.field private mRecordingButton:Lcom/samsung/android/glview/GLButton;

.field private mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

.field private mRecordingTimeInMs:I

.field private mResumeButton:Lcom/samsung/android/glview/GLButton;

.field private mSavedCamcorderResolution:I

.field private mSavedCameraResolution:I

.field private mSavedCollageTypeZoomValue:I

.field private mSavedTimerValue:I

.field private mSavedVideoCollageType:I

.field private mSavedVoiceCommandValue:I

.field private mSavedZoomValue:I

.field private mState:I

.field private mStateString:[Ljava/lang/String;

.field private mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

.field private mSwitchingCameraThread:Ljava/lang/Thread;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mUndoButton:Lcom/samsung/android/glview/GLButton;

.field private mUndoButtonText:Lcom/samsung/android/glview/GLText;

.field private mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

.field private mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 101
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_WIDTH:I

    .line 102
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    .line 105
    const v0, 0x7f090214

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SIDE_MENU_WIDTH:I

    .line 106
    const v0, 0x7f0901fd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SIDE_MENU_HEIGHT:I

    .line 107
    sget v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SIDE_MENU_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RIGHT_SIDE_MENU_POS_X:I

    .line 110
    const v0, 0x7f0901ae

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_BUTTON_POS_X:I

    .line 111
    const v0, 0x7f0901af

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_BUTTON_POS_Y:I

    .line 114
    const v0, 0x7f09019d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_WIDTH:I

    .line 115
    const v0, 0x7f090198

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_POS_X:I

    .line 116
    const v0, 0x7f090199

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_POS_Y:I

    .line 117
    const v0, 0x7f0902d7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_DIAMETER:I

    .line 118
    const v0, 0x7f09019c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_TEXT_WIDTH:I

    .line 119
    const v0, 0x7f09019a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_TEXT_HEIGHT:I

    .line 120
    sget v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_TEXT_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_TEXT_MARGIN:I

    .line 121
    const v0, 0x7f09019b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_TEXT_SIZE:I

    .line 124
    const v0, 0x7f0901aa

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_CAMERA_BUTTON_POS_X:I

    .line 125
    const v0, 0x7f0901ab

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_CAMERA_BUTTON_POS_Y:I

    .line 126
    const v0, 0x7f0901ac

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_CAMERA_BUTTON_WIDTH:I

    .line 127
    const v0, 0x7f0902d7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_CAMERA_BUTTON_DIAMETER:I

    .line 130
    const v0, 0x7f090194

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_POS_X:I

    .line 131
    const v0, 0x7f090195

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_POS_Y:I

    .line 132
    const v0, 0x7f090193

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_DIAMETER:I

    .line 135
    const v0, 0x7f0901f9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->EFFECT_BUTTON_WIDTH:I

    .line 136
    const v0, 0x7f0901f8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->EFFECT_BUTTON_HEIGHT:I

    .line 137
    const v0, 0x7f0901fa

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->EFFECT_BUTTON_POS_X:I

    .line 138
    sget v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x3

    sget v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->EFFECT_BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->EFFECT_BUTTON_POS_Y_REAR:I

    .line 139
    sget v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->EFFECT_BUTTON_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->EFFECT_BUTTON_POS_Y_FRONT:I

    .line 142
    const v0, 0x7f0901f9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_WIDTH:I

    .line 143
    const v0, 0x7f0901f8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_HEIGHT:I

    .line 144
    const v0, 0x7f0901fa

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_POS_X:I

    .line 145
    sget v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_POS_Y:I

    .line 148
    const v0, 0x7f090047

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    .line 149
    sget v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_HEIGHT:I

    .line 150
    const v0, 0x7f090045

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_MARGIN_Y:I

    .line 151
    const v0, 0x7f090046

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_MARGIN_Y_270:I

    .line 156
    const v0, 0x7f09004f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y:I

    .line 157
    const v0, 0x7f090050

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y_270:I

    .line 158
    const v0, 0x7f09004e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_HEIGHT:I

    .line 159
    const v0, 0x7f09004d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_ICON_WIDTH:I

    .line 160
    const v0, 0x7f090052

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_WIDTH:I

    .line 161
    const v0, 0x7f090051

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_LEFT_PADDING:I

    .line 162
    sget v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_ICON_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_LEFT_PADDING:I

    add-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_WIDTH:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    .line 163
    sget v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_ICON_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_LEFT_PADDING:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_POS_X:I

    .line 164
    const v0, 0x7f0a0052

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_STROKE_WIDTH:I

    .line 165
    const v0, 0x7f0c0037

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_STROKE_COLOR:I

    .line 166
    const v0, 0x7f0902ec

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_SIZE:F

    .line 169
    const v0, 0x7f09004c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    .line 170
    const v0, 0x7f09004b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_HEIGHT:I

    .line 171
    const v0, 0x7f090049

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_MARGIN_Y:I

    .line 172
    const v0, 0x7f09004a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_MARGIN_Y_270:I

    .line 173
    sget v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_WIDTH:I

    .line 174
    sget v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_HEIGHT:I

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_HEIGHT:I

    .line 175
    const v0, 0x7f090048

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_DIVIDER_WIDTH:I

    .line 178
    const v0, 0x7f09015c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_NORMAL_WIDTH:I

    .line 179
    const v0, 0x7f090148

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_PREVIEW_LEFT:I

    .line 181
    sget v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_NORMAL_WIDTH:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_LANDSCAPE_CROP_WIDTH_DIVIDE_2:F

    .line 241
    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_01_ICON_ARRAY:[[I

    .line 244
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_02_ICON_ARRAY:[[I

    .line 247
    new-array v0, v2, [[I

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_03_ICON_ARRAY:[[I

    .line 250
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_04_ICON_ARRAY:[[I

    .line 253
    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_01_ICON_ARRAY:[[I

    .line 256
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_02_ICON_ARRAY:[[I

    .line 259
    new-array v0, v2, [[I

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_03_ICON_ARRAY:[[I

    .line 262
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_04_ICON_ARRAY:[[I

    .line 267
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_01_ICONLINE_ARRAY:[[I

    .line 270
    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_02_ICONLINE_ARRAY:[[I

    .line 273
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_03_ICONLINE_ARRAY:[[I

    .line 276
    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_04_ICONLINE_ARRAY:[[I

    .line 279
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_18

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_01_ICONLINE_ARRAY:[[I

    .line 282
    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_1b

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_02_ICONLINE_ARRAY:[[I

    .line 285
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_1c

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_03_ICONLINE_ARRAY:[[I

    .line 288
    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_04_ICONLINE_ARRAY:[[I

    return-void

    .line 241
    :array_0
    .array-data 4
        0x7f020038
        0x7f020039
        0x7f02003a
    .end array-data

    :array_1
    .array-data 4
        0x7f020038
        0x7f02003b
        0x7f02003a
    .end array-data

    .line 244
    :array_2
    .array-data 4
        0x7f020045
        0x7f020046
        0x7f020047
        0x7f020048
    .end array-data

    :array_3
    .array-data 4
        0x7f020045
        0x7f020049
        0x7f02004a
        0x7f020048
    .end array-data

    .line 247
    :array_4
    .array-data 4
        0x7f02004f
        0x7f020050
        0x7f020051
        0x7f020052
        0x7f020053
    .end array-data

    :array_5
    .array-data 4
        0x7f02004f
        0x7f020054
        0x7f020055
        0x7f020056
        0x7f020053
    .end array-data

    .line 250
    :array_6
    .array-data 4
        0x7f02003c
        0x7f02003d
        0x7f02003f
        0x7f020041
    .end array-data

    :array_7
    .array-data 4
        0x7f02003c
        0x7f02003e
        0x7f020040
        0x7f020041
    .end array-data

    .line 253
    :array_8
    .array-data 4
        0x7f02005a
        0x7f02005b
        0x7f02005c
    .end array-data

    :array_9
    .array-data 4
        0x7f02005a
        0x7f020057
        0x7f02005c
    .end array-data

    .line 256
    :array_a
    .array-data 4
        0x7f020068
        0x7f020069
        0x7f02006a
        0x7f02006b
    .end array-data

    :array_b
    .array-data 4
        0x7f020068
        0x7f020063
        0x7f020064
        0x7f02006b
    .end array-data

    .line 259
    :array_c
    .array-data 4
        0x7f020070
        0x7f020071
        0x7f020072
        0x7f020073
        0x7f020074
    .end array-data

    :array_d
    .array-data 4
        0x7f020070
        0x7f020075
        0x7f020076
        0x7f020077
        0x7f020074
    .end array-data

    .line 262
    :array_e
    .array-data 4
        0x7f02005d
        0x7f02005e
        0x7f020060
        0x7f020062
    .end array-data

    :array_f
    .array-data 4
        0x7f02005d
        0x7f02005f
        0x7f020061
        0x7f020062
    .end array-data

    .line 267
    :array_10
    .array-data 4
        0x7f020036
        0x7f020037
    .end array-data

    :array_11
    .array-data 4
        0x7f020037
        0x7f020036
    .end array-data

    .line 270
    :array_12
    .array-data 4
        0x7f020042
        0x7f020043
        0x7f020044
    .end array-data

    :array_13
    .array-data 4
        0x7f020044
        0x7f020043
        0x7f020042
    .end array-data

    .line 273
    :array_14
    .array-data 4
        0x7f02004b
        0x7f02004c
        0x7f02004d
        0x7f02004e
    .end array-data

    :array_15
    .array-data 4
        0x7f02004c
        0x7f02004e
        0x7f02004b
        0x7f02004d
    .end array-data

    .line 276
    :array_16
    .array-data 4
        0x7f020036
        0x7f02004c
        0x7f02004e
    .end array-data

    :array_17
    .array-data 4
        0x7f02004c
        0x7f02004e
        0x7f020036
    .end array-data

    .line 279
    :array_18
    .array-data 4
        0x7f020058
        0x7f020059
    .end array-data

    :array_19
    .array-data 4
        0x7f020059
        0x7f020058
    .end array-data

    .line 282
    :array_1a
    .array-data 4
        0x7f020065
        0x7f020066
        0x7f020067
    .end array-data

    :array_1b
    .array-data 4
        0x7f020067
        0x7f020066
        0x7f020065
    .end array-data

    .line 285
    :array_1c
    .array-data 4
        0x7f02006c
        0x7f02006d
        0x7f02006e
        0x7f02006f
    .end array-data

    :array_1d
    .array-data 4
        0x7f02006d
        0x7f02006f
        0x7f02006c
        0x7f02006e
    .end array-data

    .line 288
    :array_1e
    .array-data 4
        0x7f020058
        0x7f02006d
        0x7f02006f
    .end array-data

    :array_1f
    .array-data 4
        0x7f02006d
        0x7f02006f
        0x7f020058
    .end array-data
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 6
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 355
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 292
    iput-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 293
    iput-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 297
    iput-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    .line 326
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mState:I

    .line 327
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "STATE_IDLE"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "STATE_RECORD_STARTING"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "STATE_RECORDING"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "STATE_PAUSING"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "STATE_RECORD_STOPPING"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "STATE_RECORDED"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mStateString:[Ljava/lang/String;

    .line 328
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFirstCameraId:I

    .line 330
    iput-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .line 334
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    .line 335
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCameraResolution:I

    .line 336
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCamcorderResolution:I

    .line 337
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedTimerValue:I

    .line 338
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedZoomValue:I

    .line 339
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVideoCollageType:I

    .line 340
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVoiceCommandValue:I

    .line 342
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    .line 343
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCollageTypeZoomValue:I

    .line 345
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedBackupRecordingTime:Z

    .line 346
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    .line 347
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedDrawingProgressDivider:Z

    .line 348
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsMaxDurationReached:Z

    .line 349
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsTimerCounting:Z

    .line 350
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    .line 356
    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/interfaces/MenuManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/menu/ZoomSliderMenu;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/camera/shootingmode/VideoCollage;Lcom/sec/android/app/camera/menu/ZoomSliderMenu;)Lcom/sec/android/app/camera/menu/ZoomSliderMenu;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;
    .param p1, "x1"    # Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCamera()V

    return-void
.end method

.method static synthetic access$3400(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->handleSwitchCameraCompleted()V

    return-void
.end method

.method static synthetic access$3502(Lcom/sec/android/app/camera/shootingmode/VideoCollage;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchingCameraThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateProgress()V

    return-void
.end method

.method static synthetic access$3900(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecIndicatorIcon()V

    return-void
.end method

.method static synthetic access$4000(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->launchEditor()V

    return-void
.end method

.method static synthetic access$4100(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->reset()V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCameraSwitchingAnimationRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->sendShowUIMessageDelayed()V

    return-void
.end method

.method static synthetic access$4400(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showView()V

    return-void
.end method

.method private addClip()V
    .locals 8

    .prologue
    .line 1223
    const/4 v0, 0x0

    .line 1224
    .local v0, "duration":I
    const-string v4, ""

    .line 1225
    .local v4, "recordedTime":Ljava/lang/String;
    const-string v3, ""

    .line 1227
    .local v3, "recordedFileName":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v3

    .line 1230
    :try_start_0
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1231
    .local v2, "metadataRetriver":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1232
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 1233
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1238
    .end local v2    # "metadataRetriver":Landroid/media/MediaMetadataRetriever;
    :goto_0
    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1239
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1240
    const-string v5, "VideoCollage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addClip() - duration by metadataRetriver="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v5, :cond_0

    .line 1247
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isNeedRotate()Z

    move-result v6

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->addClip(Ljava/lang/String;IZ)V
    invoke-static {v5, v3, v0, v6}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$300(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;Ljava/lang/String;IZ)V

    .line 1250
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->dump()V
    invoke-static {v5}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)V

    .line 1252
    :cond_0
    return-void

    .line 1234
    :catch_0
    move-exception v1

    .line 1235
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "VideoCollage"

    const-string v6, "setDataSource failed"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1242
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordedTimeInMs()I

    move-result v0

    .line 1243
    const-string v5, "VideoCollage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addClip() - duration by getRecordedTimeInMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private addProgressDivider(I)V
    .locals 8
    .param p1, "progress"    # I

    .prologue
    .line 1255
    int-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_WIDTH:I

    int-to-float v1, v1

    mul-float v2, v0, v1

    .line 1256
    .local v2, "posX":F
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_DIVIDER_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x1

    const v7, 0x7f020035

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLastDivider:Lcom/samsung/android/glview/GLImage;

    .line 1257
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLastDivider:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1258
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLastDivider:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1259
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLastDivider:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1260
    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    .line 1263
    const-string v0, "VideoCollage"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->access$500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;)V

    .line 1265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    .line 1266
    return-void
.end method

.method private clearProgressDivider()V
    .locals 3

    .prologue
    .line 1269
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLImage;

    .line 1270
    .local v0, "divider":Lcom/samsung/android/glview/GLImage;
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1271
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    goto :goto_0

    .line 1273
    .end local v0    # "divider":Lcom/samsung/android/glview/GLImage;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1274
    return-void
.end method

.method private createVideoCollageFilePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1277
    const/4 v1, 0x0

    .line 1278
    .local v1, "videoPathDir":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getVideoCollageFilePath()Ljava/lang/String;

    move-result-object v1

    .line 1279
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1280
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1281
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1282
    const-string v2, "VideoCollage"

    const-string v3, "directory is not made"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    const/4 v1, 0x0

    .line 1286
    .end local v1    # "videoPathDir":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private discardRecording()V
    .locals 4

    .prologue
    .line 1290
    const-string v2, "VideoCollage"

    const-string v3, "discardRecording()"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1293
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleCancelVideoRecording()V

    .line 1296
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v2, :cond_1

    .line 1297
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    .line 1299
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1300
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->doUndo()V

    .line 1299
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1303
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCurrentState(I)V

    .line 1304
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPreviewLayout()V

    .line 1305
    return-void
.end method

.method private discardSaved()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1309
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getVideoCollageFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->deleteDirectory(Ljava/lang/String;)V

    .line 1310
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSaveFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1311
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSecureSaveFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1312
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_video_collage_is_project_saved_key"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1313
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_video_collage_is_project_secure_saved_key"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1315
    return-void
.end method

.method private doUndo()V
    .locals 2

    .prologue
    .line 1318
    const-string v0, "VideoCollage"

    const-string v1, "doUndo()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->removeLastClip()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)V

    .line 1323
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1324
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->removeLastProgressDivider()V

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1329
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCameraSwitched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1330
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCameraSync()V

    .line 1333
    :cond_1
    return-void
.end method

.method private getCollageTypeForEditor(II)I
    .locals 4
    .param p1, "projectType"    # I
    .param p2, "collageType"    # I

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x5

    const/4 v0, 0x4

    const/4 v3, 0x0

    .line 1337
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v3

    .line 1371
    :goto_0
    :pswitch_1
    return v0

    .line 1339
    :pswitch_2
    packed-switch p2, :pswitch_data_1

    move v0, v3

    .line 1347
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 1343
    goto :goto_0

    :pswitch_4
    move v0, v2

    .line 1345
    goto :goto_0

    .line 1350
    :pswitch_5
    packed-switch p2, :pswitch_data_2

    move v0, v3

    .line 1368
    goto :goto_0

    .line 1352
    :pswitch_6
    const/4 v0, 0x1

    goto :goto_0

    .line 1354
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_0

    .line 1356
    :pswitch_8
    const/4 v0, 0x3

    goto :goto_0

    .line 1358
    :pswitch_9
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_a
    move v0, v1

    .line 1362
    goto :goto_0

    :pswitch_b
    move v0, v2

    .line 1364
    goto :goto_0

    .line 1366
    :pswitch_c
    const/16 v0, 0x8

    goto :goto_0

    .line 1337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1339
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1350
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private getCollageTypeSettingFromProject(III)I
    .locals 6
    .param p1, "projectType"    # I
    .param p2, "collageType"    # I
    .param p3, "ratio"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x4

    const/4 v0, 0x3

    .line 1376
    packed-switch p1, :pswitch_data_0

    move v0, v4

    .line 1413
    :cond_0
    :goto_0
    return v0

    .line 1378
    :pswitch_0
    if-ne p2, v1, :cond_1

    .line 1379
    const/4 v0, 0x1

    goto :goto_0

    .line 1380
    :cond_1
    if-ne p2, v2, :cond_2

    .line 1381
    const/4 v0, 0x2

    goto :goto_0

    .line 1382
    :cond_2
    if-ne p2, v3, :cond_0

    goto :goto_0

    .line 1387
    :pswitch_1
    if-nez p3, :cond_3

    move v0, v1

    .line 1388
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1390
    goto :goto_0

    .line 1393
    :pswitch_2
    const/4 v5, 0x1

    if-ne p2, v5, :cond_4

    move v0, v3

    .line 1394
    goto :goto_0

    .line 1395
    :cond_4
    const/4 v5, 0x2

    if-ne p2, v5, :cond_5

    .line 1396
    const/4 v0, 0x7

    goto :goto_0

    .line 1397
    :cond_5
    if-ne p2, v0, :cond_6

    .line 1398
    const/16 v0, 0x8

    goto :goto_0

    .line 1399
    :cond_6
    const/4 v0, 0x7

    if-ne p2, v0, :cond_7

    .line 1400
    const/16 v0, 0x9

    goto :goto_0

    .line 1401
    :cond_7
    if-ne p2, v1, :cond_8

    .line 1402
    const/16 v0, 0xa

    goto :goto_0

    .line 1403
    :cond_8
    if-ne p2, v2, :cond_9

    .line 1404
    const/16 v0, 0xb

    goto :goto_0

    .line 1405
    :cond_9
    if-ne p2, v3, :cond_a

    .line 1406
    const/16 v0, 0xc

    goto :goto_0

    .line 1407
    :cond_a
    const/16 v0, 0x8

    if-ne p2, v0, :cond_b

    .line 1408
    const/16 v0, 0xd

    goto :goto_0

    :cond_b
    move v0, v4

    .line 1410
    goto :goto_0

    .line 1376
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCurrentProgress()I
    .locals 4

    .prologue
    .line 1419
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1420
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1421
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordedTimeInMs()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordedTimeInMs()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    add-int v1, v2, v3

    .line 1428
    .local v1, "recordedTimeInMs":I
    :goto_0
    int-to-float v2, v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 1429
    .local v0, "progress":I
    return v0

    .line 1423
    .end local v0    # "progress":I
    .end local v1    # "recordedTimeInMs":I
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordedTimeInMs()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    .restart local v1    # "recordedTimeInMs":I
    goto :goto_0

    .line 1426
    .end local v1    # "recordedTimeInMs":I
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordedTimeInMs()I

    move-result v1

    .restart local v1    # "recordedTimeInMs":I
    goto :goto_0
.end method

.method private getCurrentRecordingTime()I
    .locals 4

    .prologue
    .line 1434
    const/4 v0, 0x0

    .line 1436
    .local v0, "currentTime":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v1, :cond_0

    .line 1437
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1438
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordedTimeInMs()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    add-int v0, v1, v2

    .line 1443
    :cond_0
    :goto_0
    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentRecordingTime() - currentTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    return v0

    .line 1440
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    goto :goto_0
.end method

.method private getCurrentState()I
    .locals 1

    .prologue
    .line 1448
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mState:I

    return v0
.end method

.method private getEffectProcessorParameter()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1457
    const/4 v0, 0x0

    .line 1459
    .local v0, "clipping":I
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCropAreaEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1460
    const/4 v0, 0x1

    .line 1465
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clipmovie,clipping="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1466
    .local v1, "str":Ljava/lang/String;
    return-object v1

    .line 1462
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMaxRecordingTimeInMs()I
    .locals 4

    .prologue
    .line 1471
    const/4 v0, 0x0

    .line 1473
    .local v0, "duration":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v1, :cond_0

    .line 1474
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    .line 1476
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1477
    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxRecordingTimeInMS - duration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentRecording - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordedTimeInMs()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordedTimeInMs()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1481
    :cond_0
    return v0
.end method

.method private getProgress()I
    .locals 1

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method private getProjectSaveFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1493
    const-string v0, "VideoCollageProjectSave"

    return-object v0
.end method

.method private getProjectSecureSaveFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1497
    const-string v0, "VideoCollageProjectSecureSave"

    return-object v0
.end method

.method private getRecordedTimeInMs()I
    .locals 2

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getVideoRecordingTimeInMilliSecond()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private getRecordingTimeSettingFromProject(I)I
    .locals 1
    .param p1, "recordingTime"    # I

    .prologue
    const/4 v0, 0x1

    .line 1506
    sparse-switch p1, :sswitch_data_0

    .line 1516
    :goto_0
    :sswitch_0
    return v0

    .line 1508
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1512
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1514
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1506
    nop

    :sswitch_data_0
    .sparse-switch
        0xbb8 -> :sswitch_1
        0x1770 -> :sswitch_0
        0x2328 -> :sswitch_2
        0x3a98 -> :sswitch_3
    .end sparse-switch
.end method

.method private getRecordingTimeText()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1522
    const-string v0, ""

    .line 1523
    .local v0, "time":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v1, :cond_0

    .line 1524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentRecordingTime()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0801d7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1527
    :cond_0
    return-object v0
.end method

.method private getRemainedRecordingTime()I
    .locals 4

    .prologue
    .line 1532
    const/4 v0, 0x0

    .line 1534
    .local v0, "remainedTime":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v1, :cond_0

    .line 1535
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1536
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordedTimeInMs()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    add-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 1541
    :cond_0
    :goto_0
    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRemainedRecordingTime() - currentTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    return v0

    .line 1538
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method private getResourceIconLineOrder(II)I
    .locals 2
    .param p1, "count"    # I
    .param p2, "order"    # I

    .prologue
    const/4 v0, -0x1

    .line 1546
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1569
    :goto_0
    return v0

    .line 1548
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1550
    :pswitch_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_01_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1552
    :pswitch_2
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_02_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1554
    :pswitch_3
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_03_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1556
    :pswitch_4
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_04_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1558
    :pswitch_5
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_01_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1560
    :pswitch_6
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_02_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1562
    :pswitch_7
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_03_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1564
    :pswitch_8
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_04_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1546
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1548
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method private getResourceIconOrder(II)I
    .locals 2
    .param p1, "count"    # I
    .param p2, "order"    # I

    .prologue
    const/4 v0, -0x1

    .line 1574
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1597
    :goto_0
    return v0

    .line 1576
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1578
    :pswitch_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_01_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1580
    :pswitch_2
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_02_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1582
    :pswitch_3
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_03_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1584
    :pswitch_4
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_04_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1586
    :pswitch_5
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_01_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1588
    :pswitch_6
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_02_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1590
    :pswitch_7
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_03_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1592
    :pswitch_8
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_04_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    .line 1574
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1576
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method private getVideoCollageFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.VideoCollage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVideoSizeDivider()[I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 1606
    const/4 v2, 0x1

    .local v2, "verticalDivider":I
    const/4 v0, 0x1

    .line 1607
    .local v0, "horizontalDivider":I
    new-array v1, v4, [I

    .line 1609
    .local v1, "ret":[I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1676
    :pswitch_0
    const/4 v0, 0x1

    .line 1677
    const/4 v2, 0x1

    .line 1681
    :cond_0
    :goto_0
    const/4 v3, 0x0

    aput v0, v1, v3

    .line 1682
    aput v2, v1, v5

    .line 1683
    return-object v1

    .line 1611
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1625
    const/4 v0, 0x1

    .line 1626
    const/4 v2, 0x1

    .line 1627
    goto :goto_0

    .line 1613
    :pswitch_2
    const/4 v0, 0x1

    .line 1614
    const/4 v2, 0x2

    .line 1615
    goto :goto_0

    .line 1617
    :pswitch_3
    const/4 v0, 0x1

    .line 1618
    const/4 v2, 0x3

    .line 1619
    goto :goto_0

    .line 1621
    :pswitch_4
    const/4 v0, 0x1

    .line 1622
    const/4 v2, 0x1

    .line 1623
    goto :goto_0

    .line 1632
    :pswitch_5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    packed-switch v3, :pswitch_data_2

    .line 1670
    const/4 v0, 0x1

    .line 1671
    const/4 v2, 0x1

    .line 1672
    goto :goto_0

    .line 1635
    :pswitch_6
    const/4 v0, 0x1

    .line 1636
    const/4 v2, 0x2

    .line 1637
    goto :goto_0

    .line 1640
    :pswitch_7
    const/4 v0, 0x1

    .line 1641
    const/4 v2, 0x3

    .line 1642
    goto :goto_0

    .line 1645
    :pswitch_8
    const/4 v0, 0x2

    .line 1646
    const/4 v2, 0x2

    .line 1647
    goto :goto_0

    .line 1651
    :pswitch_9
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getViewOrientation()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getViewOrientation()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 1652
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 1653
    :cond_2
    const/4 v0, 0x2

    .line 1654
    const/4 v2, 0x2

    goto :goto_0

    .line 1655
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 1656
    const/4 v0, 0x1

    .line 1657
    const/4 v2, 0x2

    goto :goto_0

    .line 1660
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-nez v3, :cond_5

    .line 1661
    const/4 v0, 0x1

    .line 1662
    const/4 v2, 0x2

    goto :goto_0

    .line 1663
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-eq v3, v5, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 1664
    :cond_6
    const/4 v0, 0x2

    .line 1665
    const/4 v2, 0x2

    goto :goto_0

    .line 1609
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1611
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1632
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private handleRecordingCancelled()V
    .locals 2

    .prologue
    .line 1687
    const-string v0, "VideoCollage"

    const-string v1, "handleRecordingCancelled()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoFilePath(Ljava/lang/String;)V

    .line 1690
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 1691
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 1693
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->stopTimer()V

    .line 1695
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1696
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCurrentState(I)V

    .line 1697
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordedLayout()V

    .line 1702
    :goto_0
    return-void

    .line 1699
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCurrentState(I)V

    .line 1700
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPreviewLayout()V

    goto :goto_0
.end method

.method private handleRecordingStopped()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1705
    const-string v1, "VideoCollage"

    const-string v2, "handleRecordingStopped()"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isPlayRecordingStopSound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1708
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x9

    invoke-interface {v1, v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 1710
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 1711
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 1713
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoFilePath(Ljava/lang/String;)V

    .line 1715
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x12

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1716
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 1720
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-nez v1, :cond_2

    .line 1721
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getOrientationOnTake()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 1722
    .local v0, "orientation":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setOrientation(I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 1723
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v2

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setFirstFlip(I)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 1724
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setFirstCameraIdTaken(I)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1300(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 1727
    .end local v0    # "orientation":I
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->addClip()V

    .line 1729
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->stopTimer()V

    .line 1730
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordingLayout()V

    .line 1732
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1733
    const-string v1, "VideoCollage"

    const-string v2, "Finishing.."

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideIndicatorLayout()V

    .line 1736
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsMaxDurationReached:Z

    .line 1739
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCameraSwitched()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1740
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCameraSync()V

    .line 1743
    :cond_3
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCurrentState(I)V

    .line 1745
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v1, :cond_4

    .line 1746
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.app.clipvideo"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/PermissionUtils;->hasPermissions(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1748
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1e3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0801ba

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(ILjava/lang/String;Ljava/lang/String;)V

    .line 1758
    :cond_4
    :goto_0
    return-void

    .line 1752
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1755
    :cond_6
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCurrentState(I)V

    .line 1756
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordedLayout()V

    goto :goto_0
.end method

.method private handleSwitchCameraCompleted()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1762
    move-object v0, p0

    .line 1763
    .local v0, "pInstance":Lcom/sec/android/app/camera/shootingmode/VideoCollage;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage;Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1775
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1776
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 1781
    :goto_0
    return-void

    .line 1778
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto :goto_0
.end method

.method private hideCAFButton()V
    .locals 2

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1785
    return-void
.end method

.method private hideCollageTypeIcon()V
    .locals 2

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1789
    return-void
.end method

.method private hideCollageTypeIconLine()V
    .locals 2

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1793
    return-void
.end method

.method private hideCropArea()V
    .locals 2

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1797
    return-void
.end method

.method private hideEffectButton()V
    .locals 2

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(I)V

    .line 1801
    return-void
.end method

.method private hideFlashButton()V
    .locals 2

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(I)V

    .line 1805
    return-void
.end method

.method private hideIndicatorLayout()V
    .locals 2

    .prologue
    .line 1808
    const-string v0, "VideoCollage"

    const-string v1, "hideIndicatorLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecTimeGroup()V

    .line 1811
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideProgress()V

    .line 1812
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCollageTypeIcon()V

    .line 1813
    return-void
.end method

.method private hidePauseButton()V
    .locals 2

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1817
    return-void
.end method

.method private hidePauseIndicatorIcon()V
    .locals 2

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1821
    return-void
.end method

.method private hideProgress()V
    .locals 2

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1825
    return-void
.end method

.method private hideRecIndicatorIcon()V
    .locals 2

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1829
    return-void
.end method

.method private hideRecTimeGroup()V
    .locals 2

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1833
    return-void
.end method

.method private hideRecordedLayout()V
    .locals 0

    .prologue
    .line 1836
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordingButton()V

    .line 1837
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideUndoButton()V

    .line 1838
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideSwitchCameraButton()V

    .line 1839
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideEffectButton()V

    .line 1840
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideFlashButton()V

    .line 1841
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseButton()V

    .line 1842
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideResumeButton()V

    .line 1844
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideProgress()V

    .line 1845
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->clearProgressDivider()V

    .line 1846
    return-void
.end method

.method private hideRecordingButton()V
    .locals 2

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1850
    return-void
.end method

.method private hideRecordingLayout()V
    .locals 0

    .prologue
    .line 1853
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseButton()V

    .line 1854
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideResumeButton()V

    .line 1855
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCAFButton()V

    .line 1856
    return-void
.end method

.method private hideResumeButton()V
    .locals 2

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1860
    return-void
.end method

.method private hideSwitchCameraButton()V
    .locals 2

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1864
    return-void
.end method

.method private hideUndoButton()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1867
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1868
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1869
    return-void
.end method

.method private hideView()V
    .locals 2

    .prologue
    .line 1872
    const-string v0, "VideoCollage"

    const-string v1, "hideView()"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideIndicatorLayout()V

    .line 1875
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordingLayout()V

    .line 1876
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordedLayout()V

    .line 1877
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCropArea()V

    .line 1878
    return-void
.end method

.method private initializeProject(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 1881
    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeProject() - type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_0

    .line 1884
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)V

    .line 1887
    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .line 1889
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProjectType(I)V

    .line 1890
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingTimeByType()V

    .line 1891
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageType(I)V

    .line 1892
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRatio(I)V

    .line 1893
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setMaxRecordingCount(I)V

    .line 1894
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setViewOrientation(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 1897
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->dump()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)V

    .line 1898
    return-void
.end method

.method private initializeView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 29
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;

    .prologue
    .line 1901
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    .line 1903
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RIGHT_SIDE_MENU_POS_X:I

    int-to-float v4, v4

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SIDE_MENU_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SIDE_MENU_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    .line 1904
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 1906
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_BUTTON_POS_X:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_BUTTON_POS_Y:I

    int-to-float v5, v3

    const v6, 0x7f020110

    const v7, 0x7f020111

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    .line 1908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/16 v3, 0x41

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 1909
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1910
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1912
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 1914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 1916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 1918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801a5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1921
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_BUTTON_POS_X:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_BUTTON_POS_Y:I

    int-to-float v5, v3

    const v6, 0x7f020116

    const v7, 0x7f020117

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    .line 1922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1925
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1927
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 1928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 1930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08018d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1933
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_BUTTON_POS_X:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_BUTTON_POS_Y:I

    int-to-float v5, v3

    const v6, 0x7f020110

    const v7, 0x7f020111

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    .line 1935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1936
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 1941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 1943
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801b3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1946
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_POS_X:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_POS_Y:I

    int-to-float v5, v3

    const v6, 0x7f020113

    const v7, 0x7f020113

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    .line 1947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 1952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 1954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080133

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1957
    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_POS_Y:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_WIDTH:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_TEXT_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_TEXT_HEIGHT:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f080133

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v10, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_TEXT_SIZE:I

    int-to-float v9, v10

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButtonText:Lcom/samsung/android/glview/GLText;

    .line 1959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1960
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 1962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 1963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 1964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 1965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_POS_Y:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_TEXT_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_POS_Y:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_WIDTH:I

    add-int/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_TEXT_MARGIN:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1969
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1971
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_CAMERA_BUTTON_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_CAMERA_BUTTON_POS_Y:I

    int-to-float v5, v5

    const v6, 0x7f020112

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    .line 1972
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1974
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 1977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1978
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_CAMERA_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 1979
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801dd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1982
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    if-eqz v2, :cond_0

    .line 1983
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_POS_X:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_POS_Y:I

    int-to-float v5, v3

    const v6, 0x7f020023

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    .line 1984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1986
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1987
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 1990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08004b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1994
    :cond_0
    const/16 v2, 0x7f

    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v27

    .line 1995
    .local v27, "resEffectID":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v8, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v27

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v27

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v27

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x7f

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v27

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-direct {v8, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 1997
    .local v8, "bundleEffect":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v9

    .line 1998
    .local v9, "cmdEffect":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->EFFECT_BUTTON_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->EFFECT_BUTTON_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectButton:Lcom/sec/android/app/camera/widget/gl/Item;

    .line 1999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/Item;->setRotatable(Z)V

    .line 2000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/Item;->setCenterPivot(Z)V

    .line 2001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/Item;->setRotateAnimation(Z)V

    .line 2002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(I)V

    .line 2004
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v28

    .line 2005
    .local v28, "resFlashID":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v16, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v28

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v28

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v28

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x3

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v28

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 2006
    .local v16, "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/command/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v17

    .line 2007
    .local v17, "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v10, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_POS_X:I

    int-to-float v12, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_POS_Y:I

    int-to-float v13, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_WIDTH:I

    int-to-float v14, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_HEIGHT:I

    int-to-float v15, v2

    invoke-direct/range {v10 .. v17}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    .line 2008
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/Item;->setRotatable(Z)V

    .line 2009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/Item;->setCenterPivot(Z)V

    .line 2010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/Item;->setRotateAnimation(Z)V

    .line 2011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(I)V

    .line 2013
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    int-to-float v6, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 2014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 2015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 2017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y:I

    sub-int/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_HEIGHT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2019
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2020
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y_270:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2021
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y_270:I

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2024
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0201cd

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    .line 2025
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2027
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0201cc

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    .line 2028
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2030
    new-instance v18, Lcom/samsung/android/glview/GLText;

    sget v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_POS_X:I

    int-to-float v0, v2

    move/from16 v20, v0

    const/16 v21, 0x0

    sget v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_WIDTH:I

    int-to-float v0, v2

    move/from16 v22, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v23, v0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v24

    sget v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v25, v2, v3

    move-object/from16 v19, p1

    invoke-direct/range {v18 .. v25}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    .line 2032
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 2033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 2034
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 2036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2041
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    int-to-float v6, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 2042
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 2043
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_MARGIN_Y:I

    sub-int/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_MARGIN_Y:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2045
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_MARGIN_Y_270:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2046
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_MARGIN_Y_270:I

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2049
    new-instance v18, Lcom/samsung/android/glview/GLProgressBar;

    const/16 v20, 0x0

    const/16 v21, 0x0

    sget v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_WIDTH:I

    int-to-float v0, v2

    move/from16 v22, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_HEIGHT:I

    int-to-float v0, v2

    move/from16 v23, v0

    const v24, 0x7f020170

    const v25, 0x7f020171

    move-object/from16 v19, p1

    invoke-direct/range {v18 .. v25}, Lcom/samsung/android/glview/GLProgressBar;-><init>(Lcom/samsung/android/glview/GLContext;FFFFII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    .line 2050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLProgressBar;->setMax(I)V

    .line 2052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2054
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 2057
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    int-to-float v6, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 2058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 2059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_MARGIN_Y:I

    sub-int/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_HEIGHT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_MARGIN_Y:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_MARGIN_Y_270:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_MARGIN_Y_270:I

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2065
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f020070

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    .line 2066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 2067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 2068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setClickable(Z)V

    .line 2069
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080127

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    .line 2071
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f02006c

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    .line 2072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 2073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 2074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setClickable(Z)V

    .line 2075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080127

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    .line 2077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 2083
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_WIDTH:I

    int-to-float v6, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 2084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 2085
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2088
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2090
    new-instance v18, Lcom/samsung/android/glview/GLRectangle;

    sget v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_PREVIEW_LEFT:I

    int-to-float v0, v2

    move/from16 v20, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_LANDSCAPE_CROP_WIDTH_DIVIDE_2:F

    sub-float v21, v2, v3

    sget v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_NORMAL_WIDTH:I

    int-to-float v0, v2

    move/from16 v22, v0

    sget v23, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_LANDSCAPE_CROP_WIDTH_DIVIDE_2:F

    const v2, 0x7f0c000c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v24

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v26, 0x1

    move-object/from16 v19, p1

    invoke-direct/range {v18 .. v26}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

    .line 2092
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

    const v3, 0x3ee66666    # 0.45f

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    .line 2093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    .line 2095
    new-instance v18, Lcom/samsung/android/glview/GLRectangle;

    sget v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_PREVIEW_LEFT:I

    int-to-float v0, v2

    move/from16 v20, v0

    const/16 v21, 0x0

    sget v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_NORMAL_WIDTH:I

    int-to-float v0, v2

    move/from16 v22, v0

    sget v23, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_LANDSCAPE_CROP_WIDTH_DIVIDE_2:F

    const v2, 0x7f0c000c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v24

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v26, 0x1

    move-object/from16 v19, p1

    invoke-direct/range {v18 .. v26}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

    .line 2097
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

    const v3, 0x3ee66666    # 0.45f

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    .line 2098
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    .line 2100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectButton:Lcom/sec/android/app/camera/widget/gl/Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 2113
    return-void
.end method

.method private isCameraSwitched()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2116
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFirstCameraId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2119
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFirstCameraId:I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isCameraSwitchingAnimationRunning()Z
    .locals 1

    .prologue
    .line 2124
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v0

    return v0
.end method

.method private isCancellable()Z
    .locals 2

    .prologue
    .line 2128
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2129
    :cond_0
    const/4 v0, 0x1

    .line 2131
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isClipsAdded()Z
    .locals 1

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2136
    const/4 v0, 0x1

    .line 2138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCropAreaEnabled()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2143
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getVideoSizeDivider()[I

    move-result-object v0

    .line 2144
    .local v0, "div":[I
    aget v1, v0, v5

    .line 2145
    .local v1, "horizontal_div":I
    aget v3, v0, v4

    .line 2146
    .local v3, "vertical_div":I
    div-int v2, v3, v1

    .line 2148
    .local v2, "ratio":I
    if-eq v2, v4, :cond_0

    .line 2151
    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method private isFinish()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2156
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v1, :cond_1

    .line 2157
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2158
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsMaxDurationReached:Z

    .line 2166
    :goto_0
    return v0

    .line 2161
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getMaxRecordingCount()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 2162
    const-string v1, "VideoCollage"

    const-string v2, "isFinish() - max recording count is reached"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2166
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedRotate()Z
    .locals 6

    .prologue
    const/16 v5, 0x10e

    const/16 v4, 0x5a

    .line 2170
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getOrientationOnTake()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->calculateOrientationForPicture(I)I

    move-result v1

    .line 2171
    .local v1, "orientation":I
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v0

    .line 2172
    .local v0, "flip":I
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getFirstCameraIdTaken()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v3

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getOrientation()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-eq v2, v1, :cond_4

    .line 2173
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getOrientation()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getOrientation()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 2174
    :cond_0
    if-eq v1, v4, :cond_1

    if-ne v1, v5, :cond_4

    .line 2175
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getFirstFlip()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v3

    if-ne v2, v3, :cond_4

    if-nez v0, :cond_4

    .line 2178
    :cond_3
    const/4 v2, 0x1

    .line 2183
    :goto_0
    return v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSavedProjectExist()Z
    .locals 9

    .prologue
    .line 2187
    const/4 v5, 0x0

    .line 2188
    .local v5, "matched":Z
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "pref_video_collage_is_project_saved_key"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    .line 2190
    .local v3, "isSavedCheck":Z
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 2191
    .local v1, "file":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSaveFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 2192
    const/4 v5, 0x1

    .line 2190
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2196
    .end local v1    # "file":Ljava/lang/String;
    :cond_1
    and-int v6, v5, v3

    return v6
.end method

.method private isSecureSavedProjectExist()Z
    .locals 9

    .prologue
    .line 2200
    const/4 v5, 0x0

    .line 2201
    .local v5, "matched":Z
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "pref_video_collage_is_project_secure_saved_key"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    .line 2203
    .local v3, "isSavedCheck":Z
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 2204
    .local v1, "file":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSecureSaveFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 2205
    const/4 v5, 0x1

    .line 2203
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2209
    .end local v1    # "file":Ljava/lang/String;
    :cond_1
    and-int v6, v5, v3

    return v6
.end method

.method private isZoomSupportType()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2213
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-nez v1, :cond_1

    .line 2216
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private launchEditor()V
    .locals 12

    .prologue
    .line 2220
    const-string v9, "VideoCollage"

    const-string v10, "launchEditor()"

    invoke-static {v9, v10}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "com.sec.android.app.clipvideo"

    invoke-static {v9, v10}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2223
    const/4 v0, 0x0

    .local v0, "duration":I
    const/4 v8, 0x0

    .local v8, "type":I
    const/4 v4, 0x0

    .local v4, "ratio":I
    const/4 v7, 0x0

    .line 2224
    .local v7, "start_orientation":I
    const/4 v1, 0x0

    .line 2225
    .local v1, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 2226
    .local v6, "rotationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    .line 2228
    .local v5, "resultPath":Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getOrientation()I
    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v7

    .line 2229
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v9

    div-int/lit16 v0, v9, 0x3e8

    .line 2230
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v8

    .line 2231
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRatio()I
    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v4

    .line 2232
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCLipListAsStringArray()Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2300(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2233
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCLipListAsRotationInfo()Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)Ljava/util/ArrayList;

    move-result-object v6

    .line 2234
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/Engine;->createVideoDirectory()Ljava/lang/String;

    move-result-object v5

    .line 2236
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 2237
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getMaxRecordingCount()I
    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v9

    mul-int/2addr v0, v9

    .line 2240
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2241
    .local v2, "intent":Landroid/content/Intent;
    const-string v9, "com.sec.android.app.clipvideo"

    const-string v10, "com.sec.android.app.clipvideo.activity.ClipVideoEditorActivity"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2243
    const-string v9, "android.intent.action.EDIT"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2245
    const-string v9, "orientation"

    invoke-virtual {v2, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2246
    const-string v9, "type"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2247
    const-string v9, "collageType"

    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v10}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v11}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCollageTypeForEditor(II)I

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2248
    const-string v9, "duration"

    invoke-virtual {v2, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2249
    const-string v9, "aspectRatio"

    invoke-virtual {v2, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2250
    const-string v9, "fileList"

    invoke-virtual {v2, v9, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2251
    const-string v9, "rotationList"

    invoke-virtual {v2, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2252
    const-string v9, "resultPath"

    invoke-virtual {v2, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2254
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/Engine;->getGpsLocation()Landroid/location/Location;

    move-result-object v3

    .line 2255
    .local v3, "location":Landroid/location/Location;
    if-eqz v3, :cond_1

    .line 2256
    const-string v9, "latitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v2, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 2257
    const-string v9, "longitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v2, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 2259
    :cond_1
    const-string v9, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v2, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2261
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/16 v10, 0x7e9

    invoke-virtual {v9, v2, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2262
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/high16 v10, 0x7f050000

    const v11, 0x7f050001

    invoke-virtual {v9, v10, v11}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 2266
    .end local v0    # "duration":I
    .end local v1    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "location":Landroid/location/Location;
    .end local v4    # "ratio":I
    .end local v5    # "resultPath":Ljava/lang/String;
    .end local v6    # "rotationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v7    # "start_orientation":I
    .end local v8    # "type":I
    :cond_2
    return-void
.end method

.method private loadProjectFile(Ljava/lang/String;)Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    .locals 11
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;,
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2269
    const/4 v9, 0x0

    .line 2271
    .local v9, "project":Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    const/4 v5, 0x0

    .line 2272
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 2274
    .local v7, "is":Ljava/io/ObjectInputStream;
    :try_start_0
    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 2275
    if-eqz v5, :cond_0

    .line 2276
    new-instance v8, Ljava/io/ObjectInputStream;

    invoke-direct {v8, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2277
    .end local v7    # "is":Ljava/io/ObjectInputStream;
    .local v8, "is":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    move-object v9, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 2289
    .end local v8    # "is":Ljava/io/ObjectInputStream;
    .restart local v7    # "is":Ljava/io/ObjectInputStream;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 2290
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V

    .line 2292
    :cond_1
    if-eqz v5, :cond_2

    .line 2293
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 2294
    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 2298
    :cond_2
    if-eqz v9, :cond_5

    .line 2299
    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCLipListAsStringArray()Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2300(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2300
    .local v3, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_5

    .line 2301
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2302
    .local v4, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2303
    .local v2, "f":Ljava/io/File;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    .line 2304
    :cond_4
    const/4 v9, 0x0

    .line 2310
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "project":Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    :cond_5
    return-object v9

    .line 2279
    .restart local v9    # "project":Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    :catch_0
    move-exception v1

    .line 2280
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 2281
    if-eqz v7, :cond_6

    .line 2282
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V

    .line 2284
    :cond_6
    if-eqz v5, :cond_0

    .line 2285
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 2279
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "is":Ljava/io/ObjectInputStream;
    .restart local v8    # "is":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v1

    move-object v7, v8

    .end local v8    # "is":Ljava/io/ObjectInputStream;
    .restart local v7    # "is":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method private loadSavedProject(Ljava/lang/String;)V
    .locals 9
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 2314
    const-string v4, "VideoCollage"

    const-string v5, "setStateToSavedProject()"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-nez v4, :cond_0

    .line 2318
    new-instance v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .line 2321
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->loadProjectFile(Ljava/lang/String;)Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .line 2324
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v4, :cond_2

    .line 2326
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v5}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v6}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRatio()I
    invoke-static {v7}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCollageTypeSettingFromProject(III)I

    move-result v5

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageType(IZ)V

    .line 2327
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v5}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeSettingFromProject(I)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageRecordingTime(I)V

    .line 2329
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 2330
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getClipListAsDurationInMs()Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2331
    .local v0, "durationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 2332
    .local v1, "durationSum":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 2333
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v1, v4

    .line 2334
    int-to-float v4, v1

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I
    invoke-static {v5}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->addProgressDivider(I)V

    .line 2335
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showLastProgressDivider()V

    .line 2332
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2339
    .end local v0    # "durationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "durationSum":I
    .end local v3    # "i":I
    :cond_1
    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCurrentState(I)V

    .line 2340
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordedLayout()V

    .line 2350
    :goto_1
    return-void

    .line 2342
    :cond_2
    new-instance v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .line 2343
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCurrentState(I)V

    .line 2344
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPreviewLayout()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 2347
    :catch_0
    move-exception v2

    .line 2348
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2347
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private onBackKeyPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2354
    const-string v1, "VideoCollage"

    const-string v2, "onBackKeyPressed()"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v1

    if-eq v1, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2357
    :cond_1
    const-string v1, "VideoCollage"

    const-string v2, "onBackKeyPressed - cannot cacncel recording or back(out camera)"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    :goto_0
    return v0

    .line 2361
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCancellable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2362
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->cancelRecording()V

    goto :goto_0

    .line 2364
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 2365
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2366
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1dd

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(I)V

    goto :goto_0

    .line 2368
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1df

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(I)V

    goto :goto_0

    .line 2372
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCAFButtonPressed()Z
    .locals 2

    .prologue
    .line 2376
    const-string v0, "VideoCollage"

    const-string v1, "onCAFButtonPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2379
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 2380
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCAFButton()V

    .line 2381
    const/4 v0, 0x1

    .line 2383
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPauseButtonPressed()Z
    .locals 4

    .prologue
    const/16 v3, 0x3e8

    const/4 v2, 0x0

    .line 2387
    const-string v0, "VideoCollage"

    const-string v1, "onPauseButtonPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2390
    const-string v0, "VideoCollage"

    const-string v1, "onPauseButtonPressed - not recording state"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    :goto_0
    return v2

    .line 2395
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    if-lt v0, v3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRemainedRecordingTime()I

    move-result v0

    if-gt v0, v3, :cond_2

    .line 2396
    :cond_1
    const-string v0, "VideoCollage"

    const-string v1, "onPauseButtonPressed - cannot pause recording"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2400
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2401
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCurrentState(I)V

    .line 2402
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->stopRecording()V

    goto :goto_0

    .line 2404
    :cond_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCurrentState(I)V

    .line 2405
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->pauseRecording()V

    goto :goto_0
.end method

.method private onResumeButtonPressed()Z
    .locals 2

    .prologue
    .line 2411
    const-string v0, "VideoCollage"

    const-string v1, "onResumeButtonPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2414
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCurrentState(I)V

    .line 2415
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->resumeRecording()V

    .line 2417
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onSwitchCameraButtonPressed()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2421
    const-string v0, "VideoCollage"

    const-string v1, "onSwitchCameraButtonPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2423
    const-string v0, "VideoCollage"

    const-string v1, "onSwitchCameraButtonPressed() return not Engine previewing state"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    :goto_0
    return v2

    .line 2427
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    if-eqz v0, :cond_1

    .line 2428
    const-string v0, "VideoCollage"

    const-string v1, "onSwitchCameraButtonPressed() return because of switching"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2432
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isEmptyRequestQueue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2433
    const-string v0, "VideoCollage"

    const-string v1, "onSwitchCameraButtonPressed() return because RequestQueue is not empty"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2437
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCameraAsync()V

    goto :goto_0
.end method

.method private onUndoButtonPressed()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2443
    const-string v0, "VideoCollage"

    const-string v1, "onUndoButtonPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    if-eqz v0, :cond_0

    .line 2446
    const-string v0, "VideoCollage"

    const-string v1, "return mIsCameraSwitching"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    :goto_0
    return v2

    .line 2450
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->doUndo()V

    .line 2453
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-lez v0, :cond_1

    .line 2454
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordedLayout()V

    goto :goto_0

    .line 2456
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCurrentState(I)V

    .line 2457
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPreviewLayout()V

    goto :goto_0
.end method

.method private pauseRecording()V
    .locals 2

    .prologue
    .line 2463
    const-string v0, "VideoCollage"

    const-string v1, "pauseRecording()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePauseVideoRecording()V

    .line 2466
    return-void
.end method

.method private prepareSwitchCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2469
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x7f

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->removeMenu(I)V

    .line 2470
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->clear()V

    .line 2472
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2473
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 2474
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraEffect(I)V

    .line 2475
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 2477
    :cond_0
    return-void
.end method

.method private removeLastProgressDivider()V
    .locals 3

    .prologue
    .line 2480
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2481
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLImage;

    .line 2482
    .local v0, "divider":Lcom/samsung/android/glview/GLImage;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 2483
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 2485
    .end local v0    # "divider":Lcom/samsung/android/glview/GLImage;
    :cond_0
    return-void
.end method

.method private requestFocus(I)V
    .locals 1
    .param p1, "focusButton"    # I

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2489
    packed-switch p1, :pswitch_data_0

    .line 2507
    :cond_0
    :goto_0
    return-void

    .line 2491
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2492
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0

    .line 2496
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2497
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0

    .line 2501
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2502
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0

    .line 2489
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 2510
    const-string v0, "VideoCollage"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCurrentState(I)V

    .line 2514
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_0

    .line 2515
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)V

    .line 2517
    :cond_0
    return-void
.end method

.method private restoreZoomValue()V
    .locals 2

    .prologue
    .line 2521
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCollageTypeZoomValue:I

    if-ltz v0, :cond_0

    .line 2522
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCollageTypeZoomValue:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    .line 2524
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCollageTypeZoomValue:I

    .line 2525
    return-void
.end method

.method private resumeRecording()V
    .locals 2

    .prologue
    .line 2528
    const-string v0, "VideoCollage"

    const-string v1, "resumeRecording()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleResumeVideoRecording()V

    .line 2531
    return-void
.end method

.method private rotateCollageTypeIcon()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2534
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 2549
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    .line 2550
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    .line 2553
    :goto_0
    return-void

    .line 2536
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    .line 2537
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    goto :goto_0

    .line 2540
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    .line 2541
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    goto :goto_0

    .line 2544
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    .line 2545
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    goto :goto_0

    .line 2534
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private saveProject()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2559
    const-string v5, "VideoCollage"

    const-string v6, "saveProject()"

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    const/4 v1, 0x0

    .line 2562
    .local v1, "fileName":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2563
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSecureSaveFileName()Ljava/lang/String;

    move-result-object v1

    .line 2567
    :goto_0
    const/4 v2, 0x0

    .line 2568
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 2570
    .local v3, "os":Ljava/io/ObjectOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 2572
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2573
    .end local v3    # "os":Ljava/io/ObjectOutputStream;
    .local v4, "os":Ljava/io/ObjectOutputStream;
    :try_start_1
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2574
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2575
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "pref_video_collage_is_project_secure_saved_key"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2580
    :goto_1
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 2581
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2586
    if-eqz v4, :cond_0

    .line 2587
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 2589
    :cond_0
    if-eqz v2, :cond_7

    .line 2590
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    move-object v3, v4

    .line 2593
    .end local v4    # "os":Ljava/io/ObjectOutputStream;
    .restart local v3    # "os":Ljava/io/ObjectOutputStream;
    :cond_1
    :goto_2
    return-void

    .line 2565
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "os":Ljava/io/ObjectOutputStream;
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSaveFileName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2577
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "os":Ljava/io/ObjectOutputStream;
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "pref_video_collage_is_project_saved_key"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 2583
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 2584
    .end local v4    # "os":Ljava/io/ObjectOutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "os":Ljava/io/ObjectOutputStream;
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2586
    if-eqz v3, :cond_4

    .line 2587
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 2589
    :cond_4
    if-eqz v2, :cond_1

    .line 2590
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    .line 2586
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v3, :cond_5

    .line 2587
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 2589
    :cond_5
    if-eqz v2, :cond_6

    .line 2590
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    throw v5

    .line 2586
    .end local v3    # "os":Ljava/io/ObjectOutputStream;
    .restart local v4    # "os":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "os":Ljava/io/ObjectOutputStream;
    .restart local v3    # "os":Ljava/io/ObjectOutputStream;
    goto :goto_4

    .line 2583
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v3    # "os":Ljava/io/ObjectOutputStream;
    .restart local v4    # "os":Ljava/io/ObjectOutputStream;
    :cond_7
    move-object v3, v4

    .end local v4    # "os":Ljava/io/ObjectOutputStream;
    .restart local v3    # "os":Ljava/io/ObjectOutputStream;
    goto :goto_2
.end method

.method private sendShowUIMessageDelayed()V
    .locals 4

    .prologue
    const/4 v1, 0x4

    .line 2596
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_0

    .line 2597
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    .line 2598
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2600
    :cond_0
    return-void
.end method

.method private setCollageType(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x4

    .line 2603
    packed-switch p1, :pswitch_data_0

    .line 2638
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 2641
    :goto_0
    return-void

    .line 2605
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2608
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2611
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2614
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x1

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2617
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x2

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2620
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x3

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2623
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x7

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2626
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2629
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2632
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2635
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/16 v1, 0x8

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2603
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private setCollageTypeIconResources()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 2645
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-nez v3, :cond_3

    .line 2646
    const/4 v0, 0x0

    .line 2648
    .local v0, "iconOrder":I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getViewOrientation()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getViewOrientation()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 2649
    :cond_0
    const/4 v0, 0x1

    .line 2654
    :goto_0
    const/4 v2, 0x0

    .local v2, "recordingCount":I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getMaxRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 2655
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getResourceIconOrder(II)I

    move-result v4

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->updateResourceIcon(II)V
    invoke-static {v3, v2, v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;II)V

    .line 2654
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2651
    .end local v2    # "recordingCount":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2658
    .restart local v2    # "recordingCount":I
    :cond_2
    const/4 v1, 0x0

    .local v1, "recCount":I
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getMaxRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2659
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getResourceIconLineOrder(II)I

    move-result v4

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->updateResourceIconLine(II)V
    invoke-static {v3, v1, v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;II)V

    .line 2658
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2664
    .end local v0    # "iconOrder":I
    .end local v1    # "recCount":I
    .end local v2    # "recordingCount":I
    :cond_3
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    packed-switch v3, :pswitch_data_0

    .line 2673
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3, v5}, Lcom/samsung/android/glview/GLImage;->setDefaultOrientation(I)V

    .line 2674
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3, v5}, Lcom/samsung/android/glview/GLImage;->setDefaultOrientation(I)V

    .line 2679
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->rotateCollageTypeIcon()V

    .line 2680
    return-void

    .line 2667
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setDefaultOrientation(I)V

    .line 2668
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setDefaultOrientation(I)V

    goto :goto_3

    .line 2664
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setCollageTypeIconTitle(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 2683
    const-string v0, ""

    .line 2685
    .local v0, "title":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 2707
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    .line 2708
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    .line 2709
    return-void

    .line 2687
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080120

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2688
    goto :goto_0

    .line 2690
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080122

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2691
    goto :goto_0

    .line 2693
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080123

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2694
    goto :goto_0

    .line 2696
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080124

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2697
    goto :goto_0

    .line 2699
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080126

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2700
    goto :goto_0

    .line 2702
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080127

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2703
    goto :goto_0

    .line 2685
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setCropArea()V
    .locals 15

    .prologue
    const v14, 0x7f0901bf

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    .line 2712
    const-string v9, "VideoCollage"

    const-string v10, "setCropArea()"

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getVideoSizeDivider()[I

    move-result-object v1

    .line 2716
    .local v1, "div":[I
    const/4 v9, 0x0

    aget v3, v1, v9

    .line 2717
    .local v3, "horizontal_div":I
    aget v7, v1, v11

    .line 2718
    .local v7, "vertical_div":I
    div-int v6, v7, v3

    .line 2720
    .local v6, "ratio":I
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 2721
    .local v5, "previewRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 2722
    .local v4, "origin_x":F
    const/4 v8, 0x0

    .line 2723
    .local v8, "width":F
    const/4 v2, 0x0

    .line 2725
    .local v2, "height":F
    if-eqz v5, :cond_1

    .line 2726
    iget v9, v5, Landroid/graphics/Rect;->left:I

    int-to-float v4, v9

    .line 2727
    cmpg-float v9, v4, v13

    if-gez v9, :cond_0

    .line 2728
    const/4 v4, 0x0

    .line 2730
    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v8, v9

    .line 2731
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v2, v9

    .line 2732
    invoke-static {v14}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_1

    .line 2733
    invoke-static {v14}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    .line 2737
    :cond_1
    int-to-float v9, v6

    div-float v9, v2, v9

    sub-float v0, v2, v9

    .line 2739
    .local v0, "crop_height":F
    if-eq v6, v11, :cond_2

    .line 2740
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

    div-float v10, v0, v12

    sub-float v10, v2, v10

    div-float v11, v0, v12

    invoke-virtual {v9, v4, v10, v8, v11}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    .line 2741
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

    div-float v10, v0, v12

    invoke-virtual {v9, v4, v13, v8, v10}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    .line 2743
    :cond_2
    return-void
.end method

.method private setCurrentState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1452
    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mStateString:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mState:I

    .line 1454
    return-void
.end method

.method private setDefaultZoomValue()V
    .locals 2

    .prologue
    .line 2747
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCollageTypeZoomValue:I

    .line 2748
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    .line 2749
    return-void
.end method

.method private setMaxRecordingCount(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x1

    .line 2752
    packed-switch p1, :pswitch_data_0

    .line 2777
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setMaxRecordingCount(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 2780
    :goto_0
    return-void

    .line 2756
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setMaxRecordingCount(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2761
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x2

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setMaxRecordingCount(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2768
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x3

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setMaxRecordingCount(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2773
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x4

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setMaxRecordingCount(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2752
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLProgressBar;->setProgress(I)V

    .line 1490
    return-void
.end method

.method private setProjectType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 2783
    packed-switch p1, :pswitch_data_0

    .line 2809
    :goto_0
    return-void

    .line 2787
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setProjectType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2792
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x1

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setProjectType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2803
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x2

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setProjectType(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2783
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private setRatio(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2812
    packed-switch p1, :pswitch_data_0

    .line 2841
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRatio(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 2844
    :goto_0
    return-void

    .line 2816
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRatio(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2820
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRatio(I)V
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2823
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRatio(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2830
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRatio(I)V
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2837
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRatio(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2812
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private setRecIndicatorIcon(I)V
    .locals 2
    .param p1, "projectType"    # I

    .prologue
    .line 2847
    packed-switch p1, :pswitch_data_0

    .line 2858
    :goto_0
    return-void

    .line 2850
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f0201cd

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0

    .line 2853
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f0201d8

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0

    .line 2847
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setRecordingTime(I)V
    .locals 2
    .param p1, "recordingTime"    # I

    .prologue
    const/16 v1, 0x1770

    .line 2861
    packed-switch p1, :pswitch_data_0

    .line 2876
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRecordingTime(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 2879
    :goto_0
    return-void

    .line 2863
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/16 v1, 0xbb8

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRecordingTime(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2866
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRecordingTime(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2869
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/16 v1, 0x2328

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRecordingTime(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2872
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/16 v1, 0x3a98

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRecordingTime(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    .line 2861
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setRecordingTimeByType()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2882
    const/4 v2, 0x0

    .line 2883
    .local v2, "recordingTime":I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    .line 2884
    .local v1, "projectType":I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageRecordingTime()I

    move-result v0

    .line 2886
    .local v0, "currTime":I
    if-nez v1, :cond_1

    .line 2887
    if-nez v0, :cond_0

    .line 2888
    const/4 v2, 0x1

    .line 2889
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedBackupRecordingTime:Z

    .line 2890
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeBackup:I

    .line 2908
    :goto_0
    if-eq v0, v2, :cond_4

    .line 2909
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageRecordingTime(I)V

    .line 2913
    :goto_1
    return-void

    .line 2892
    :cond_0
    move v2, v0

    goto :goto_0

    .line 2895
    :cond_1
    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedBackupRecordingTime:Z

    if-eqz v3, :cond_3

    .line 2896
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    if-le v3, v5, :cond_2

    .line 2897
    move v2, v0

    .line 2901
    :goto_2
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedBackupRecordingTime:Z

    .line 2905
    :goto_3
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    goto :goto_0

    .line 2899
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeBackup:I

    goto :goto_2

    .line 2903
    :cond_3
    move v2, v0

    goto :goto_3

    .line 2911
    :cond_4
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingTime(I)V

    goto :goto_1
.end method

.method private showCAFButton()V
    .locals 2

    .prologue
    .line 2916
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2917
    return-void
.end method

.method private showCollageTypeIcon()V
    .locals 2

    .prologue
    .line 2920
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2921
    return-void
.end method

.method private showCollageTypeIconLine()V
    .locals 2

    .prologue
    .line 2924
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2925
    return-void
.end method

.method private showCropArea()V
    .locals 2

    .prologue
    .line 2928
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2929
    return-void
.end method

.method private showEffectButton()V
    .locals 3

    .prologue
    .line 2932
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2933
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectButton:Lcom/sec/android/app/camera/widget/gl/Item;

    sget v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->EFFECT_BUTTON_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->EFFECT_BUTTON_POS_Y_FRONT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/Item;->moveBaseLayoutAbsolute(FF)V

    .line 2937
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(I)V

    .line 2938
    return-void

    .line 2935
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectButton:Lcom/sec/android/app/camera/widget/gl/Item;

    sget v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->EFFECT_BUTTON_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->EFFECT_BUTTON_POS_Y_REAR:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/Item;->moveBaseLayoutAbsolute(FF)V

    goto :goto_0
.end method

.method private showFlashButton()V
    .locals 2

    .prologue
    .line 2941
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(I)V

    .line 2942
    return-void
.end method

.method private showIndicatorLayout()V
    .locals 2

    .prologue
    .line 2945
    const-string v0, "VideoCollage"

    const-string v1, "showIndicatorLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 2948
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecIndicatorIcon(I)V

    .line 2949
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecTimeGroup()V

    .line 2951
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2952
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showProgress()V

    .line 2954
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2955
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showCollageTypeIcon()V

    .line 2960
    :cond_1
    :goto_0
    return-void

    .line 2957
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCollageTypeIcon()V

    goto :goto_0
.end method

.method private showLastProgressDivider()V
    .locals 2

    .prologue
    .line 2963
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLastDivider:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2964
    return-void
.end method

.method private showLowDeviceStorageToast()V
    .locals 3

    .prologue
    .line 2968
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2969
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 2970
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2971
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    .line 2973
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0802e3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    .line 2974
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2976
    :cond_2
    return-void
.end method

.method private showPauseButton()V
    .locals 2

    .prologue
    .line 2979
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2980
    return-void
.end method

.method private showPauseIndicatorIcon()V
    .locals 2

    .prologue
    .line 2983
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2984
    return-void
.end method

.method private showPauseLayout()V
    .locals 2

    .prologue
    .line 2987
    const-string v0, "VideoCollage"

    const-string v1, "showPauseLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseButton()V

    .line 2990
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showResumeButton()V

    .line 2991
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecIndicatorIcon()V

    .line 2992
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPauseIndicatorIcon()V

    .line 2993
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->requestFocus(I)V

    .line 2994
    return-void
.end method

.method private showPreviewLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2997
    const-string v0, "VideoCollage"

    const-string v1, "showPreviewLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordingLayout()V

    .line 3000
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordedLayout()V

    .line 3002
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 3003
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x5c

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 3004
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 3006
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3007
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 3010
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_1

    .line 3011
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setViewOrientation(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 3013
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCropArea()V

    .line 3014
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    .line 3015
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    .line 3016
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseIndicatorIcon()V

    .line 3018
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3019
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageTypeIconResources()V

    .line 3020
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageTypeIconTitle(I)V

    .line 3021
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCollageTypeIcon(I)V

    .line 3022
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showCollageTypeIconLine()V

    .line 3026
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateIndicatorLayout()V

    .line 3027
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    .line 3028
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordingButton()V

    .line 3030
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->requestFocus(I)V

    .line 3032
    :cond_1
    return-void

    .line 3024
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCollageTypeIcon()V

    goto :goto_0
.end method

.method private showProgress()V
    .locals 2

    .prologue
    .line 3035
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 3036
    return-void
.end method

.method private showRecTimeGroup()V
    .locals 2

    .prologue
    .line 3039
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 3040
    return-void
.end method

.method private showRecordedLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3043
    const-string v0, "VideoCollage"

    const-string v1, "showRecordedLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 3046
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x1f

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 3048
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x1c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 3050
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordingLayout()V

    .line 3052
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3053
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 3056
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_1

    .line 3057
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCropArea()V

    .line 3058
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    .line 3059
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecIndicatorIcon()V

    .line 3061
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3086
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    .line 3088
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showUndoButton()V

    .line 3089
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showSwitchCameraButton()V

    .line 3090
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordingButton()V

    .line 3092
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->requestFocus(I)V

    .line 3094
    :cond_1
    return-void

    .line 3063
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    .line 3064
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showEffectButton()V

    .line 3065
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3066
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showFlashButton()V

    .line 3070
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecIndicatorIcon()V

    .line 3071
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPauseIndicatorIcon()V

    goto :goto_0

    .line 3068
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideFlashButton()V

    goto :goto_1

    .line 3074
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    .line 3075
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCollageTypeIcon(I)V

    .line 3076
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showEffectButton()V

    .line 3077
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3078
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showFlashButton()V

    .line 3082
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showCollageTypeIconLine()V

    .line 3083
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseIndicatorIcon()V

    goto :goto_0

    .line 3080
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideFlashButton()V

    goto :goto_2

    .line 3061
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showRecordingButton()V
    .locals 2

    .prologue
    .line 3097
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3098
    return-void
.end method

.method private showRecordingLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3101
    const-string v0, "VideoCollage"

    const-string v1, "showRecordingLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x181

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 3104
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x40

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 3106
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3107
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 3110
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_4

    .line 3111
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideUndoButton()V

    .line 3112
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideSwitchCameraButton()V

    .line 3113
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideEffectButton()V

    .line 3114
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideFlashButton()V

    .line 3115
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCollageTypeIconLine()V

    .line 3117
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-ge v0, v2, :cond_5

    .line 3118
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->startHideAnimation(Lcom/samsung/android/glview/GLButton;)V

    .line 3119
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->startShowAnimation(Lcom/samsung/android/glview/GLButton;)V

    .line 3124
    :goto_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->requestFocus(I)V

    .line 3126
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 3127
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedDrawingProgressDivider:Z

    .line 3128
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->addProgressDivider(I)V

    .line 3132
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 3133
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-nez v0, :cond_2

    .line 3134
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageTypeIconResources()V

    .line 3136
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCollageTypeIcon(I)V

    .line 3139
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    .line 3140
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseIndicatorIcon()V

    .line 3142
    :cond_4
    return-void

    .line 3121
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordingButton()V

    .line 3122
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPauseButton()V

    goto :goto_0
.end method

.method private showResumeButton()V
    .locals 2

    .prologue
    .line 3145
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3146
    return-void
.end method

.method private showResumeLayout()V
    .locals 2

    .prologue
    .line 3149
    const-string v0, "VideoCollage"

    const-string v1, "showResumeLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideResumeButton()V

    .line 3152
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPauseButton()V

    .line 3153
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseIndicatorIcon()V

    .line 3154
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->requestFocus(I)V

    .line 3155
    return-void
.end method

.method private showUndoButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3158
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3159
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 3160
    return-void
.end method

.method private showView()V
    .locals 2

    .prologue
    .line 3163
    const-string v0, "VideoCollage"

    const-string v1, "showView()"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 3166
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordedLayout()V

    .line 3172
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    .line 3173
    return-void

    .line 3167
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_2

    .line 3168
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPreviewLayout()V

    goto :goto_0

    .line 3169
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3170
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    goto :goto_0
.end method

.method private startHideAnimation(Lcom/samsung/android/glview/GLButton;)V
    .locals 12
    .param p1, "button"    # Lcom/samsung/android/glview/GLButton;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v8, 0x23a

    const/4 v9, 0x0

    const/4 v0, 0x0

    .line 3176
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3178
    .local v10, "hideAnimation":Landroid/view/animation/AnimationSet;
    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v1, v0

    move v2, v0

    move v3, v0

    move-object v4, p1

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3179
    new-instance v1, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-static {v8, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3180
    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v2, v11

    move v3, v0

    move v4, v11

    move v5, v0

    move-object v6, p1

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3181
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 3182
    const/4 v0, 0x1

    invoke-virtual {p1, v10, v0}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 3183
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 3184
    return-void
.end method

.method private startShowAnimation(Lcom/samsung/android/glview/GLButton;)V
    .locals 13
    .param p1, "button"    # Lcom/samsung/android/glview/GLButton;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const v11, 0x3f35c28f    # 0.71f

    const/16 v8, 0x23a

    const/4 v9, 0x0

    const/4 v0, 0x0

    .line 3187
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3189
    .local v10, "showAnimation":Landroid/view/animation/AnimationSet;
    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v1, v0

    move v2, v0

    move v3, v0

    move-object v4, p1

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3190
    new-instance v0, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-static {v8, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3191
    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v2, v11

    move v3, v12

    move v4, v11

    move v5, v12

    move-object v6, p1

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3192
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 3193
    invoke-virtual {p1, v10}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3194
    invoke-virtual {p1, v9}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 3195
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 3196
    return-void
.end method

.method private startTimer()V
    .locals 2

    .prologue
    .line 3199
    const-string v0, "VideoCollage"

    const-string v1, "startTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecIndicatorIcon()V

    .line 3202
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateProgress()V

    .line 3203
    return-void
.end method

.method private stopTimer()V
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    .line 3206
    const-string v0, "VideoCollage"

    const-string v1, "stopTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3208
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_0

    .line 3209
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    .line 3210
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    .line 3214
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    .line 3215
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3216
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRemainedRecordingTime()I

    move-result v0

    if-gt v0, v2, :cond_2

    .line 3217
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    .line 3218
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    .line 3223
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecIndicatorIcon()V

    .line 3224
    return-void

    .line 3220
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3227
    const-string v5, "VideoCollage"

    const-string v6, "switchCamera()"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    iput-boolean v10, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    .line 3231
    const/4 v1, 0x0

    .local v1, "cameraResolution":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3232
    .local v0, "camcorderResolution":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3233
    .local v2, "collage_ratio":I
    const/4 v3, 0x0

    .line 3234
    .local v3, "currentTimerValue":I
    const/4 v4, 0x0

    .line 3236
    .local v4, "currentVoiceCommandValue":I
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 3238
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCameraSwitched()Z

    move-result v5

    if-nez v5, :cond_6

    .line 3240
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRatio()I
    invoke-static {v5}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    .line 3241
    if-nez v2, :cond_4

    .line 3242
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    .line 3243
    :goto_0
    const-string v0, "960x960"

    .line 3249
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v3

    .line 3250
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v4

    .line 3252
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->toggleSwitchCameraIdSetting()V

    .line 3253
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCameraResolution:I

    .line 3254
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCamcorderResolution:I

    .line 3255
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedTimerValue:I

    .line 3256
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedZoomValue:I

    .line 3257
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVoiceCommandValue:I

    .line 3258
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVideoCollageType:I

    .line 3260
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    .line 3261
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(I)Z

    .line 3262
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(I)V

    .line 3263
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    .line 3264
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    .line 3265
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v6}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I
    invoke-static {v7}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRatio()I
    invoke-static {v8}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v8

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCollageTypeSettingFromProject(III)I

    move-result v6

    invoke-interface {v5, v6, v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageType(IZ)V

    .line 3266
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->toggleSwitchCameraIdSetting()V

    .line 3289
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->switchVideoCollageCamera()V

    .line 3291
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v5

    if-ne v5, v10, :cond_b

    .line 3292
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startVoiceRecognizer()V

    .line 3298
    :goto_3
    const-string v5, "VideoCollage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switched Camera() type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3300
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v5, :cond_2

    .line 3301
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessage(I)Z

    .line 3304
    :cond_2
    iput-boolean v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    .line 3305
    return-void

    .line 3242
    :cond_3
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    goto/16 :goto_0

    .line 3244
    :cond_4
    if-ne v2, v10, :cond_0

    .line 3245
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    .line 3246
    :goto_4
    const-string v0, "960x720"

    goto/16 :goto_1

    .line 3245
    :cond_5
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    goto :goto_4

    .line 3271
    :cond_6
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCameraResolution:I

    if-ltz v5, :cond_7

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCamcorderResolution:I

    if-ltz v5, :cond_7

    .line 3272
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCameraResolution:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    .line 3273
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCamcorderResolution:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(I)Z

    .line 3275
    :cond_7
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedTimerValue:I

    if-ltz v5, :cond_8

    .line 3276
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedTimerValue:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(I)V

    .line 3278
    :cond_8
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedZoomValue:I

    if-ltz v5, :cond_9

    .line 3279
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedZoomValue:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    .line 3281
    :cond_9
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVoiceCommandValue:I

    if-ltz v5, :cond_a

    .line 3282
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVoiceCommandValue:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    .line 3284
    :cond_a
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVideoCollageType:I

    if-ltz v5, :cond_1

    .line 3285
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVideoCollageType:I

    invoke-interface {v5, v6, v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageType(IZ)V

    goto/16 :goto_2

    .line 3294
    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopVoiceRecognizer()V

    goto/16 :goto_3
.end method

.method private switchCameraAsync()V
    .locals 2

    .prologue
    .line 3309
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchingCameraThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 3326
    :goto_0
    return-void

    .line 3313
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->prepareSwitchCamera()V

    .line 3315
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$3;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchingCameraThread:Ljava/lang/Thread;

    .line 3323
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchingCameraThread:Ljava/lang/Thread;

    const-string v1, "SwitchingCameraThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 3324
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchingCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private switchCameraSync()V
    .locals 0

    .prologue
    .line 3329
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->prepareSwitchCamera()V

    .line 3330
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCamera()V

    .line 3331
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->handleSwitchCameraCompleted()V

    .line 3332
    return-void
.end method

.method private toggleSwitchCameraIdSetting()V
    .locals 2

    .prologue
    .line 3335
    const-string v0, "VideoCollage"

    const-string v1, "toggleSwitchCameraIdSetting()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3337
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraId(I)V

    .line 3341
    :cond_0
    :goto_0
    return-void

    .line 3338
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3339
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraId(I)V

    goto :goto_0
.end method

.method private updateCollageTypeIcon(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 3344
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getResourceIcon(I)I
    invoke-static {v1, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 3345
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getResourceIconLine(I)I
    invoke-static {v1, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 3346
    return-void
.end method

.method private updateCropArea()V
    .locals 1

    .prologue
    .line 3349
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCropAreaEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3350
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCropArea()V

    .line 3351
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showCropArea()V

    .line 3355
    :goto_0
    return-void

    .line 3353
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCropArea()V

    goto :goto_0
.end method

.method private updateIndicatorLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3358
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateIndicatorRecTimePosition()V

    .line 3360
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3361
    :cond_0
    sget v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_WIDTH:I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 3362
    .local v0, "offset":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 3363
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 3364
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 3370
    .end local v0    # "offset":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    .line 3371
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    .line 3372
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    .line 3373
    return-void

    .line 3366
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    .line 3367
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    .line 3368
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    goto :goto_0
.end method

.method private updateIndicatorRecTimePosition()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 3378
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_SIZE:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v3

    div-float v2, v3, v8

    .line 3379
    .local v2, "strlen":F
    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_POS_X:I

    int-to-float v3, v3

    add-float v1, v3, v2

    .line 3380
    .local v1, "margin":F
    sget v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    int-to-float v3, v3

    div-float/2addr v3, v8

    sub-float v0, v1, v3

    .line 3382
    .local v0, "diff":F
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v8

    sub-float/2addr v5, v0

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y:I

    sub-int/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_HEIGHT:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 3384
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x2

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v8

    add-float/2addr v5, v0

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 3385
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x1

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y_270:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    sub-float/2addr v6, v0

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 3387
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x3

    sget v5, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y_270:I

    sub-int/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_HEIGHT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FULL_SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    add-float/2addr v6, v0

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 3389
    return-void
.end method

.method private updateProgress()V
    .locals 6

    .prologue
    .line 3392
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentProgress()I

    move-result v0

    .line 3394
    .local v0, "progress":I
    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProgress() - progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3397
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedDrawingProgressDivider:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProgress()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 3398
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedDrawingProgressDivider:Z

    .line 3399
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showLastProgressDivider()V

    .line 3401
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    .line 3404
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v1, :cond_2

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_2

    .line 3405
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v2, 0x3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3407
    :cond_2
    return-void
.end method

.method private updateRecIndicatorIcon()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 3410
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_0

    .line 3411
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    .line 3414
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 3415
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 3416
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 3422
    :cond_1
    :goto_0
    return-void

    .line 3418
    :cond_2
    const-string v0, "VideoCollage"

    const-string v1, "updateRecIndicatorIcon - visible"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3419
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateRecordingTime(J)V
    .locals 7
    .param p1, "currentTimeMs"    # J

    .prologue
    .line 3425
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentRecordingTime()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordedTimeInMs()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, p1

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 3437
    :goto_0
    return-void

    .line 3428
    :cond_0
    long-to-int v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    .line 3430
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    .line 3431
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecIndicatorIcon()V

    .line 3433
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_1

    .line 3434
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3436
    :cond_1
    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRecordingTime() - getCurrentRecordingTime():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentRecordingTime()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateRecordingTimeText(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeText"    # Ljava/lang/String;

    .prologue
    .line 3440
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 3441
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 3443
    :cond_0
    return-void
.end method

.method private waitForSwitchingCameraThread()V
    .locals 1

    .prologue
    .line 3448
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchingCameraThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 3449
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchingCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3455
    :cond_0
    :goto_0
    return-void

    .line 3451
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected cancelRecording()V
    .locals 2

    .prologue
    .line 1138
    const-string v0, "VideoCollage"

    const-string v1, "cancelRecording()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 1140
    const-string v0, "VideoCollage"

    const-string v1, "return cancelRecording - record is already stopping"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :goto_0
    return-void

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 1146
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1147
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelVideoRecordingSync()V

    .line 1149
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->stopRecordingTickTimer()V

    goto :goto_0
.end method

.method public getMaxFileSizeOfImage()J
    .locals 2

    .prologue
    .line 360
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayRecordingStartSound()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 369
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 370
    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isClipStartSoundEnable getCurrentRecordingCount - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-lez v1, :cond_0

    .line 372
    const/4 v0, 0x0

    .line 375
    :cond_0
    return v0
.end method

.method public isPlayRecordingStopSound()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsMaxDurationReached:Z

    if-nez v0, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 382
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isSnapShotAvailable()Z
    .locals 1

    .prologue
    .line 1154
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomAvailable()Z
    .locals 1

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isZoomSupportType()Z

    move-result v0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 7
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/16 v6, 0x83

    const/16 v5, 0x12

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 392
    const-string v0, "VideoCollage"

    const-string v1, "onActivate()"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->registerRecordingController(Lcom/sec/android/app/camera/interfaces/Engine;)V

    .line 396
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isSecureSavedProjectExist()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSecureSaveFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->loadSavedProject(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_video_collage_is_project_secure_saved_key"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 425
    :goto_0
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v6, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x84

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 431
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isZoomSupportType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setDefaultZoomValue()V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageResolution()V

    .line 438
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageTypeIconResources()V

    .line 441
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/MenuManager;->removeMenu(I)V

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectProcessorListener(Lcom/sec/android/app/camera/interfaces/Engine$EffectProcessorListener;)V

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    .line 453
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFirstCameraId:I

    .line 457
    :cond_1
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mTickInterval:I

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 465
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v0

    if-ne v0, v3, :cond_9

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 472
    :goto_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFirstCameraId:I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    .line 481
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v1

    invoke-interface {v0, v6, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 484
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->checkStorageLow(I)I

    move-result v0

    if-ne v0, v3, :cond_b

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 486
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showLowDeviceStorageToast()V

    .line 493
    :goto_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showView()V

    .line 494
    return-void

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->initializeProject(I)V

    .line 403
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCurrentState(I)V

    goto/16 :goto_0

    .line 404
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isSavedProjectExist()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 405
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSaveFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->loadSavedProject(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_video_collage_is_project_saved_key"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 408
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->initializeProject(I)V

    .line 409
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCurrentState(I)V

    goto/16 :goto_0

    .line 413
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->initializeProject(I)V

    .line 414
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCurrentState(I)V

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 417
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardSaved()V

    goto/16 :goto_0

    .line 418
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isSavedProjectExist()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1de

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(I)V

    goto/16 :goto_0

    .line 421
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardSaved()V

    goto/16 :goto_0

    .line 462
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto/16 :goto_1

    .line 468
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto/16 :goto_2

    .line 476
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_3

    .line 487
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isRecordingRestricted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto/16 :goto_4

    .line 490
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto/16 :goto_4

    .line 473
    nop

    :array_0
    .array-data 4
        0x7f
        0xc
        0x84
        0x83
    .end array-data

    .line 476
    :array_1
    .array-data 4
        0x7f
        0xc
        0x84
        0x83
        0x3
    .end array-data
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 534
    :cond_0
    :goto_0
    return v3

    .line 500
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 501
    const-string v0, "VideoCollage"

    const-string v1, "Wrong state for touchAF"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isStopPreviewPending()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    const-string v0, "VideoCollage"

    const-string v1, "Preview is not started"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 510
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_TOUCH_AF:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusArea(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showCAFButton()V

    goto :goto_0

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 539
    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 544
    return-void
.end method

.method public onCameraSettingChanged(II)V
    .locals 7
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 549
    const-string v2, "VideoCollage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCameraSettingsChanged: menuid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", modeid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    packed-switch p1, :pswitch_data_0

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 554
    :pswitch_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    if-nez v2, :cond_0

    .line 558
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    .line 560
    .local v1, "prevProjcetType":I
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProjectType(I)V

    .line 561
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingTimeByType()V

    .line 562
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageType(I)V

    .line 563
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRatio(I)V

    .line 564
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setMaxRecordingCount(I)V

    .line 566
    const/4 v0, 0x0

    .line 568
    .local v0, "isFpsChange":Z
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 570
    :cond_2
    const/4 v0, 0x1

    .line 573
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 574
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 579
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v2

    if-ne v2, v5, :cond_6

    .line 580
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 585
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isZoomSupportType()Z

    move-result v2

    if-nez v2, :cond_7

    .line 586
    if-eqz v0, :cond_4

    .line 587
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setDefaultZoomValue()V

    .line 593
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v3, 0x83

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 596
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageResolution()V

    .line 597
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolutionChanged()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCameraPreviewAspectRatio()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 598
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 605
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    goto/16 :goto_0

    .line 576
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v6}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto :goto_1

    .line 582
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v6}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto :goto_2

    .line 590
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->restoreZoomValue()V

    goto :goto_3

    .line 606
    :cond_8
    if-eqz v0, :cond_9

    .line 607
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopPreview()V

    .line 608
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartPreview()V

    .line 609
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    goto/16 :goto_0

    .line 611
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v2, :cond_0

    .line 612
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 617
    .end local v0    # "isFpsChange":Z
    .end local v1    # "prevProjcetType":I
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedBackupRecordingTime:Z

    if-eqz v2, :cond_a

    .line 618
    const-string v2, "VideoCollage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCameraSettingsChanged: mMaxRecordingTimeChangeCnt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    .line 622
    :cond_a
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingTime(I)V

    .line 623
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 551
    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCancelDialog(I)V
    .locals 3
    .param p1, "keyId"    # I

    .prologue
    .line 634
    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancelDialog keyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/16 v0, 0x1e3

    if-ne p1, v0, :cond_0

    .line 636
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardRecording()V

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->dismissCameraDialog(I)V

    .line 640
    return-void
.end method

.method public onChangeShootingModeParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 8
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0x5dc0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 644
    const-string v1, "VideoCollage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeShootingModeParameters : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v0

    if-ne v0, v3, :cond_3

    const-string v0, "RECORDING"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", VideoCollageType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 648
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 652
    :cond_0
    const v0, 0x1d4c0

    const v1, 0x1d4c0

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 654
    const/16 v0, 0x170e

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Lcom/sec/android/app/camera/util/CameraParameters;->getRecordingMotionFPS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_1

    .line 658
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getCameraHDRString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :cond_1
    invoke-virtual {p1, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRecordingHint(Z)V

    .line 661
    const-string v0, "effectrecording-hint"

    invoke-virtual {p1, v0, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 662
    const-string v0, "phase-af"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :cond_2
    :goto_1
    return-void

    .line 644
    :cond_3
    const-string v0, "PREVIEW"

    goto :goto_0

    .line 664
    :cond_4
    invoke-virtual {p1, v6, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 666
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_5

    .line 667
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getCameraHDRString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_5
    invoke-virtual {p1, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRecordingHint(Z)V

    .line 670
    const-string v0, "effectrecording-hint"

    invoke-virtual {p1, v0, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 671
    const-string v0, "phase-af"

    const-string v1, "on"

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 674
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    if-eq v0, v3, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    if-eq v0, v5, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    if-ne v0, v7, :cond_8

    .line 678
    :cond_7
    const/16 v0, 0x3a98

    const/16 v1, 0x7530

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 679
    const-string v0, "effect_hint"

    invoke-virtual {p1, v0, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 687
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 688
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Lcom/sec/android/app/camera/util/CameraParameters;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 682
    :cond_8
    const/16 v0, 0x2710

    invoke-virtual {p1, v0, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 683
    const-string v0, "effect_hint"

    invoke-virtual {p1, v0, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 696
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x83

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x84

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 701
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x82

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 713
    :goto_0
    return v0

    .line 702
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 703
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onPauseButtonPressed()Z

    move-result v0

    goto :goto_0

    .line 704
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 705
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onResumeButtonPressed()Z

    move-result v0

    goto :goto_0

    .line 706
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 707
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onUndoButtonPressed()Z

    move-result v0

    goto :goto_0

    .line 708
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 709
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onCAFButtonPressed()Z

    move-result v0

    goto :goto_0

    .line 710
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 711
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onSwitchCameraButtonPressed()Z

    move-result v0

    goto :goto_0

    .line 713
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 0
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 718
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 719
    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 721
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->initializeView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V

    .line 722
    return-void
.end method

.method public onEffectProcessorPrepared()V
    .locals 2

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getEffectProcessorParameter()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setProcessorParameter(Ljava/lang/String;)V

    .line 729
    :cond_0
    return-void
.end method

.method public onEngineStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 733
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessage(I)Z

    .line 738
    :cond_0
    return-void
.end method

.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 1
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 742
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    .line 745
    :cond_0
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 749
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 754
    const-string v1, "VideoCollage"

    const-string v2, "onInactivate()"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->waitForSwitchingCameraThread()V

    .line 758
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-lez v1, :cond_0

    .line 760
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v1

    if-nez v1, :cond_0

    .line 761
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->saveProject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v1

    if-eq v1, v5, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v1

    if-eq v1, v6, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v1

    if-ne v1, v7, :cond_2

    .line 769
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->cancelRecording()V

    .line 772
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 774
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCameraSwitched()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 775
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCameraSync()V

    .line 777
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->reset()V

    .line 779
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->unregisterRecordingController()V

    .line 781
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideView()V

    .line 783
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isZoomSupportType()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 784
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->restoreZoomValue()V

    .line 786
    :cond_7
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCollageTypeZoomValue:I

    .line 787
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenCamcorderResolution()V

    .line 790
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0x83

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 791
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0x84

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 794
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 797
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v1

    if-nez v1, :cond_8

    .line 798
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x83

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 802
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V

    .line 805
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x12

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->removeMenu(I)V

    .line 806
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 807
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 808
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .line 810
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectProcessorListener(Lcom/sec/android/app/camera/interfaces/Engine$EffectProcessorListener;)V

    .line 811
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 812
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    .line 815
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 816
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 819
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->clearSideQuickSetting()V

    .line 822
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedDrawingProgressDivider:Z

    .line 823
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    .line 824
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsTimerCounting:Z

    .line 826
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    .line 827
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    .line 828
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    .line 829
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    .line 831
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->clear()V

    .line 832
    return-void

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 837
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 842
    sparse-switch p1, :sswitch_data_0

    .line 853
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 844
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onBackKeyPressed()Z

    move-result v0

    goto :goto_0

    .line 846
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 847
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onPauseButtonPressed()Z

    move-result v0

    goto :goto_0

    .line 848
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 849
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onResumeButtonPressed()Z

    move-result v0

    goto :goto_0

    .line 842
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMediaRecorderPreparedEvent(Lcom/sec/android/secmediarecorder/SecMediaRecorder;)V
    .locals 7
    .param p1, "mediaRecorder"    # Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 858
    const-string v2, "VideoCollage"

    const-string v3, "onMediaRecorderPrepared()"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getMaxRecordingTimeInMs()I

    move-result v2

    add-int/lit8 v2, v2, 0x46

    invoke-virtual {p1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 861
    const/16 v2, 0x32

    invoke-virtual {p1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setDurationInterval(I)V

    .line 862
    const-wide/32 v2, 0x7d000

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    .line 864
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-nez v2, :cond_0

    .line 866
    invoke-virtual {p1, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setRecordingMode(I)V

    .line 867
    const v2, 0x2dc6c0

    invoke-virtual {p1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncodingBitRate(I)V

    .line 876
    :goto_0
    return-void

    .line 869
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getVideoSizeDivider()[I

    move-result-object v0

    .line 870
    .local v0, "div":[I
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    .line 872
    .local v1, "resolutionId":I
    invoke-virtual {p1, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setRecordingMode(I)V

    .line 873
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getVideoBitRateFromProfile()I

    move-result v2

    aget v3, v0, v5

    aget v4, v0, v6

    mul-int/2addr v3, v4

    div-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoEncodingBitRate(I)V

    .line 874
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v2

    aget v3, v0, v5

    div-int/2addr v2, v3

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v3

    aget v4, v0, v6

    div-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setVideoSize(II)V

    goto :goto_0
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 880
    const/4 v0, 0x0

    return v0
.end method

.method public onNegativeButtonClicked(I)V
    .locals 3
    .param p1, "keyId"    # I

    .prologue
    .line 885
    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNegativeButtonClicked keyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const/16 v0, 0x1dd

    if-ne p1, v0, :cond_1

    .line 887
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardRecording()V

    .line 892
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->dismissCameraDialog(I)V

    .line 893
    return-void

    .line 888
    :cond_1
    const/16 v0, 0x1de

    if-ne p1, v0, :cond_0

    .line 889
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardSaved()V

    goto :goto_0
.end method

.method public onNewVideoLoggingPrepared(Ljava/util/ArrayList;)V
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
    .line 897
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    const-string v0, "Z029"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectNameForLogging(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    :goto_0
    return-void

    .line 900
    :cond_0
    const-string v0, "Z028"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectNameForLogging(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 907
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-nez v0, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    if-eq v0, p1, :cond_2

    .line 912
    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    .line 916
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateIndicatorLayout()V

    .line 917
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCropArea()V

    .line 919
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_4

    .line 920
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setViewOrientation(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    .line 921
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageTypeIconResources()V

    .line 922
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCollageTypeIcon(I)V

    .line 927
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 929
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideIndicatorLayout()V

    goto :goto_0

    .line 924
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->rotateCollageTypeIcon()V

    goto :goto_1

    .line 931
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    goto :goto_0
.end method

.method public onPositiveButtonClicked(I)V
    .locals 3
    .param p1, "keyId"    # I

    .prologue
    .line 938
    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPositiveButtonClicked keyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const/16 v0, 0x1df

    if-ne p1, v0, :cond_1

    .line 940
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardRecording()V

    .line 958
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->dismissCameraDialog(I)V

    .line 959
    return-void

    .line 941
    :cond_1
    const/16 v0, 0x1dd

    if-ne p1, v0, :cond_3

    .line 944
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCameraSwitched()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 945
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCameraSync()V

    .line 947
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultShootingModeByCurrentCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleShootingModeChanged(I)V

    goto :goto_0

    .line 949
    :cond_3
    const/16 v0, 0x1de

    if-ne p1, v0, :cond_4

    .line 950
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSaveFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->loadSavedProject(Ljava/lang/String;)V

    .line 951
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_video_collage_is_project_saved_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 952
    :cond_4
    const/16 v0, 0x1e3

    if-ne p1, v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onRecordKeyReleased()Z
    .locals 5

    .prologue
    const/16 v4, 0x84

    const/16 v3, 0x83

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 963
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1003
    :goto_0
    return v0

    .line 967
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    if-eqz v2, :cond_1

    .line 968
    const-string v0, "VideoCollage"

    const-string v2, "return mIsCameraSwitching"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 969
    goto :goto_0

    .line 972
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->checkStorageLow(I)I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 973
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    .line 974
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 976
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showLowDeviceStorageToast()V

    move v0, v1

    .line 977
    goto :goto_0

    .line 980
    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    if-eqz v2, :cond_4

    .line 981
    const-string v1, "VideoCollage"

    const-string v2, "return mIsLayoutUpdateNeeded"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 985
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1dd

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1de

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1df

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 988
    :cond_5
    const-string v0, "VideoCollage"

    const-string v2, "return isCameraDialogVisible.."

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 989
    goto :goto_0

    .line 992
    :cond_6
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCurrentState(I)V

    .line 994
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->startRecording()V

    .line 997
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-nez v0, :cond_7

    .line 998
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageRecordingTime()I

    move-result v2

    invoke-static {v4, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    invoke-interface {v0, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    .line 1000
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v2

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    :cond_7
    move v0, v1

    .line 1003
    goto/16 :goto_0
.end method

.method public onRecordingEvent(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 1008
    packed-switch p1, :pswitch_data_0

    .line 1030
    :cond_0
    :goto_0
    return-void

    .line 1010
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsTimerCounting:Z

    if-eqz v0, :cond_0

    .line 1011
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordingLayout()V

    .line 1012
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsTimerCounting:Z

    goto :goto_0

    .line 1016
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showResumeLayout()V

    goto :goto_0

    .line 1019
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPauseLayout()V

    goto :goto_0

    .line 1022
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->handleRecordingStopped()V

    goto :goto_0

    .line 1025
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->handleRecordingCancelled()V

    goto :goto_0

    .line 1008
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onRecordingMaxDurationReached()V
    .locals 2

    .prologue
    .line 1034
    const-string v0, "VideoCollage"

    const-string v1, "onRecordingMaxReachedDuration()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getMaxRecordingTimeInMs()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTime(J)V

    .line 1037
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    .line 1038
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    .line 1039
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsMaxDurationReached:Z

    .line 1041
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCurrentState(I)V

    .line 1042
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->stopRecording()V

    .line 1043
    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 2

    .prologue
    .line 1047
    const-string v0, "VideoCollage"

    const-string v1, "onRecordingMaxReachedFileSize()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->stopRecording()V

    .line 1049
    return-void
.end method

.method protected onRecordingRestricted(ZZ)V
    .locals 3
    .param p1, "isRestricted"    # Z
    .param p2, "stopForced"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1160
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->checkStorageLow(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1162
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1170
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    .line 1171
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->cancelRecording()V

    .line 1173
    :cond_1
    return-void

    .line 1163
    :cond_2
    if-eqz p1, :cond_3

    .line 1164
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0

    .line 1166
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0
.end method

.method public onRecordingTick(JJ)V
    .locals 3
    .param p1, "elapsedTime"    # J
    .param p3, "fileSize"    # J

    .prologue
    .line 1053
    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTick - elapsedTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1056
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCurrentState(I)V

    .line 1057
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->startTimer()V

    .line 1058
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsMaxDurationReached:Z

    .line 1062
    :goto_0
    return-void

    .line 1060
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTime(J)V

    goto :goto_0
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1067
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1068
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideIndicatorLayout()V

    .line 1071
    :cond_1
    return-void
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 1075
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 1080
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 1
    .param p1, "captureMethod"    # I

    .prologue
    .line 1085
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 1091
    return-void
.end method

.method public onStopRecordingRequested(Z)V
    .locals 0
    .param p1, "forced"    # Z

    .prologue
    .line 1095
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->cancelRecording()V

    .line 1096
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 1100
    const-string v0, "VideoCollage"

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

    .line 1101
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 1105
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 1107
    :cond_1
    if-nez p1, :cond_2

    .line 1108
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 1111
    :cond_2
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1115
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1120
    const/4 v0, 0x1

    return v0
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 1125
    const/4 v0, 0x1

    return v0
.end method

.method public onVideoStoringPreparedEvent()V
    .locals 0

    .prologue
    .line 1131
    return-void
.end method

.method public showSwitchCameraButton()V
    .locals 2

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1135
    return-void
.end method

.method protected startRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1176
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1180
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    .line 1181
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 1182
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isPlayRecordingStartSound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1183
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x8

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 1186
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1187
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    .line 1190
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->createVideoCollageFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1191
    .local v0, "videoFilePath":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoFilePath(Ljava/lang/String;)V

    .line 1192
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setMaxVideoFileSize()V

    .line 1193
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSwitchToCamcorderPreview()V

    .line 1194
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePrepareVideoRecording()V

    .line 1195
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartVideoRecording()V

    .line 1198
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1199
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsTimerCounting:Z

    .line 1203
    :goto_0
    return-void

    .line 1201
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordingLayout()V

    goto :goto_0
.end method

.method protected stopRecording()V
    .locals 2

    .prologue
    .line 1206
    const-string v0, "VideoCollage"

    const-string v1, "stopRecording()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 1210
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1211
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopVideoRecordingSync()V

    .line 1213
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentRecordingTimeInMilliSecond()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTime(J)V

    .line 1214
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 1216
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->stopRecordingTickTimer()V

    .line 1217
    return-void
.end method

.method protected stopRecordingForced()V
    .locals 0

    .prologue
    .line 1220
    return-void
.end method
