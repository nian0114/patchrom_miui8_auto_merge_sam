.class public Lcom/sec/android/app/camera/shootingmode/Dual;
.super Lcom/sec/android/app/camera/shootingmode/RecordingController;
.source "Dual.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$DualEventListener;
.implements Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/Dual$2;,
        Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;,
        Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_100:I = 0x64

.field private static final ANIMATION_DURATION_130:I = 0x82

.field private static final ANIMATION_DURATION_300:I = 0x12c

.field private static final ANIMATION_DURATION_470:I = 0x1d6

.field private static final ANIMATION_DURATION_570:I = 0x23a

.field private static final DEFAULT_DUAL_RECT:I = 0x0

.field private static final DEFAULT_PIP_HEIGHT:I

.field private static final DEFAULT_PIP_WIDTH:I

.field private static final DUAL_BUTTON_POS_X:I

.field private static final DUAL_BUTTON_POS_Y:I

.field private static final DUAL_MAX_LIMIT_RECORDING_TIME_FHD:I = 0x12c

.field private static final DUAL_MAX_LIMIT_RECORDING_TIME_HD:I = 0x258

.field private static final DUAL_MAX_LIMIT_RECORDING_TIME_VGA:I = 0x258

.field private static final FLIP_PHOTO_FIRST_IMAGE_COUNT:I = 0x1

.field private static final FLIP_PHOTO_PIP_HEIGHT:I

.field private static final FLIP_PHOTO_PIP_LEFT:I

.field private static final FLIP_PHOTO_PIP_TOP:I

.field private static final FLIP_PHOTO_SECOND_IMAGE_COUNT:I = 0x2

.field private static final FLIP_PHOTO_SEF_KEYNAME:Ljava/lang/String; = "FlipPhoto_002"

.field private static final FULL_SCREEN_HEIGHT:I

.field private static final FULL_SCREEN_WIDTH:I

.field private static final HANDLER_AREA_PADDING:I

.field protected static final HIDE_BOUNDARY:I = 0x1

.field private static final HIDE_TIMEOUT:I = 0xbb8

.field private static final KEY_GLOBAL_DUAL_RECT_LEFTTOP_X:Ljava/lang/String; = "pref_global_dual_rect_lefttop_x"

.field private static final KEY_GLOBAL_DUAL_RECT_LEFTTOP_Y:Ljava/lang/String; = "pref_global_dual_rect_lefttop_y"

.field private static final KEY_GLOBAL_DUAL_RECT_RIGHTBOTTOM_X:Ljava/lang/String; = "pref_global_dual_rect_rightbottom_x"

.field private static final KEY_GLOBAL_DUAL_RECT_RIGHTBOTTOM_Y:Ljava/lang/String; = "pref_global_dual_rect_rightbottom_y"

.field private static final RECORDINGMODE_TEXT_SHADOW_OFFSET:I

.field private static final RECORDING_MODE_TEXT_SHADOW:Z

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

.field protected static final SHOW_BOUNDARY:I = 0x3

.field private static final SHUTTER_BUTTON_POS_Y:I

.field private static final SHUTTER_BUTTON_WIDTH:I

.field private static final SIDE_MENU_WIDTH:I

.field private static final SNAPSHOT_BUTTON_POS_Y:I

.field private static final SNAPSHOT_BUTTON_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "Dual"

.field private static mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;


# instance fields
.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBlinkCount:I

.field private mCaptureMethod:I

.field private mCurrentEffect:I

.field private mDualBoundryRectVisibility:Z

.field private mDualButton:Lcom/samsung/android/glview/GLButton;

.field private mDualCaptureAvailable:I

.field private mDualHeight:I

.field private mDualLeft:I

.field private mDualMsgHandler:Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

.field private mDualTop:I

.field private mDualWidth:I

.field private mDual_flip_photo_pip_width:I

.field private mDual_splitview_height:I

.field private mDual_splitview_start_posX:I

.field private mDual_splitview_start_posY:I

.field private mDual_splitview_width:I

.field private mFlipPhotoCallbackCnt:I

.field private mFlipPhotoFrontContentData:Lcom/sec/android/app/camera/util/ContentData;

.field private mFlipPhotoRearContentData:Lcom/sec/android/app/camera/util/ContentData;

.field private mHandler_area_bottom_boundary:I

.field private mHandler_area_left_boundary:I

.field private mHandler_area_right_boundary:I

.field private mHandler_area_top_boundary:I

.field mHeightFactor:F

.field private mHeightOffsetForhandle:I

.field private mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

.field private mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

.field private mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mInvisible:Z

.field private mIsFlipCaptureStarted:Z

.field private mIsFlipPhotoDBPrepareCompleted:Z

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mOrientation:I

.field private mPauseButton:Lcom/samsung/android/glview/GLButton;

.field private mPauseButtonText:Lcom/samsung/android/glview/GLText;

.field private mRecordingDualMode:I

.field private mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

.field private mRecordingTime:I

.field private mRemainRecordingTime:Ljava/lang/String;

.field private mResumeButton:Lcom/samsung/android/glview/GLButton;

.field private mResumeButtonText:Lcom/samsung/android/glview/GLText;

.field private final mSnapshotShutterRatio:F

.field private mStopButton:Lcom/samsung/android/glview/GLButton;

.field private mStopping:Z

.field private mTextAnimation:Landroid/view/animation/AlphaAnimation;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field mWidthFactor:F

.field private mWidthOffsetForhandle:I

.field private pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private final translationDeltaY:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    const v2, 0x7f0901bf

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    .line 95
    const v2, 0x7f0901be

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    .line 96
    const v2, 0x7f090214

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/shootingmode/Dual;->SIDE_MENU_WIDTH:I

    .line 97
    const v2, 0x7f090019

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/shootingmode/Dual;->HANDLER_AREA_PADDING:I

    .line 99
    const v2, 0x7f090196

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/shootingmode/Dual;->DUAL_BUTTON_POS_X:I

    .line 100
    const v2, 0x7f090197

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/shootingmode/Dual;->DUAL_BUTTON_POS_Y:I

    .line 102
    const v2, 0x7f0902dc

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    sput v2, Lcom/sec/android/app/camera/shootingmode/Dual;->REC_INDICATOR_TEXT_SIZE:F

    .line 103
    const v2, 0x7f0900f0

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    .line 104
    const v2, 0x7f0901b3

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_POS_X:I

    .line 105
    const v2, 0x7f0901b2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    .line 106
    const v2, 0x7f0a0052

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    .line 107
    const v2, 0x7f0c0037

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    .line 108
    const v2, 0x7f0901b1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_WIDTH:I

    .line 109
    const v2, 0x7f0901b0

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_LEFT_MARGIN:I

    .line 110
    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->SIDE_MENU_WIDTH:I

    sub-int/2addr v2, v3

    sput v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RIGHT_SIDE_MENU_POS_X:I

    .line 111
    const v2, 0x7f0900f1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_WIDTH:I

    .line 112
    const v2, 0x7f0900ee

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    .line 113
    const v2, 0x7f0900ed

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    .line 114
    const v2, 0x7f0900ef

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_POS_Y:I

    .line 115
    const v2, 0x7f0a0031

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    .line 116
    const v2, 0x7f0a0030

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_MODE_TEXT_SHADOW:Z

    .line 118
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v0, :cond_0

    const v0, 0x7f0901ad

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    :cond_0
    sput v1, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_SNAPSHOT_MARGIN_Y:I

    .line 119
    const v0, 0x7f090198

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_X:I

    .line 120
    const v0, 0x7f090199

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_Y:I

    .line 121
    const v0, 0x7f0902d7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    .line 122
    const v0, 0x7f09019d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_WIDTH:I

    .line 123
    const v0, 0x7f09019c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_TEXT_WIDTH:I

    .line 124
    const v0, 0x7f09019a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_TEXT_HEIGHT:I

    .line 125
    sget v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_TEXT_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    .line 126
    const v0, 0x7f09019b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_TEXT_SIZE:I

    .line 127
    const v0, 0x7f09020e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Dual;->SHUTTER_BUTTON_WIDTH:I

    .line 128
    const v0, 0x7f09020b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Dual;->SHUTTER_BUTTON_POS_Y:I

    .line 130
    const v0, 0x7f0901ab

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Dual;->SNAPSHOT_BUTTON_POS_Y:I

    .line 131
    const v0, 0x7f0901ac

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Dual;->SNAPSHOT_BUTTON_WIDTH:I

    .line 133
    const v0, 0x7f0901ae

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_STOP_BUTTON_POS_X:I

    .line 134
    const v0, 0x7f0901af

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_STOP_BUTTON_POS_Y:I

    .line 136
    const v0, 0x7f090315

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FLIP_PHOTO_PIP_HEIGHT:I

    .line 137
    const v0, 0x7f090317

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FLIP_PHOTO_PIP_TOP:I

    .line 138
    const v0, 0x7f090316

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FLIP_PHOTO_PIP_LEFT:I

    .line 144
    const v0, 0x7f0900ab

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Dual;->DEFAULT_PIP_WIDTH:I

    .line 145
    const v0, 0x7f0900aa

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Dual;->DEFAULT_PIP_HEIGHT:I

    return-void

    :cond_1
    move v0, v1

    .line 116
    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 7
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 167
    sget v0, Lcom/sec/android/app/camera/shootingmode/Dual;->SNAPSHOT_BUTTON_POS_Y:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/Dual;->SHUTTER_BUTTON_POS_Y:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/Dual;->SHUTTER_BUTTON_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->SNAPSHOT_BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->translationDeltaY:F

    .line 168
    sget v0, Lcom/sec/android/app/camera/shootingmode/Dual;->SNAPSHOT_BUTTON_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/shootingmode/Dual;->SHUTTER_BUTTON_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mSnapshotShutterRatio:F

    .line 169
    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightFactor:F

    .line 170
    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthFactor:F

    .line 171
    sget v0, Lcom/sec/android/app/camera/shootingmode/Dual;->HANDLER_AREA_PADDING:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_left_boundary:I

    .line 172
    sget v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/Dual;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_right_boundary:I

    .line 173
    sget v0, Lcom/sec/android/app/camera/shootingmode/Dual;->HANDLER_AREA_PADDING:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_top_boundary:I

    .line 174
    sget v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/Dual;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_bottom_boundary:I

    .line 175
    sget v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    .line 176
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    .line 177
    const v0, 0x7f0900b7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_width:I

    .line 178
    const v0, 0x7f0900ac

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_height:I

    .line 179
    const v0, 0x7f0900b5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posX:I

    .line 180
    const v0, 0x7f0900b6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posY:I

    .line 181
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_flip_photo_pip_width:I

    .line 182
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    .line 183
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualTop:I

    .line 184
    sget v0, Lcom/sec/android/app/camera/shootingmode/Dual;->DEFAULT_PIP_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualWidth:I

    .line 185
    sget v0, Lcom/sec/android/app/camera/shootingmode/Dual;->DEFAULT_PIP_HEIGHT:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualHeight:I

    .line 188
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    .line 190
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mInvisible:Z

    .line 191
    const/16 v0, 0x2a

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCurrentEffect:I

    .line 192
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 193
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 194
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 195
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualBoundryRectVisibility:Z

    .line 196
    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingDualMode:I

    .line 198
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualCaptureAvailable:I

    .line 213
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingTime:I

    .line 214
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopping:Z

    .line 216
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBlinkCount:I

    .line 221
    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoCallbackCnt:I

    .line 222
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipCaptureStarted:Z

    .line 223
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipPhotoDBPrepareCompleted:Z

    .line 228
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Dual$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Dual$1;-><init>(Lcom/sec/android/app/camera/shootingmode/Dual;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 270
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 271
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 273
    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/Dual;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Dual;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideBoundaryRect()V

    return-void
.end method

.method static synthetic access$300()Lcom/sec/android/app/camera/widget/gl/RectHandler;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/Dual;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Dual;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Dual;->blinkIndicatorRecIcon(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/Dual;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Dual;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Dual;->blinkIndicatorRecTime(Z)V

    return-void
.end method

.method private applyInvisible()V
    .locals 2

    .prologue
    .line 1357
    const-string v0, "Dual"

    const-string v1, "applyInvisible"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mInvisible:Z

    .line 1359
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideDualAreaHandle()V

    .line 1360
    return-void
.end method

.method private applyVisible()V
    .locals 2

    .prologue
    .line 1363
    const-string v0, "Dual"

    const-string v1, "applyVisible"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mInvisible:Z

    .line 1366
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 1367
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->showDualAreaHandle()V

    .line 1369
    :cond_0
    return-void
.end method

.method private blinkIndicatorRecIcon(Z)V
    .locals 2
    .param p1, "bShow"    # Z

    .prologue
    .line 1372
    const-string v0, "Dual"

    const-string v1, "blinkIndicatorRecIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;->removeMessages(I)V

    .line 1378
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 1379
    if-eqz p1, :cond_2

    .line 1380
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1385
    :cond_1
    :goto_0
    return-void

    .line 1382
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private blinkIndicatorRecTime(Z)V
    .locals 2
    .param p1, "bShow"    # Z

    .prologue
    .line 1388
    const-string v0, "Dual"

    const-string v1, "blinkIndicatorRecTime"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;->removeMessages(I)V

    .line 1394
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 1395
    if-eqz p1, :cond_2

    .line 1396
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1401
    :cond_1
    :goto_0
    return-void

    .line 1398
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method private calculatePreviewRectBoundary()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1404
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_0

    .line 1448
    :goto_0
    return-void

    .line 1407
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getDualHandlerOffset()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    .line 1408
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_3

    .line 1410
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_left_boundary:I

    .line 1414
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1415
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_left_boundary:I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_right_boundary:I

    .line 1418
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isWidePreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1419
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getViewMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 1420
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    .line 1424
    :goto_2
    const v0, 0x7f0900b7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_width:I

    .line 1425
    const v0, 0x7f0900ac

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_height:I

    .line 1426
    const v0, 0x7f0900b5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posX:I

    .line 1427
    const v0, 0x7f0900b6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posY:I

    .line 1428
    const v0, 0x7f09031a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_flip_photo_pip_width:I

    .line 1444
    :goto_3
    sget v0, Lcom/sec/android/app/camera/shootingmode/Dual;->HANDLER_AREA_PADDING:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_top_boundary:I

    .line 1445
    sget v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/Dual;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_bottom_boundary:I

    .line 1446
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_top_boundary:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setHandlerAreaTopBoundary(I)V

    .line 1447
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_bottom_boundary:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setHandlerAreaBottomBoundary(I)V

    goto/16 :goto_0

    .line 1412
    :cond_3
    sget v0, Lcom/sec/android/app/camera/shootingmode/Dual;->HANDLER_AREA_PADDING:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_left_boundary:I

    goto/16 :goto_1

    .line 1422
    :cond_4
    const v0, 0x7f0900a2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    goto :goto_2

    .line 1429
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSquarePreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1430
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    .line 1431
    const v0, 0x7f0900b4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_width:I

    .line 1432
    const v0, 0x7f0900b1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_height:I

    .line 1433
    const v0, 0x7f0900b2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posX:I

    .line 1434
    const v0, 0x7f0900b3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posY:I

    .line 1435
    const v0, 0x7f090319

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_flip_photo_pip_width:I

    goto :goto_3

    .line 1437
    :cond_6
    const v0, 0x7f0900a4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    .line 1438
    const v0, 0x7f0900b0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_width:I

    .line 1439
    const v0, 0x7f0900ad

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_height:I

    .line 1440
    const v0, 0x7f0900ae

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posX:I

    .line 1441
    const v0, 0x7f0900af

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posY:I

    .line 1442
    const v0, 0x7f090318

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_flip_photo_pip_width:I

    goto/16 :goto_3
.end method

.method private clearDual()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1451
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;->access$000(Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;)V

    .line 1452
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    .line 1453
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualMsgHandler:Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;->access$100(Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;)V

    .line 1454
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualMsgHandler:Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

    .line 1455
    return-void
.end method

.method private getDefaultRectHeight(I)I
    .locals 1
    .param p1, "effect"    # I

    .prologue
    .line 1458
    packed-switch p1, :pswitch_data_0

    .line 1477
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1460
    :pswitch_1
    const v0, 0x7f0900a3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1462
    :pswitch_2
    const v0, 0x7f09009a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1464
    :pswitch_3
    const v0, 0x7f0900aa

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1466
    :pswitch_4
    const v0, 0x7f0900a6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1468
    :pswitch_5
    const v0, 0x7f0900a0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1470
    :pswitch_6
    const v0, 0x7f0900a8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1472
    :pswitch_7
    const v0, 0x7f090098

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1474
    :pswitch_8
    const v0, 0x7f090315

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1458
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getDefaultRectWidth(I)I
    .locals 1
    .param p1, "effect"    # I

    .prologue
    .line 1482
    packed-switch p1, :pswitch_data_0

    .line 1500
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1484
    :pswitch_1
    const v0, 0x7f0900a5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1486
    :pswitch_2
    const v0, 0x7f09009b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1488
    :pswitch_3
    const v0, 0x7f0900ab

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1490
    :pswitch_4
    const v0, 0x7f0900a7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1492
    :pswitch_5
    const v0, 0x7f0900a1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1494
    :pswitch_6
    const v0, 0x7f0900a9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1496
    :pswitch_7
    const v0, 0x7f090099

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1482
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getRectIndex(I)I
    .locals 1
    .param p1, "menu"    # I

    .prologue
    const/4 v0, 0x0

    .line 1505
    packed-switch p1, :pswitch_data_0

    .line 1525
    :goto_0
    :pswitch_0
    return v0

    .line 1509
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1511
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1513
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1515
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 1517
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 1519
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 1521
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 1523
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 1505
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method private hideAllBoundaryRect()V
    .locals 1

    .prologue
    .line 1530
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualBoundryRectVisibility:Z

    if-eqz v0, :cond_0

    .line 1531
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideBoundaryRect()V

    .line 1533
    :cond_0
    return-void
.end method

.method private hideBoundaryRect()V
    .locals 1

    .prologue
    .line 1536
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    if-eqz v0, :cond_0

    .line 1537
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->hideBoundryRect()V

    .line 1538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualBoundryRectVisibility:Z

    .line 1540
    :cond_0
    return-void
.end method

.method private hideDualAreaHandle()V
    .locals 2

    .prologue
    .line 1543
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setDraggable(Z)V

    .line 1544
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setDisable(Z)V

    .line 1545
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideBoundaryRect()V

    .line 1546
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setBackGroundInvisible()V

    .line 1547
    return-void
.end method

.method private hideRecordingButtonWithAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 1550
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setRecordingButtonForAnimation(Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;)V

    .line 1551
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableRecordingAnimation()V

    .line 1552
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1553
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1554
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1555
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1556
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1557
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1558
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1559
    return-void
.end method

.method private initDual()V
    .locals 1

    .prologue
    .line 1562
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualCaptureAvailable:I

    .line 1564
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/Dual;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    .line 1565
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/Dual;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualMsgHandler:Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

    .line 1566
    return-void
.end method

.method private isFlipEffect()Z
    .locals 2

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 1570
    const/4 v0, 0x1

    .line 1572
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDualEffectPositionFromPreference()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1576
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_dual_rect_lefttop_x"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    .line 1577
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_dual_rect_lefttop_y"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualTop:I

    .line 1578
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_dual_rect_rightbottom_x"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualWidth:I

    .line 1579
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_dual_rect_rightbottom_y"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualHeight:I

    .line 1580
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

    .line 1583
    const-string v2, "Dual"

    const-string v3, "makeRecordingAnimation"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1585
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v3, 0x12c

    const/16 v4, 0x82

    new-instance v5, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(IILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1586
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    new-instance v5, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    const/16 v6, 0x12c

    const/16 v7, 0x82

    move v2, v0

    move v3, v1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1588
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1590
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1591
    iget-object v12, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->translationDeltaY:F

    neg-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mSnapshotShutterRatio:F

    div-float v4, v2, v3

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    sget v7, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    new-instance v9, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v9}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v2, v0

    move v3, v0

    move v5, v0

    invoke-static/range {v2 .. v10}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1593
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-static {v10, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1594
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mSnapshotShutterRatio:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mSnapshotShutterRatio:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    new-instance v9, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v9}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v5, v1

    move v7, v1

    invoke-static/range {v4 .. v11}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1596
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1597
    return-void
.end method

.method private onDualModeRecodingSwitchCamera()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x0

    .line 1600
    const-string v0, "Dual"

    const-string v1, "onDualModeRecodingSwitchCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isEmptyRequestQueue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1603
    const-string v0, "Dual"

    const-string v1, "onDualModeRecodingSwitchCamera failed - queue is not empty"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :cond_0
    :goto_0
    return-void

    .line 1606
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isNotificationExist()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1607
    const-string v0, "Dual"

    const-string v1, "onDualModeRecodingSwitchCamera failed - notification is not empty"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1611
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1612
    const-string v0, "Dual"

    const-string v1, "onDualModeRecodingSwitchCamera return - pip switching not supported in flip effect"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetCameraSettingsInDual()V

    .line 1616
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1617
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraId(I)V

    .line 1618
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setDualEffectLayerOrder()V

    .line 1619
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v1, 0xbba

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->changeParameterSync(II)V

    .line 1620
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x2

    invoke-interface {v0, v3, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->changeParameterSync(II)V

    goto :goto_0

    .line 1621
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    .line 1622
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraParameters;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFlashMode(Ljava/lang/String;)V

    .line 1623
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraId(I)V

    .line 1624
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setDualEffectLayerOrder()V

    .line 1625
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->changeParameterSync(II)V

    goto :goto_0
.end method

.method private onDualModeSwitchCamera()V
    .locals 2

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isEmptyRequestQueue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1631
    const-string v0, "Dual"

    const-string v1, "onCameraDualModeSwitchCamera failed - queue is not empty"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :goto_0
    return-void

    .line 1634
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isNotificationExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1635
    const-string v0, "Dual"

    const-string v1, "onCameraDualModeSwitchCamera failed - notifycation is not empty"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1639
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetCameraSettingsInDual()V

    .line 1640
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->updateCameraResolutionForDual()V

    .line 1641
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1642
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraId(I)V

    .line 1647
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetDualEffectLayerOrder()V

    .line 1649
    const-string v0, "Dual"

    const-string v1, "onCameraDualModeSwitchCamera done!"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1643
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_2

    .line 1644
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraId(I)V

    goto :goto_1
.end method

.method private roundOrientation(I)I
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1660
    add-int/lit8 v0, p1, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x5a

    return v0
.end method

.method private saveDualEffectPositionInPreference()V
    .locals 4

    .prologue
    .line 1665
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    .line 1666
    .local v0, "nEffectMode":I
    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    .line 1673
    :cond_0
    :goto_0
    return-void

    .line 1669
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_dual_rect_lefttop_x"

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1670
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_dual_rect_lefttop_y"

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualTop:I

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1671
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_dual_rect_rightbottom_x"

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualWidth:I

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1672
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_dual_rect_rightbottom_y"

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualHeight:I

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private sendHideBoundaryRectMessage()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1676
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualMsgHandler:Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

    if-nez v0, :cond_0

    .line 1684
    :goto_0
    return-void

    .line 1680
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualMsgHandler:Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1681
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualMsgHandler:Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;->removeMessages(I)V

    .line 1683
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualMsgHandler:Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setDualButtonResource(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1687
    const-string v0, "Dual"

    const-string v1, "setDualButtonResource"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    packed-switch p1, :pswitch_data_0

    .line 1701
    :goto_0
    return-void

    .line 1691
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f020091

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    .line 1692
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080059

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1695
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f020092

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    .line 1696
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080058

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1689
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setDualEffectHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 1704
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualHeight:I

    .line 1705
    return-void
.end method

.method private setDualEffectLeftTopX(I)V
    .locals 0
    .param p1, "dualEffectLeftTopX"    # I

    .prologue
    .line 1708
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    .line 1709
    return-void
.end method

.method private setDualEffectLeftTopY(I)V
    .locals 0
    .param p1, "dualEffectLeftTopY"    # I

    .prologue
    .line 1712
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualTop:I

    .line 1713
    return-void
.end method

.method private setDualEffectWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 1716
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualWidth:I

    .line 1717
    return-void
.end method

.method private setDualPipPosition(FFFFII)V
    .locals 8
    .param p1, "topLeftX"    # F
    .param p2, "topLeftY"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "mWidthOffsetForhandle"    # I
    .param p6, "mHeightOffsetForhandle"    # I

    .prologue
    .line 1720
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualPipPosition(FFFFIIZ)V

    .line 1721
    return-void
.end method

.method private setDualPipPosition(FFFFIIZ)V
    .locals 13
    .param p1, "topLeftX"    # F
    .param p2, "topLeftY"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "mWidthOffsetForhandle"    # I
    .param p6, "mHeightOffsetForhandle"    # I
    .param p7, "newEffect"    # Z

    .prologue
    .line 1729
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isWidePreviewAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1730
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->REAL_PREVIEW_SIZE_16_9:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v10

    .line 1731
    .local v10, "previewWidth":I
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->REAL_PREVIEW_SIZE_16_9:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v9

    .line 1740
    .local v9, "previewHeight":I
    :goto_0
    int-to-float v1, v10

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v11, v1, v2

    .line 1741
    .local v11, "resizeFactorX":F
    int-to-float v1, v9

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v12, v1, v2

    .line 1743
    .local v12, "resizeFactorY":F
    mul-float v1, p1, v11

    float-to-int v1, v1

    int-to-float p1, v1

    .line 1744
    mul-float v1, p2, v12

    float-to-int v1, v1

    int-to-float p2, v1

    .line 1745
    mul-float v1, p3, v11

    float-to-int v1, v1

    int-to-float v0, v1

    move/from16 p3, v0

    .line 1746
    mul-float v1, p4, v12

    float-to-int v1, v1

    int-to-float v0, v1

    move/from16 p4, v0

    .line 1748
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/sec/android/app/camera/interfaces/Engine;->coordinateSyncforDual(FFFFIIZ)V

    .line 1749
    return-void

    .line 1732
    .end local v9    # "previewHeight":I
    .end local v10    # "previewWidth":I
    .end local v11    # "resizeFactorX":F
    .end local v12    # "resizeFactorY":F
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSquarePreviewAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1733
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->REAL_PREVIEW_SIZE_1_1:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v10

    .line 1734
    .restart local v10    # "previewWidth":I
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->REAL_PREVIEW_SIZE_1_1:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v9

    .restart local v9    # "previewHeight":I
    goto :goto_0

    .line 1736
    .end local v9    # "previewHeight":I
    .end local v10    # "previewWidth":I
    :cond_1
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->REAL_PREVIEW_SIZE_4_3:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v10

    .line 1737
    .restart local v10    # "previewWidth":I
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->REAL_PREVIEW_SIZE_4_3:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v9

    .restart local v9    # "previewHeight":I
    goto :goto_0
.end method

.method private setDualPipPositionAsDefault()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1752
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualEffectLeftTopX(I)V

    .line 1753
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualEffectLeftTopY(I)V

    .line 1754
    sget v0, Lcom/sec/android/app/camera/shootingmode/Dual;->DEFAULT_PIP_WIDTH:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualEffectWidth(I)V

    .line 1755
    sget v0, Lcom/sec/android/app/camera/shootingmode/Dual;->DEFAULT_PIP_HEIGHT:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualEffectHeight(I)V

    .line 1756
    return-void
.end method

.method private setEffect(I)V
    .locals 13
    .param p1, "effect"    # I

    .prologue
    .line 1759
    const-string v0, "Dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    .line 1761
    const-string v0, "Dual"

    const-string v1, "setEffect : mCameraContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    :cond_0
    :goto_0
    return-void

    .line 1765
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1766
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setMultiTrackMode(Z)V

    .line 1769
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->resetHandler()V

    .line 1770
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->showDualAreaHandle()V

    .line 1772
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mInvisible:Z

    .line 1773
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->calculatePreviewRectBoundary()V

    .line 1775
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCurrentEffect:I

    .line 1777
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMaxBound()V

    .line 1779
    packed-switch p1, :pswitch_data_0

    .line 1828
    :goto_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setAspectRatioLocked(Z)V

    .line 1829
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setGrowable(Z)V

    .line 1830
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideBoundaryRect()V

    .line 1832
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_3

    .line 1833
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectOrientationSync(I)V

    .line 1835
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCurrentEffect:I

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCurrentEffect:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    .line 1836
    :cond_5
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v9

    .line 1837
    .local v9, "rect":Landroid/graphics/RectF;
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v12

    .line 1838
    .local v12, "rotateRect":Landroid/graphics/RectF;
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setPosition(FFFF)V

    .line 1839
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v0, v12, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualPipPosition(FFFFIIZ)V

    goto/16 :goto_0

    .line 1787
    .end local v9    # "rect":Landroid/graphics/RectF;
    .end local v12    # "rotateRect":Landroid/graphics/RectF;
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Dual;->getDefaultRectHeight(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/shootingmode/Dual;->DEFAULT_PIP_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightFactor:F

    .line 1788
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Dual;->getDefaultRectWidth(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/shootingmode/Dual;->DEFAULT_PIP_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthFactor:F

    .line 1790
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthFactor:F

    mul-float/2addr v0, v1

    float-to-int v11, v0

    .line 1791
    .local v11, "resizedWidth":I
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightFactor:F

    mul-float/2addr v0, v1

    float-to-int v10, v0

    .line 1793
    .local v10, "resizedHeight":I
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    add-int/2addr v0, v11

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_right_boundary:I

    if-le v0, v1, :cond_6

    .line 1794
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    add-int/2addr v0, v11

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_right_boundary:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/Dual;->HANDLER_AREA_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v8, v0

    .line 1795
    .local v8, "diff":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    int-to-float v0, v0

    sub-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    .line 1797
    .end local v8    # "diff":F
    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_left_boundary:I

    if-ge v0, v1, :cond_7

    .line 1798
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_left_boundary:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    sub-int/2addr v0, v1

    int-to-float v8, v0

    .line 1799
    .restart local v8    # "diff":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    int-to-float v0, v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    .line 1802
    .end local v8    # "diff":F
    :cond_7
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualTop:I

    int-to-float v2, v2

    int-to-float v3, v11

    int-to-float v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setPosition(FFFF)V

    .line 1803
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Dual;->getDefaultRectWidth(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Dual;->getDefaultRectHeight(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMaxSizeF(FF)V

    .line 1804
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Dual;->getDefaultRectWidth(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Dual;->getDefaultRectHeight(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMinSizeF(FF)V

    .line 1805
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualTop:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    int-to-float v3, v11

    int-to-float v4, v10

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualPipPosition(FFFFIIZ)V

    goto/16 :goto_1

    .line 1809
    .end local v10    # "resizedHeight":I
    .end local v11    # "resizedWidth":I
    :pswitch_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setDisable(Z)V

    .line 1810
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_height:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setPosition(FFFF)V

    .line 1811
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_width:I

    int-to-float v3, v0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_height:I

    int-to-float v4, v0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualPipPosition(FFFFIIZ)V

    .line 1813
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setDraggable(Z)V

    .line 1814
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualPipPositionAsDefault()V

    goto/16 :goto_1

    .line 1817
    :pswitch_2
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Dual;->FLIP_PHOTO_PIP_LEFT:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->FLIP_PHOTO_PIP_TOP:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->FLIP_PHOTO_PIP_LEFT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_flip_photo_pip_width:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->FLIP_PHOTO_PIP_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setPosition(FFFF)V

    .line 1819
    sget v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FLIP_PHOTO_PIP_LEFT:I

    int-to-float v1, v0

    sget v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FLIP_PHOTO_PIP_TOP:I

    int-to-float v2, v0

    sget v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FLIP_PHOTO_PIP_LEFT:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_flip_photo_pip_width:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    sget v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FLIP_PHOTO_PIP_HEIGHT:I

    int-to-float v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualPipPosition(FFFFIIZ)V

    .line 1820
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setMultiTrackMode(Z)V

    .line 1821
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setDraggable(Z)V

    .line 1822
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualPipPositionAsDefault()V

    goto/16 :goto_1

    .line 1779
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setEffectOrientation()V
    .locals 2

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectOrientationSync(I)V

    .line 1846
    return-void
.end method

.method private setMaxRecordingTime()V
    .locals 5

    .prologue
    const/16 v4, 0x12c

    const/4 v3, -0x1

    const/16 v2, 0x258

    .line 1849
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1850
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    if-le v0, v4, :cond_1

    .line 1851
    :cond_0
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    .line 1862
    :cond_1
    :goto_0
    const-string v0, "Dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxRecordingTimeLimitInSecond : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    return-void

    .line 1853
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 1854
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    if-le v0, v2, :cond_1

    .line 1855
    :cond_3
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    goto :goto_0

    .line 1858
    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    if-le v0, v2, :cond_1

    .line 1859
    :cond_5
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    goto :goto_0
.end method

.method private setOrientationChanged(IZ)V
    .locals 10
    .param p1, "orientation"    # I
    .param p2, "forceUpdateHandler"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1866
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_4

    .line 1867
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    and-int/lit8 v0, v0, 0x1

    and-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_6

    .line 1868
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x1f40

    if-lt v0, v1, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mInvisible:Z

    if-eqz v0, :cond_5

    .line 1873
    :cond_3
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    .line 1874
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectOrientationSync(I)V

    .line 1889
    :cond_4
    :goto_0
    return-void

    .line 1877
    :cond_5
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v8

    .line 1878
    .local v8, "rect":Landroid/graphics/RectF;
    const/4 v0, 0x0

    iget v1, v8, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget v0, v8, Landroid/graphics/RectF;->right:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 1879
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0, v8, v2, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v9

    .line 1880
    .local v9, "rotateRect":Landroid/graphics/RectF;
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    iget v1, v9, Landroid/graphics/RectF;->left:F

    iget v2, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setPosition(FFFF)V

    .line 1881
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->updateRectBeforeDragged()V

    .line 1882
    iget v0, v9, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v0, v9, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualPipPosition(FFFFIIZ)V

    .line 1886
    .end local v8    # "rect":Landroid/graphics/RectF;
    .end local v9    # "rotateRect":Landroid/graphics/RectF;
    :cond_6
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    .line 1887
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectOrientationSync(I)V

    goto :goto_0
.end method

.method private setScreenForRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1892
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    .line 1893
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1894
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingDualMode:I

    .line 1895
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualButtonResource(I)V

    .line 1897
    :cond_0
    return-void
.end method

.method private showBoundaryRect()V
    .locals 1

    .prologue
    .line 1900
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    if-eqz v0, :cond_0

    .line 1901
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->showBoundryRect()V

    .line 1902
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualBoundryRectVisibility:Z

    .line 1904
    :cond_0
    return-void
.end method

.method private showDualAreaHandle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1907
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setBackGroundVisible()V

    .line 1908
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setSideLock(I)V

    .line 1909
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    .line 1910
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setDraggable(Z)V

    .line 1911
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setDisable(Z)V

    .line 1913
    :cond_0
    return-void
.end method

.method private showRecordingTextAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1916
    const-string v0, "Dual"

    const-string v1, "showRecordingTextAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 1919
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1920
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1923
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1924
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    .line 1925
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1926
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1927
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1928
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1929
    return-void
.end method

.method private startBlinkIndicatorRecIcon()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1934
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 1935
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Dual;->blinkIndicatorRecIcon(Z)V

    .line 1937
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    if-eqz v0, :cond_0

    .line 1938
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1941
    :cond_0
    return-void
.end method

.method private startTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1944
    const-string v0, "Dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTimer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1946
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRemainRecordingTime:Ljava/lang/String;

    .line 1948
    const-string v0, "Dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTimer 2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1950
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1952
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_0

    .line 1953
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->showRecordingTextAnimation()V

    .line 1958
    :goto_0
    return-void

    .line 1955
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1956
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDBForFlipPhoto(Landroid/content/ContentValues;Lcom/sec/android/app/camera/util/ContentData;)V
    .locals 9
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "contentData"    # Lcom/sec/android/app/camera/util/ContentData;

    .prologue
    const/4 v8, 0x0

    .line 1961
    const/4 v2, 0x0

    .line 1962
    .local v2, "fileUri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1965
    .local v3, "mContentResolver":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1967
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getAddressValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 1968
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getImageIDListHaveAddress()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1971
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/util/ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v3, v2, v6, v7}, Lcom/sec/android/app/camera/util/ImageUtils;->setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V

    .line 1972
    invoke-virtual {p2, v2}, Lcom/sec/android/app/camera/util/ContentData;->setContentUri(Landroid/net/Uri;)V

    .line 1973
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/sec/android/app/camera/util/ContentData;->setContentVideoType(Z)V

    .line 1975
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1976
    .local v0, "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v5, "Z001"

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1977
    const-string v5, "Z119"

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraParameters;->getDualEffectString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1978
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCaptureMethod:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 1979
    const-string v5, "Z000"

    const-string v6, "Rear"

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1981
    :cond_1
    const-string v5, "Z118"

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v7

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1982
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/ContentValues;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/ContentValues;

    invoke-static {v6, v5}, Lcom/sec/android/app/camera/util/Util;->broadcastMultipleGeneralEventForLogging(Landroid/content/Context;[Landroid/content/ContentValues;)V

    .line 1984
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p2}, Lcom/sec/android/app/camera/util/ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1991
    .end local v0    # "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :goto_0
    return-void

    .line 1985
    :catch_0
    move-exception v4

    .line 1986
    .local v4, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "Dual"

    const-string v6, "Not enough space in database"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v6, 0x7f080176

    invoke-static {v5, v6, v8}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1988
    .end local v4    # "sfe":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 1989
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "Dual"

    const-string v6, "ContentResolver insert failed"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V
    .locals 7
    .param p1, "cmd"    # Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    .prologue
    const/4 v6, 0x0

    const/16 v5, -0x181

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1994
    const-string v0, "Dual"

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

    .line 1996
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual$2;->$SwitchMap$com$sec$android$app$camera$shootingmode$RecordingController$RecordingCommand:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2055
    :goto_0
    return-void

    .line 1998
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableRecordingAnimation()V

    .line 1999
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 2002
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2003
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2005
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2006
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2007
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2009
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2010
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 2011
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 2012
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2013
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    goto :goto_0

    .line 2017
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2018
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2020
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2021
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2022
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2023
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2024
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 2028
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 2031
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2032
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2035
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2036
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2037
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2038
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2039
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_0

    .line 2045
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 2046
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 2048
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 2049
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_0

    .line 1996
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

    .line 2058
    const-string v0, "Dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRecordingTime : ms = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingTime:I

    .line 2062
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingTime:I

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 2064
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingTime:I

    sub-int/2addr v0, v1

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_2

    .line 2065
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBlinkCount:I

    .line 2072
    :cond_0
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBlinkCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBlinkCount:I

    if-lez v0, :cond_1

    .line 2073
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->blinkIndicatorRecTime(Z)V

    .line 2075
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    if-eqz v0, :cond_1

    .line 2076
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2079
    :cond_1
    return-void

    .line 2066
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingTime:I

    sub-int/2addr v0, v1

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_3

    .line 2067
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBlinkCount:I

    goto :goto_0

    .line 2068
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingTime:I

    sub-int/2addr v0, v1

    if-ne v0, v3, :cond_0

    .line 2069
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBlinkCount:I

    goto :goto_0
.end method


# virtual methods
.method protected cancelRecording()V
    .locals 2

    .prologue
    .line 1206
    const-string v0, "Dual"

    const-string v1, "cancelRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 1208
    const-string v0, "Dual"

    const-string v1, "return cancelRecording - record is already stopping"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :goto_0
    return-void

    .line 1212
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1213
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->CANCEL_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1215
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1216
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelMultiTrackRecording()V

    .line 1221
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->stopRecordingTickTimer()V

    .line 1222
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingTime:I

    goto :goto_0

    .line 1218
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelVideoRecordingSync()V

    goto :goto_1
.end method

.method public getMaxFileSizeOfImage()J
    .locals 2

    .prologue
    .line 277
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipCaptureStarted:Z

    .line 285
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSnapShotAvailable()Z
    .locals 1

    .prologue
    .line 1227
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomAvailable()Z
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    .line 291
    const/4 v0, 0x0

    .line 293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 9
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 298
    const-string v1, "Dual"

    const-string v2, "onActivate : E"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Dual;->registerRecordingController(Lcom/sec/android/app/camera/interfaces/Engine;)V

    .line 301
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 302
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 303
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    .line 304
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    .line 306
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 307
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "camera.action.LOW_BATTERY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    const-string v1, "camera.action.AUDIOFOCUS_LOSS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v1, "camera.action.OVERHEAT_TEMPERATURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v1, "camera.action.PREVIEW_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    const-string v1, "camera.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v1, "camera.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 315
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getDualHandlerOffset()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    .line 316
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->loadDualEffectPositionFromPreference()V

    .line 318
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->registerListener(Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;)V

    .line 320
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    if-nez v1, :cond_4

    .line 321
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v3, v7, [I

    const/16 v1, 0x5a

    aput v1, v3, v5

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v1, :cond_3

    const/16 v1, 0xab

    :goto_0
    aput v1, v3, v4

    aput v6, v3, v8

    aput v7, v3, v6

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    .line 325
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 328
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 333
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0xbb9

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 335
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->initDual()V

    .line 337
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setDualListener(Lcom/sec/android/seccamera/SecCamera$DualEventListener;)V

    .line 339
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setDualEffectSync(I)V

    .line 341
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setMultiTrackMode(Z)V

    .line 344
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->setEffect(I)V

    .line 345
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setDualEffectLayerOrder()V

    .line 350
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_2

    .line 351
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-eqz v1, :cond_2

    .line 352
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    .line 356
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    .line 358
    const-string v1, "Dual"

    const-string v2, "onActivate : X"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-void

    .line 321
    :cond_3
    const/4 v1, 0x6

    goto/16 :goto_0

    .line 323
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v3, v6, [I

    const/16 v1, 0x5a

    aput v1, v3, v5

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INTERVAL_CAPTURE:Z

    if-eqz v1, :cond_5

    const/16 v1, 0xab

    :goto_4
    aput v1, v3, v4

    aput v7, v3, v8

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x6

    goto :goto_4

    .line 330
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto/16 :goto_2

    .line 347
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartDualCamera()V

    goto :goto_3
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 363
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v2, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v0

    .line 367
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v2

    if-nez v2, :cond_2

    .line 368
    const-string v1, "Dual"

    const-string v2, "onActivityTouchEvent- Preview is not started yet"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 372
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualBoundryRectVisibility:Z

    if-eqz v2, :cond_3

    move v0, v1

    .line 373
    goto :goto_0

    .line 376
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusArea(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 384
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_6

    .line 389
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v2, :cond_5

    .line 390
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->onDualModeRecodingSwitchCamera()V

    :goto_1
    move v0, v1

    .line 394
    goto :goto_0

    .line 392
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->onDualModeSwitchCamera()V

    goto :goto_1

    .line 396
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mInvisible:Z

    if-eqz v2, :cond_0

    .line 397
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->onDualModeRecodingSwitchCamera()V

    move v0, v1

    .line 398
    goto/16 :goto_0
.end method

.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 412
    :cond_1
    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 417
    return-void
.end method

.method public onCameraOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 422
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 423
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Dual;->roundOrientation(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->setOrientationChanged(IZ)V

    .line 425
    :cond_0
    return-void
.end method

.method public onCameraSettingChanged(II)V
    .locals 6
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 429
    packed-switch p1, :pswitch_data_0

    .line 449
    :goto_0
    return-void

    .line 431
    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_WIDTH:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_POS_Y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto :goto_0

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 441
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_WIDTH:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_POS_Y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto :goto_0

    .line 429
    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_0
    .end packed-switch
.end method

.method public onChangeShootingModeParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 4
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    const/16 v3, 0x5dc0

    .line 453
    const-string v0, "Dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeModeParameters : current recording status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 456
    const-string v0, "dualrecording-hint"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 457
    invoke-virtual {p1, v3, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 463
    :goto_0
    return-void

    .line 459
    :cond_0
    const-string v0, "dualrecording-hint"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 461
    const-string v0, "shot-mode"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeValueForISPset()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 467
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 468
    const-string v2, "Dual"

    const-string v3, "onClick = mDualButton"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingDualMode:I

    if-ne v2, v0, :cond_1

    .line 470
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->applyInvisible()V

    .line 471
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualButtonResource(I)V

    .line 472
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingDualMode:I

    .line 473
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectVisibleForRecording(Z)V

    .line 474
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setEffectOrientation()V

    .line 510
    :cond_0
    :goto_0
    return v0

    .line 477
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->applyVisible()V

    .line 478
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setEffectOrientation()V

    .line 479
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualButtonResource(I)V

    .line 480
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingDualMode:I

    .line 481
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectVisibleForRecording(Z)V

    goto :goto_0

    .line 484
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 485
    const-string v1, "Dual"

    const-string v2, "onClick = mStopButton"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->stopRecording()V

    goto :goto_0

    .line 491
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 492
    const-string v1, "Dual"

    const-string v2, "onClick = mPauseButton"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingTime:I

    if-lt v1, v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->pauseRecording()V

    goto :goto_0

    .line 501
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 502
    const-string v1, "Dual"

    const-string v2, "onClick = mResumeButton"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v1

    if-nez v1, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->resumeRecording()V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 510
    goto :goto_0
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 17
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 515
    const-string v2, "Dual"

    const-string v3, "onCreateView"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 517
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Dual;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 522
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/RectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;I)V

    sput-object v2, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    .line 524
    sget-object v2, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/high16 v3, -0x3e600000    # -20.0f

    const/high16 v4, -0x3e600000    # -20.0f

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setPosition(FFFF)V

    .line 525
    sget-object v2, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMaxSizeF(FF)V

    .line 526
    sget-object v2, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMinSizeF(FF)V

    .line 527
    sget-object v2, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMaxBound()V

    .line 528
    sget-object v2, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setonHandlerMoveListener(Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;)V

    .line 529
    sget-object v2, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setRectHandlerClickListener(Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;)V

    .line 530
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideBoundaryRect()V

    .line 531
    sget-object v2, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const-string v3, "DUAL_AREA_RECT"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setObjectTag(Ljava/lang/String;)V

    .line 532
    sget-object v2, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMaxSizeF(FF)V

    .line 533
    sget-object v2, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMinSizeF(FF)V

    .line 534
    sget-object v2, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 539
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->DUAL_BUTTON_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->DUAL_BUTTON_POS_Y:I

    int-to-float v5, v5

    const v6, 0x7f020092

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080143

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080059

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 553
    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getMSFormatStringWidth(F)F

    move-result v6

    .line 554
    .local v6, "recTimeTextWidth":F
    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float v16, v2, v6

    .line 556
    .local v16, "recTimeGroupWidth":F
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 558
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v4, v16

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v4

    add-float v4, v4, v16

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_POS_Y:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 568
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    int-to-float v5, v5

    sub-float/2addr v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 573
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_LEFT_MARGIN:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x7f0201cd

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 576
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_LEFT_MARGIN:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x7f0201cc

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 579
    new-instance v2, Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v4, v3

    const/4 v5, 0x0

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v7, v3

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v8

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v9, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 592
    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getMSFormatStringWidth(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const-string v3, " / "

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v3

    add-float v15, v2, v3

    .line 594
    .local v15, "recRemainTimeTextWidth":F
    new-instance v7, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float v11, v2, v15

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v12, v2

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 595
    new-instance v7, Lcom/samsung/android/glview/GLText;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v9, v2

    const/4 v10, 0x0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v12, v2

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v13

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v14, v2, v3

    move-object/from16 v8, p1

    move v11, v15

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 599
    sget-boolean v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_MODE_TEXT_SHADOW:Z

    if-eqz v2, :cond_1

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setShadowOffset(FF)V

    .line 605
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v4

    sub-float/2addr v4, v15

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    int-to-float v5, v5

    sub-float/2addr v5, v15

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v15

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v5, v15

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 620
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v2, :cond_2

    .line 621
    new-instance v7, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v9, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_SNAPSHOT_MARGIN_Y:I

    add-int/2addr v2, v3

    int-to-float v10, v2

    const v11, 0x7f02010c

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    .line 627
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08018d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 638
    new-instance v7, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v9, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v10, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_TEXT_WIDTH:I

    int-to-float v11, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_TEXT_HEIGHT:I

    int-to-float v12, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08018d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_TEXT_SIZE:I

    int-to-float v14, v2

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    .line 641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 655
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v2, :cond_3

    .line 656
    new-instance v7, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v9, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_SNAPSHOT_MARGIN_Y:I

    add-int/2addr v2, v3

    int-to-float v10, v2

    const v11, 0x7f02010d

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    .line 662
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801b3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 667
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 669
    new-instance v7, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v9, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v10, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_TEXT_WIDTH:I

    int-to-float v11, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_TEXT_HEIGHT:I

    int-to-float v12, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0801b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_TEXT_SIZE:I

    int-to-float v14, v2

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 687
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v2, :cond_4

    .line 688
    new-instance v7, Lcom/samsung/android/glview/GLButton;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_STOP_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v9, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_STOP_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_SNAPSHOT_MARGIN_Y:I

    add-int/2addr v2, v3

    int-to-float v10, v2

    const v11, 0x7f020109

    const v12, 0x7f02010a

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    .line 694
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801d8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 705
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->makeRecordingAnimation()V

    .line 706
    return-void

    .line 565
    .end local v15    # "recRemainTimeTextWidth":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v4, v16

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v4

    add-float v4, v4, v16

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_POS_Y:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_0

    .line 602
    .restart local v15    # "recRemainTimeTextWidth":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    goto/16 :goto_1

    .line 624
    :cond_2
    new-instance v7, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v9, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v10, v2

    const v11, 0x7f02010c

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_2

    .line 659
    :cond_3
    new-instance v7, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v9, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v10, v2

    const v11, 0x7f02010d

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_3

    .line 691
    :cond_4
    new-instance v7, Lcom/samsung/android/glview/GLButton;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_STOP_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v9, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_STOP_BUTTON_POS_Y:I

    int-to-float v10, v2

    const v11, 0x7f020109

    const v12, 0x7f02010a

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_4
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;)Z
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/16 v4, 0xa20

    const/4 v2, 0x1

    .line 710
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 711
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoCallbackCnt:I

    if-ne v1, v2, :cond_2

    .line 712
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoCallbackCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoCallbackCnt:I

    .line 713
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    const-string v1, "sef_file_type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 715
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->updateDBForFlipPhoto(Landroid/content/ContentValues;Lcom/sec/android/app/camera/util/ContentData;)V

    .line 718
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/ContentData;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/util/ContentData;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoRearContentData:Lcom/sec/android/app/camera/util/ContentData;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    move v1, v2

    .line 733
    :goto_1
    return v1

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 722
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoCallbackCnt:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 723
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipPhotoDBPrepareCompleted:Z

    .line 724
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoCallbackCnt:I

    .line 725
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 726
    const-string v1, "sef_file_type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 727
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->updateDBForFlipPhoto(Landroid/content/ContentValues;Lcom/sec/android/app/camera/util/ContentData;)V

    .line 729
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoFrontContentData:Lcom/sec/android/app/camera/util/ContentData;

    goto :goto_0

    .line 733
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onDualCaptureAvailable(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 738
    const-string v0, "Dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDualCaptureAvailable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualCaptureAvailable:I

    .line 740
    return-void
.end method

.method public onDualTrackingAvailable(I)V
    .locals 3
    .param p1, "arg0"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 746
    const-string v0, "Dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDualTrackingAvailable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    return-void
.end method

.method public onEngineStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    .line 751
    const-string v0, "Dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEngineStateChanged : state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    packed-switch p1, :pswitch_data_0

    .line 772
    :goto_0
    return-void

    .line 754
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideBoundaryRect()V

    goto :goto_0

    .line 757
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isSwitchToCameraPreview()Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setDualEffectSync(I)V

    .line 759
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setMultiTrackMode(Z)V

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setEffect(I)V

    goto :goto_0

    .line 766
    :pswitch_2
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 767
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectVisibleForRecording(Z)V

    goto :goto_0

    .line 752
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onImageStoringCompleted()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 776
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 777
    iget-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipPhotoDBPrepareCompleted:Z

    if-eqz v6, :cond_1

    .line 779
    const-string v2, "FlipPhoto_002"

    .line 780
    .local v2, "keyName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoRearContentData:Lcom/sec/android/app/camera/util/ContentData;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/util/ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 781
    .local v3, "rearImageFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoFrontContentData:Lcom/sec/android/app/camera/util/ContentData;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/util/ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 784
    .local v1, "frontImageFile":Ljava/io/File;
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 785
    const/16 v6, 0xa20

    const/4 v7, 0x1

    invoke-static {v3, v2, v1, v6, v7}, Lcom/sec/android/secvision/sef/SEF;->addSEFData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I

    .line 786
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoRearContentData:Lcom/sec/android/app/camera/util/ContentData;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/util/ContentData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoRearContentData:Lcom/sec/android/app/camera/util/ContentData;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/util/ContentData;->getOrientation()I

    move-result v8

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 787
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoRearContentData:Lcom/sec/android/app/camera/util/ContentData;

    invoke-interface {v6, v7}, Lcom/sec/android/app/camera/interfaces/Engine;->setLastContentData(Lcom/sec/android/app/camera/util/ContentData;)V

    .line 788
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 789
    const-string v6, "Dual"

    const-string v7, "failed to delete front image"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    :cond_0
    :goto_0
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoCallbackCnt:I

    .line 805
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipPhotoDBPrepareCompleted:Z

    .line 806
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipCaptureStarted:Z

    .line 810
    .end local v1    # "frontImageFile":Ljava/io/File;
    .end local v2    # "keyName":Ljava/lang/String;
    .end local v3    # "rearImageFile":Ljava/io/File;
    :cond_1
    :goto_1
    return v4

    .line 792
    .restart local v1    # "frontImageFile":Ljava/io/File;
    .restart local v2    # "keyName":Ljava/lang/String;
    .restart local v3    # "rearImageFile":Ljava/io/File;
    :cond_2
    const/16 v6, 0xa20

    const/4 v7, 0x1

    :try_start_1
    invoke-static {v1, v2, v3, v6, v7}, Lcom/sec/android/secvision/sef/SEF;->addSEFData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I

    .line 793
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoFrontContentData:Lcom/sec/android/app/camera/util/ContentData;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/util/ContentData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoFrontContentData:Lcom/sec/android/app/camera/util/ContentData;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/util/ContentData;->getOrientation()I

    move-result v8

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 794
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoFrontContentData:Lcom/sec/android/app/camera/util/ContentData;

    invoke-interface {v6, v7}, Lcom/sec/android/app/camera/interfaces/Engine;->setLastContentData(Lcom/sec/android/app/camera/util/ContentData;)V

    .line 795
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 796
    const-string v6, "Dual"

    const-string v7, "failed to delete rear image"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 799
    :catch_0
    move-exception v0

    .line 800
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "Dual"

    const-string v7, "failed to add SEF data for Flip Photo!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "frontImageFile":Ljava/io/File;
    .end local v2    # "keyName":Ljava/lang/String;
    .end local v3    # "rearImageFile":Ljava/io/File;
    :cond_3
    move v4, v5

    .line 810
    goto :goto_1
.end method

.method public onInactivate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 815
    const-string v0, "Dual"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipPhotoDBPrepareCompleted:Z

    .line 818
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 819
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingTime:I

    if-ge v0, v4, :cond_2

    .line 820
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->cancelRecording()V

    .line 824
    :goto_0
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingDualMode:I

    .line 827
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->unregisterRecordingController()V

    .line 828
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 829
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 830
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    .line 831
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    .line 833
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 834
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->clearSideQuickSetting()V

    .line 839
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->applyVisible()V

    .line 840
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideBoundaryRect()V

    .line 842
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->saveDualEffectPositionInPreference()V

    .line 844
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->unregisterListener(Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;)V

    .line 845
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 847
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 848
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 849
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setDualListener(Lcom/sec/android/seccamera/SecCamera$DualEventListener;)V

    .line 850
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setMultiTrackMode(Z)V

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0xbb9

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 854
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->clearDual()V

    .line 855
    return-void

    .line 822
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->stopRecordingForced()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 859
    sparse-switch p1, :sswitch_data_0

    .line 867
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 863
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    const/4 v0, 0x1

    goto :goto_0

    .line 859
    nop

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
    const/4 v0, 0x1

    .line 872
    sparse-switch p1, :sswitch_data_0

    .line 899
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 874
    :sswitch_0
    const-string v1, "Dual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp : keyCode - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualBoundryRectVisibility:Z

    if-eqz v1, :cond_1

    .line 876
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideBoundaryRect()V

    goto :goto_0

    .line 879
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    .line 880
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->stopRecording()V

    goto :goto_0

    .line 887
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 892
    :sswitch_2
    const-string v1, "Dual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp : keyCode - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    .line 894
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->stopRecording()V

    goto :goto_0

    .line 872
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

.method public onLongPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 904
    const-string v0, "Dual"

    const-string v1, "onLongPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 909
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    .line 917
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualBoundryRectVisibility:Z

    if-nez v0, :cond_0

    .line 918
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->showBoundaryRect()V

    .line 919
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getSideLock()I

    move-result v0

    if-nez v0, :cond_2

    .line 920
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setDraggable(Z)V

    .line 922
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setGrowable(Z)V

    .line 923
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->sendHideBoundaryRectMessage()V

    goto :goto_0
.end method

.method public onMediaRecorderPreparedEvent(Lcom/sec/android/secmediarecorder/SecMediaRecorder;)V
    .locals 2
    .param p1, "mediaRecorder"    # Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .prologue
    .line 929
    const-string v0, "Dual"

    const-string v1, "onMediaRecorderPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setMaxRecordingTime()V

    .line 931
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 932
    return-void
.end method

.method public onMenuSelected(II)Z
    .locals 3
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 936
    const-string v0, "Dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuSelected: menuId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", modeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    packed-switch p1, :pswitch_data_0

    .line 946
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 940
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/Dual;->setEffect(I)V

    goto :goto_0

    .line 938
    nop

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
    .end packed-switch
.end method

.method public onMove(Lcom/samsung/android/glview/GLView;FFFF)V
    .locals 10
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 951
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->calculatePreviewRectBoundary()V

    .line 957
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMaxBound()V

    .line 959
    cmpl-float v0, p4, p5

    if-lez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCurrentEffect:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    :cond_2
    cmpg-float v0, p4, p5

    if-gez v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCurrentEffect:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    if-eqz v0, :cond_5

    :cond_3
    cmpg-float v0, p4, p5

    if-gez v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCurrentEffect:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    :cond_4
    cmpl-float v0, p4, p5

    if-lez v0, :cond_a

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCurrentEffect:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    if-nez v0, :cond_a

    .line 963
    :cond_5
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v8

    .line 964
    .local v8, "rect":Landroid/graphics/RectF;
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v9

    .line 965
    .local v9, "rotateRect":Landroid/graphics/RectF;
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    iget v1, v9, Landroid/graphics/RectF;->left:F

    iget v2, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setPosition(FFFF)V

    .line 966
    iget v0, v9, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v0, v9, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualPipPosition(FFFFIIZ)V

    .line 972
    .end local v8    # "rect":Landroid/graphics/RectF;
    .end local v9    # "rotateRect":Landroid/graphics/RectF;
    :goto_1
    float-to-int v0, p2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualEffectLeftTopX(I)V

    .line 973
    float-to-int v0, p3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualEffectLeftTopY(I)V

    .line 974
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthFactor:F

    div-float v0, p4, v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualEffectWidth(I)V

    .line 975
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightFactor:F

    div-float v0, p5, v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualEffectHeight(I)V

    .line 977
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualBoundryRectVisibility:Z

    if-nez v0, :cond_9

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getRectBeforeDragged()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0, p2}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getRectBeforeDragged()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v0, p3}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_9

    .line 979
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->showBoundaryRect()V

    .line 980
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_7

    .line 981
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 983
    :cond_7
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getSideLock()I

    move-result v0

    if-nez v0, :cond_8

    .line 984
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setDraggable(Z)V

    .line 986
    :cond_8
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setGrowable(Z)V

    .line 987
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->sendHideBoundaryRectMessage()V

    .line 990
    :cond_9
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualBoundryRectVisibility:Z

    if-eqz v0, :cond_0

    .line 991
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->sendHideBoundaryRectMessage()V

    goto/16 :goto_0

    .line 969
    :cond_a
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    int-to-float v0, v0

    sub-float v1, p2, v0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    int-to-float v0, v0

    sub-float v2, p3, v0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    move-object v0, p0

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualPipPosition(FFFFII)V

    goto :goto_1
.end method

.method public onNewImageLoggingPrepared(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 997
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v0, "Z119"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getDualEffectString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    return-void
.end method

.method public onNewVideoLoggingPrepared(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 1002
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v0, "Z120"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getDualEffectString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    return-void
.end method

.method public onRecordKeyReleased()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1007
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 1008
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->applyVisible()V

    .line 1009
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideAllBoundaryRect()V

    .line 1010
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectVisibleForRecording(Z)V

    .line 1011
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->applyInvisible()V

    .line 1012
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->startRecording()V

    .line 1014
    :cond_0
    return v2
.end method

.method public onRecordingEvent(I)V
    .locals 5
    .param p1, "event"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1019
    packed-switch p1, :pswitch_data_0

    .line 1048
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1021
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setScreenForRecording()V

    .line 1023
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1024
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0

    .line 1032
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x9

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 1033
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 1034
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 1035
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideRecordingButtonWithAnimation()V

    .line 1036
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1037
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0

    .line 1040
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 1041
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideRecordingButtonWithAnimation()V

    .line 1042
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1043
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0

    .line 1019
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onRecordingMaxDurationReached()V
    .locals 3

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0801fe

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1054
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->onStopRecordingRequested(Z)V

    .line 1055
    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 0

    .prologue
    .line 1059
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->stopRecording()V

    .line 1060
    return-void
.end method

.method protected onRecordingRestricted(ZZ)V
    .locals 0
    .param p1, "isRestricted"    # Z
    .param p2, "stopForced"    # Z

    .prologue
    .line 1232
    if-eqz p1, :cond_0

    .line 1233
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/Dual;->onStopRecordingRequested(Z)V

    .line 1235
    :cond_0
    return-void
.end method

.method public onRecordingTick(JJ)V
    .locals 3
    .param p1, "elapsedTime"    # J
    .param p3, "fileSize"    # J

    .prologue
    .line 1064
    const-string v0, "Dual"

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

    .line 1066
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1067
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->startTimer()V

    .line 1072
    :goto_0
    return-void

    .line 1069
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/Dual;->updateRecordingTime(J)V

    .line 1070
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->startBlinkIndicatorRecIcon()V

    goto :goto_0
.end method

.method public onRectHandlerClick(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 1076
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 1077
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_1

    .line 1078
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->onDualModeRecodingSwitchCamera()V

    .line 1084
    :goto_0
    return v0

    .line 1080
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->onDualModeSwitchCamera()V

    goto :goto_0

    .line 1084
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 1090
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 2

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    .line 1096
    const/4 v0, 0x1

    .line 1098
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 2
    .param p1, "captureMethod"    # I

    .prologue
    const/4 v0, 0x1

    .line 1103
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1104
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipCaptureStarted:Z

    if-eqz v1, :cond_0

    .line 1113
    :goto_0
    return v0

    .line 1107
    :cond_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipCaptureStarted:Z

    .line 1110
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb8

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFS(I)V

    .line 1111
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCaptureMethod:I

    .line 1112
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(I)V

    .line 1113
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 1118
    const-string v0, "Dual"

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

    .line 1119
    packed-switch p1, :pswitch_data_0

    .line 1143
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1121
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setCaptureFlipPhotoMode()V

    goto :goto_0

    .line 1128
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1129
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelIntervalCapture()V

    .line 1130
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 1131
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1134
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipCaptureStarted:Z

    goto :goto_0

    .line 1119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onStopRecordingRequested(Z)V
    .locals 2
    .param p1, "forced"    # Z

    .prologue
    .line 1147
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingTime:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1148
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->cancelRecording()V

    .line 1156
    :goto_0
    return-void

    .line 1150
    :cond_0
    if-eqz p1, :cond_1

    .line 1151
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->stopRecordingForced()V

    goto :goto_0

    .line 1153
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->stopRecording()V

    goto :goto_0
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 1160
    const-string v0, "Dual"

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

    .line 1161
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 1165
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 1167
    :cond_1
    if-nez p1, :cond_3

    .line 1168
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1169
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 1170
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1171
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 1178
    :cond_3
    :goto_0
    return-void

    .line 1174
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1175
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1182
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1183
    const-string v0, "duration"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getVideoRecordingTimeInMilliSecond()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1184
    const-string v0, "recording_mode"

    const-string v1, "4"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoStoringCompleted()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1191
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualMsgHandler:Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

    if-nez v0, :cond_1

    .line 1198
    :cond_0
    :goto_0
    return v1

    .line 1196
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendUpdateVideoThumbnailMessage()V

    goto :goto_0
.end method

.method public onVideoStoringPreparedEvent()V
    .locals 0

    .prologue
    .line 1203
    return-void
.end method

.method protected pauseRecording()V
    .locals 2

    .prologue
    .line 1238
    const-string v0, "Dual"

    const-string v1, "pauseRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->PAUSE_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1242
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePauseMultiTrackRecording()V

    .line 1247
    :goto_0
    return-void

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePauseVideoRecording()V

    goto :goto_0
.end method

.method protected resumeRecording()V
    .locals 2

    .prologue
    .line 1250
    const-string v0, "Dual"

    const-string v1, "resumeRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->RESUME_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1254
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleResumeMultiTrackRecording()V

    .line 1259
    :goto_0
    return-void

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleResumeVideoRecording()V

    goto :goto_0
.end method

.method protected startRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1262
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1263
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    .line 1264
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 1265
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x8

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 1267
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->registerRecordingControllerOnSecImaging()V

    .line 1268
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->START_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1270
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    .line 1271
    .local v0, "currentCamcorderResolution":I
    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    .line 1272
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(I)Z

    .line 1275
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setMaxVideoFileSize()V

    .line 1276
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->startRecordingPreviewVI()V

    .line 1277
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSwitchToCamcorderPreview()V

    .line 1278
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->finishRecordingPreviewVI()V

    .line 1279
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectVisibleForRecording(Z)V

    .line 1281
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1282
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->updateStorageStatus()V

    .line 1283
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setMaxRecordingTime()V

    .line 1284
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePrepareMultiTrackRecording()V

    .line 1285
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartMultiTrackRecording()V

    .line 1291
    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopping:Z

    .line 1292
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBlinkCount:I

    .line 1294
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1295
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1297
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_2

    .line 1298
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1299
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1300
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1301
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1302
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1303
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1306
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1307
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1308
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 1311
    :cond_3
    return-void

    .line 1287
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePrepareVideoRecording()V

    .line 1288
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartVideoRecording()V

    goto :goto_0
.end method

.method protected stopRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1314
    const-string v0, "Dual"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingTime:I

    if-lt v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopping:Z

    if-eqz v0, :cond_1

    .line 1317
    :cond_0
    const-string v0, "Dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecording : already stopping - recordingTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :goto_0
    return-void

    .line 1320
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopping:Z

    .line 1321
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->restoreDualResolution(I)V

    .line 1322
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1323
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1325
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1326
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopMultiTrackRecording()V

    .line 1330
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->stopRecordingTickTimer()V

    .line 1331
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingTime:I

    goto :goto_0

    .line 1328
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopVideoRecordingSync()V

    goto :goto_1
.end method

.method protected stopRecordingForced()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1335
    const-string v0, "Dual"

    const-string v1, "stopRecordingForced"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingTime:I

    if-lt v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopping:Z

    if-eqz v0, :cond_1

    .line 1338
    :cond_0
    const-string v0, "Dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecordingForced : already stopping - recordingTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :goto_0
    return-void

    .line 1342
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1343
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1344
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1345
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopMultiTrackRecording()V

    .line 1350
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->stopRecordingTickTimer()V

    .line 1351
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingTime:I

    .line 1353
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopping:Z

    goto :goto_0

    .line 1347
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopVideoRecordingForced()V

    goto :goto_1
.end method
