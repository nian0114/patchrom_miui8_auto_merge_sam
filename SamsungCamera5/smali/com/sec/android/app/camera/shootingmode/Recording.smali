.class public Lcom/sec/android/app/camera/shootingmode/Recording;
.super Lcom/sec/android/app/camera/shootingmode/RecordingController;
.source "Recording.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/Recording$2;,
        Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_100:I = 0x64

.field private static final ANIMATION_DURATION_130:I = 0x82

.field private static final ANIMATION_DURATION_300:I = 0x12c

.field private static final ANIMATION_DURATION_470:I = 0x1d6

.field private static final ANIMATION_DURATION_570:I = 0x23a

.field private static final CAF_BUTTON_DIAMETER:I

.field private static final CAF_BUTTON_POS_X:I

.field private static final CAF_BUTTON_POS_Y:I

.field private static final COVER_BACK_BUTTON_POS_X:I

.field private static final COVER_BACK_BUTTON_POS_Y:I

.field private static final COVER_BACK_BUTTON_POS_Y_RTL:I

.field private static final COVER_CAF_BUTTON_POS_X:I

.field private static final COVER_CAF_BUTTON_POS_Y:I

.field private static final COVER_INDICATOR_POS_X:I

.field private static final COVER_RECORDING_BUTTON_DIAMETER:I

.field private static final COVER_RECORDING_INDICATOR_GROUP_HEIGHT:I

.field private static final COVER_RECORDING_PAUSE_BUTTON_POS_X:I

.field private static final COVER_RECORDING_PAUSE_BUTTON_POS_Y:I

.field private static final COVER_RECORDING_REC_TIME_TEXT_COLOR:I

.field private static final COVER_RECORDING_STOP_BUTTON_POS_X:I

.field private static final COVER_RECORDING_STOP_BUTTON_POS_Y:I

.field private static final COVER_REC_ICON_WIDTH:I

.field private static final COVER_REC_SIZE_TEXT_SIZE:I

.field private static final COVER_SNAPSHOT_BUTTON_POS_Y:I

.field private static final FULL_SCREEN_HEIGHT:I

.field private static final FULL_SCREEN_WIDTH:I

.field private static final INDICATOR_GROUP_HEIGHT:I

.field private static final INDICATOR_GROUP_LANDSCAPE_POS_X:I

.field private static final INDICATOR_GROUP_LANDSCAPE_POS_Y:I

.field private static final INDICATOR_GROUP_WIDTH:I

.field private static final KEYBOARD_COVER_OFFSET_POS_X:I

.field private static final KEYBOARD_COVER_RECORDING_BUTTON_TEXT_MARGIN:I

.field private static final KEYBOARD_COVER_RECORDING_INDICATOR_POS_X:I

.field private static final KEYBOARD_COVER_RECORDING_PAUSE_BUTTON_POS_X:I

.field private static final KEYBOARD_COVER_RECORDING_PAUSE_BUTTON_TEXT_SIZE:I

.field private static final KEYBOARD_COVER_RECORDING_STOP_BUTTON_POS_X:I

.field private static final KEYBOARD_COVER_SNAPSHOT_BUTTON_POS_X:I

.field private static final PROGRESSBAR_HEIGHT:I

.field private static final PROGRESSBAR_POS_X:I

.field private static final PROGRESSBAR_SIDE_MARGIN:I

.field private static final PROGRESSBAR_WIDTH:I

.field private static final PROGRESS_GROUP_HEIGHT:I

.field private static final PROGRESS_GROUP_POS_X:I

.field private static final PROGRESS_GROUP_POS_X_PORTRAIT:I

.field private static final PROGRESS_GROUP_POS_Y:I

.field private static final PROGRESS_GROUP_WIDTH:I

.field private static final PROGRESS_MAX_SIZE_POS_X:I

.field private static final PROGRESS_SIZE_TEXT_WIDTH:I

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

.field private static final RECORDING_REC_TIME_GROUP_1_1_RATIO_MARGIN:I

.field private static final RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

.field private static final RECORDING_REC_TIME_GROUP_HEIGHT:I

.field private static final RECORDING_REC_TIME_GROUP_POS_Y:I

.field private static final RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

.field private static final RECORDING_REC_TIME_GROUP_WIDTH:I

.field private static final RECORDING_REC_TIME_TEXT_HEIGHT:I

.field private static final RECORDING_REC_TIME_TEXT_POS_X:I

.field private static final RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

.field private static final RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

.field private static final RECORDING_SIZE_TEXT_STROKE_COLOR:I

.field private static final RECORDING_SNAPSHOT_MARGIN_Y:I

.field private static final RECORDING_STOP_BUTTON_POS_X:I

.field private static final RECORDING_STOP_BUTTON_POS_Y:I

.field private static final REC_INDICATOR_TEXT_SIZE:F

.field private static final REC_SIZE_TEXT_SIZE:I

.field private static final RIGHT_SIDE_MENU_POS_X:I

.field private static final SHUTTER_BUTTON_POS_Y:I

.field private static final SHUTTER_BUTTON_WIDTH:I

.field private static final SIDE_MENU_WIDTH:I

.field private static final SNAPSHOT_BUTTON_POS_X:I

.field private static final SNAPSHOT_BUTTON_POS_Y:I

.field private static final SNAPSHOT_BUTTON_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "Recording"

.field private static final VIEW_MODE_INDICATOR_TIMEOUT:I = 0x7d0


# instance fields
.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBlinkCount:I

.field private mCAFButton:Lcom/samsung/android/glview/GLButton;

.field private mCoverBackButton:Lcom/samsung/android/glview/GLButton;

.field private mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

.field private mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

.field private mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

.field private mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

.field private mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

.field private mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

.field private mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

.field private mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

.field private mCoverStopButton:Lcom/samsung/android/glview/GLButton;

.field private mCurRecSize:Lcom/samsung/android/glview/GLText;

.field private final mHideViewModeIndicator:Ljava/lang/Runnable;

.field private mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

.field private mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

.field private mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

.field private mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mMaxRecSize:Lcom/samsung/android/glview/GLText;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mPauseButton:Lcom/samsung/android/glview/GLButton;

.field private mPauseButtonText:Lcom/samsung/android/glview/GLText;

.field private mProgress:I

.field private mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

.field private mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

.field private mRecordingTime:I

.field private mRemainRecordingTime:Ljava/lang/String;

.field private mResumeButton:Lcom/samsung/android/glview/GLButton;

.field private mResumeButtonText:Lcom/samsung/android/glview/GLText;

.field private final mShutterSnapshotRatio:F

.field private mSnapShotButton:Lcom/samsung/android/glview/GLButton;

.field private mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

.field private final mSnapshotShutterRatio:F

.field private mStopButton:Lcom/samsung/android/glview/GLButton;

.field private mTextAnimation:Landroid/view/animation/AlphaAnimation;

.field private mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

.field private pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private final translationDeltaY:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v5, 0x7f090329

    const v4, 0x7f09019d

    const v3, 0x7f09010f

    const/4 v0, 0x1

    .line 67
    const v1, 0x7f0901bf

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_WIDTH:I

    .line 68
    const v1, 0x7f0901be

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_HEIGHT:I

    .line 69
    const v1, 0x7f090214

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->SIDE_MENU_WIDTH:I

    .line 70
    sget v1, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->SIDE_MENU_WIDTH:I

    sub-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    .line 71
    const v1, 0x7f0902dc

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_INDICATOR_TEXT_SIZE:F

    .line 72
    const v1, 0x7f0901a5

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_SIZE_TEXT_SIZE:I

    .line 74
    const v1, 0x7f09020e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:I

    .line 75
    const v1, 0x7f09020b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_POS_Y:I

    .line 78
    const v1, 0x7f0900ef

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_POS_Y:I

    .line 79
    const v1, 0x7f0900f1

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_WIDTH:I

    .line 80
    const v1, 0x7f0900ee

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    .line 81
    const v1, 0x7f0900ec

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_1_1_RATIO_MARGIN:I

    .line 82
    const v1, 0x7f0900ed

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    .line 83
    const v1, 0x7f0900f0

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    .line 84
    const v1, 0x7f0901b1

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    .line 85
    const v1, 0x7f0901b0

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_LEFT_MARGIN:I

    .line 86
    const v1, 0x7f0901b3

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_POS_X:I

    .line 87
    const v1, 0x7f0901b2

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    .line 88
    const v1, 0x7f0a0052

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    .line 89
    const v1, 0x7f0c0037

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    .line 90
    const v1, 0x7f0c0010

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    .line 93
    const v1, 0x7f090155

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_WIDTH:I

    .line 94
    const v1, 0x7f090151

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_HEIGHT:I

    .line 95
    const v1, 0x7f090153

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    .line 96
    const v1, 0x7f090154

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_LANDSCAPE_POS_Y:I

    .line 99
    const v1, 0x7f09008d

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_STOP_BUTTON_POS_X:I

    .line 100
    sget v1, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_STOP_BUTTON_POS_Y:I

    .line 101
    sget v1, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_STOP_BUTTON_POS_X:I

    const v2, 0x7f0902c5

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_PAUSE_BUTTON_POS_X:I

    .line 102
    const v1, 0x7f09008a

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_PAUSE_BUTTON_POS_Y:I

    .line 103
    const v1, 0x7f090082

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_BACK_BUTTON_POS_X:I

    .line 104
    const v1, 0x7f090083

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_BACK_BUTTON_POS_Y:I

    .line 105
    const v1, 0x7f090085

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_BACK_BUTTON_POS_Y_RTL:I

    .line 106
    const v1, 0x7f090088

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_SNAPSHOT_BUTTON_POS_Y:I

    .line 107
    const v1, 0x7f090305

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_ICON_WIDTH:I

    .line 108
    const v1, 0x7f090089

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_INDICATOR_GROUP_HEIGHT:I

    .line 109
    const v1, 0x7f090086

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_INDICATOR_POS_X:I

    .line 110
    const v1, 0x7f090302

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_SIZE_TEXT_SIZE:I

    .line 111
    const v1, 0x7f0c000b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_REC_TIME_TEXT_COLOR:I

    .line 112
    const v1, 0x7f090087

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_BUTTON_DIAMETER:I

    .line 113
    const v1, 0x7f090303

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_CAF_BUTTON_POS_X:I

    .line 114
    sget v1, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_HEIGHT:I

    const v2, 0x7f090304

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_CAF_BUTTON_POS_Y:I

    .line 117
    const v1, 0x7f09010a

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_OFFSET_POS_X:I

    .line 118
    sget v1, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_OFFSET_POS_X:I

    sub-int/2addr v1, v2

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_STOP_BUTTON_POS_X:I

    .line 120
    sget v1, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_OFFSET_POS_X:I

    sub-int/2addr v1, v2

    const v2, 0x7f09010d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_PAUSE_BUTTON_POS_X:I

    .line 122
    sget v1, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_PAUSE_BUTTON_POS_X:I

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_SNAPSHOT_BUTTON_POS_X:I

    .line 123
    sget v1, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_OFFSET_POS_X:I

    sub-int/2addr v1, v2

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    const v2, 0x7f09010c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_INDICATOR_POS_X:I

    .line 126
    const v1, 0x7f09010e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_PAUSE_BUTTON_TEXT_SIZE:I

    .line 127
    const v1, 0x7f09010b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_BUTTON_TEXT_MARGIN:I

    .line 130
    const v1, 0x7f0901a2

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_WIDTH:I

    .line 131
    const v1, 0x7f09019e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    .line 132
    const v1, 0x7f09019f

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_X:I

    .line 133
    const v1, 0x7f0901a0

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_X_PORTRAIT:I

    .line 134
    const v1, 0x7f0901a1

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_Y:I

    .line 135
    const v1, 0x7f0901a6

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_SIZE_TEXT_WIDTH:I

    .line 136
    const v1, 0x7f0901a4

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_SIDE_MARGIN:I

    .line 137
    sget v1, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_SIZE_TEXT_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_SIDE_MARGIN:I

    add-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_POS_X:I

    .line 138
    const v1, 0x7f0901a7

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_WIDTH:I

    .line 139
    const v1, 0x7f0901a3

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_HEIGHT:I

    .line 140
    sget v1, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_SIZE_TEXT_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_MAX_SIZE_POS_X:I

    .line 143
    const v1, 0x7f0901ad

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_SNAPSHOT_MARGIN_Y:I

    .line 144
    const v1, 0x7f090198

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_X:I

    .line 145
    const v1, 0x7f090199

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_Y:I

    .line 146
    const v1, 0x7f0902d7

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    .line 147
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    .line 148
    const v1, 0x7f09019c

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_WIDTH:I

    .line 149
    const v1, 0x7f09019a

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_HEIGHT:I

    .line 150
    sget v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    .line 151
    const v1, 0x7f09019b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_SIZE:I

    .line 154
    const v1, 0x7f0901aa

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_POS_X:I

    .line 155
    const v1, 0x7f0901ab

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_POS_Y:I

    .line 156
    const v1, 0x7f0901ac

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_WIDTH:I

    .line 159
    const v1, 0x7f0901ae

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_STOP_BUTTON_POS_X:I

    .line 160
    const v1, 0x7f0901af

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_STOP_BUTTON_POS_Y:I

    .line 163
    const v1, 0x7f090194

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_POS_X:I

    .line 164
    const v1, 0x7f090195

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_POS_Y:I

    .line 165
    const v1, 0x7f090193

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_DIAMETER:I

    .line 167
    const v1, 0x7f0a0031

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_MODE_TEXT_SHADOW_OFFSET:I

    .line 168
    const v1, 0x7f0a0030

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_MODE_TEXT_SHADOW:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 5
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 181
    sget v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_POS_Y:I

    sget v1, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_POS_Y:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->translationDeltaY:F

    .line 182
    sget v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mShutterSnapshotRatio:F

    .line 183
    sget v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapshotShutterRatio:F

    .line 184
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 185
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 195
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Recording$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Recording$1;-><init>(Lcom/sec/android/app/camera/shootingmode/Recording;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mHideViewModeIndicator:Ljava/lang/Runnable;

    .line 228
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTime:I

    .line 229
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgress:I

    .line 231
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBlinkCount:I

    .line 236
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    .line 241
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/Recording;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Recording;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Recording;->blinkIndicatorRecIcon(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/Recording;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Recording;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Recording;->blinkIndicatorRecTime(Z)V

    return-void
.end method

.method private blinkIndicatorRecIcon(Z)V
    .locals 4
    .param p1, "bShow"    # Z

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1221
    const-string v0, "Recording"

    const-string v1, "blinkIndicatorRecIcon"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;->removeMessages(I)V

    .line 1225
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 1226
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1227
    if-eqz p1, :cond_2

    .line 1228
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1240
    :cond_1
    :goto_0
    return-void

    .line 1230
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0

    .line 1233
    :cond_3
    if-eqz p1, :cond_4

    .line 1234
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0

    .line 1236
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private blinkIndicatorRecTime(Z)V
    .locals 4
    .param p1, "bShow"    # Z

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1243
    const-string v0, "Recording"

    const-string v1, "blinkIndicatorRecTime"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;->removeMessages(I)V

    .line 1249
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 1250
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1251
    if-eqz p1, :cond_2

    .line 1252
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1264
    :cond_1
    :goto_0
    return-void

    .line 1254
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 1257
    :cond_3
    if-eqz p1, :cond_4

    .line 1258
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 1260
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method private clear()V
    .locals 2

    .prologue
    .line 1267
    const-string v0, "Recording"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;->access$000(Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;)V

    .line 1269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    .line 1270
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mHideViewModeIndicator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1271
    return-void
.end method

.method private doDimmingRecordingButtons(Z)V
    .locals 1
    .param p1, "dimmed"    # Z

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1277
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1280
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    .line 1281
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1284
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    .line 1285
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1288
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_3

    .line 1289
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1291
    :cond_3
    return-void
.end method

.method private hideCAFButton()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1294
    const-string v0, "Recording"

    const-string v1, "hideCAFButton"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1299
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1300
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1302
    :cond_1
    return-void
.end method

.method private hideCoverRecordingLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1305
    const-string v0, "Recording"

    const-string v1, "hideCoverRecordingLayout"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1308
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1309
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1310
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1311
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1312
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1313
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1314
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1315
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1316
    return-void
.end method

.method private hideRecordingButtonWithAnimation()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 1319
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1320
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-interface {v0, v3, v1, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setRecordingButtonForAnimation(Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;)V

    .line 1326
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableRecordingAnimation()V

    .line 1327
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1328
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1329
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1330
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1331
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1334
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1335
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1337
    :cond_1
    return-void

    .line 1321
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1322
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setRecordingButtonForAnimation(Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;)V

    goto :goto_0

    .line 1324
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-interface {v0, v3, v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setRecordingButtonForAnimation(Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;)V

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

    .line 1340
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1341
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v3, 0x12c

    const/16 v4, 0x82

    new-instance v5, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(IILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1342
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    new-instance v5, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    const/16 v6, 0x12c

    const/16 v7, 0x82

    move v2, v0

    move v3, v1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1344
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1346
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v2, :cond_0

    .line 1347
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1348
    iget-object v12, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->translationDeltaY:F

    neg-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mShutterSnapshotRatio:F

    div-float v4, v2, v3

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_HEIGHT:I

    new-instance v9, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v9}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v2, v0

    move v3, v0

    move v5, v0

    invoke-static/range {v2 .. v10}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1350
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v3, 0x1d6

    const/16 v4, 0x64

    new-instance v5, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(IILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1351
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mShutterSnapshotRatio:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mShutterSnapshotRatio:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    new-instance v9, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v9}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v5, v1

    move v7, v1

    invoke-static/range {v4 .. v11}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1353
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1356
    :cond_0
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1357
    iget-object v12, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->translationDeltaY:F

    neg-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapshotShutterRatio:F

    div-float v4, v2, v3

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_HEIGHT:I

    new-instance v9, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v9}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v2, v0

    move v3, v0

    move v5, v0

    invoke-static/range {v2 .. v10}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1359
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-static {v10, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1360
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapshotShutterRatio:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapshotShutterRatio:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    new-instance v9, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v9}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    move v5, v1

    move v7, v1

    invoke-static/range {v4 .. v11}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1362
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1363
    return-void
.end method

.method private pauseRecording()V
    .locals 1

    .prologue
    .line 1366
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1367
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->PAUSE_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1368
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePauseVideoRecording()V

    .line 1369
    return-void
.end method

.method private resetProgressBar()V
    .locals 2

    .prologue
    .line 1372
    const-string v0, "Recording"

    const-string v1, "resetProgressBar"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgress:I

    if-lez v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgressBar;->setProgress(I)V

    .line 1376
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    const-string v1, "0K"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1378
    :cond_0
    return-void
.end method

.method private resumeRecording()V
    .locals 1

    .prologue
    .line 1381
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->RESUME_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1382
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleResumeVideoRecording()V

    .line 1383
    return-void
.end method

.method private showCAFButton()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1386
    const-string v0, "Recording"

    const-string v1, "showCAFButton"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1389
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1393
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isObjectTrackingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private showRecordingTextAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1400
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 1401
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1402
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1405
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1406
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isRecordingTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1407
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1408
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    .line 1409
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1426
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v0, :cond_1

    .line 1427
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getViewMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->setViewModeIndicator(I)V

    .line 1429
    :cond_1
    return-void

    .line 1411
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1412
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    .line 1413
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 1416
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isRecordingTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1417
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1418
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    .line 1419
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 1421
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1422
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    .line 1423
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method private startBlinkIndicatorRecIcon()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1432
    const-string v0, "Recording"

    const-string v1, "startBlinkIndicatorRecIcon"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 1435
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Recording;->blinkIndicatorRecIcon(Z)V

    .line 1437
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    if-eqz v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1441
    :cond_0
    return-void
.end method

.method private startTimer()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 1444
    const-string v0, "Recording"

    const-string v1, "startTimer"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1447
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isRecordingTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1448
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1449
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecordingTimeLimitInSecond:I

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRemainRecordingTime:Ljava/lang/String;

    .line 1450
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1451
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1453
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_0

    .line 1454
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->showRecordingTextAnimation()V

    .line 1494
    :goto_0
    return-void

    .line 1456
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 1459
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1460
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1461
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1463
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_2

    .line 1464
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->showRecordingTextAnimation()V

    goto :goto_0

    .line 1466
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 1470
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isRecordingTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1471
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1472
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecordingTimeLimitInSecond:I

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRemainRecordingTime:Ljava/lang/String;

    .line 1473
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1474
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1476
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_4

    .line 1477
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->showRecordingTextAnimation()V

    goto :goto_0

    .line 1479
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 1482
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1484
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1485
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1487
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1488
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->showRecordingTextAnimation()V

    goto/16 :goto_0

    .line 1490
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateProgressBarText(J)V
    .locals 11
    .param p1, "bytes"    # J

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x400

    .line 1497
    const-string v2, "Recording"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProgressBarText : bytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isVideoCaptureIntent()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingSizeLimit()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_1

    .line 1500
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    .line 1501
    .local v0, "mMaxSize":J
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    div-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgress:I

    .line 1502
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgress:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLProgressBar;->setProgress(I)V

    .line 1504
    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1505
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    .line 1508
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    div-long v4, p1, v6

    div-long/2addr v4, v6

    cmp-long v2, v4, v8

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, p1, v6

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "M"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1510
    .end local v0    # "mMaxSize":J
    :cond_1
    return-void

    .line 1508
    .restart local v0    # "mMaxSize":J
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, p1, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "K"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V
    .locals 10
    .param p1, "cmd"    # Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    .prologue
    const/4 v4, 0x0

    const/16 v3, -0x181

    const-wide/16 v8, 0x400

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 1513
    const-string v0, "Recording"

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

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Recording$2;->$SwitchMap$com$sec$android$app$camera$shootingmode$RecordingController$RecordingCommand:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1661
    :cond_0
    :goto_0
    return-void

    .line 1517
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1518
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 1521
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1522
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1523
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1525
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1526
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1528
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1529
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1531
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1532
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0

    .line 1535
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableRecordingAnimation()V

    .line 1536
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 1538
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    .line 1541
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    div-long/2addr v0, v8

    div-long/2addr v0, v8

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    .line 1542
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingSizeLimit()J

    move-result-wide v2

    div-long/2addr v2, v8

    div-long/2addr v2, v8

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1548
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1549
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLProgressBar;->setVisibility(I)V

    .line 1550
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1551
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1560
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1561
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1563
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1564
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1565
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1566
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 1567
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 1569
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1570
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1571
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 1572
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 1573
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1574
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1575
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1576
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 1579
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto/16 :goto_0

    .line 1545
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingSizeLimit()J

    move-result-wide v2

    div-long/2addr v2, v8

    div-long/2addr v2, v8

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-ltz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingSizeLimit()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "M"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingSizeLimit()J

    move-result-wide v2

    div-long/2addr v2, v8

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "K"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1553
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLProgressBar;->setVisibility(I)V

    .line 1554
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1555
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1556
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_2

    .line 1585
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1586
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1587
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1589
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1590
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1591
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1592
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1593
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 1595
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1609
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_0

    .line 1597
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1598
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1600
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1601
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1602
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1603
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1604
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1605
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1606
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_4

    .line 1612
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1613
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 1616
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1617
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1620
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1621
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1622
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1623
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1624
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 1626
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1644
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_0

    .line 1628
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 1631
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1632
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1635
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1636
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1637
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1638
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1639
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1640
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1641
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_5

    .line 1649
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_f

    .line 1650
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 1652
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 1653
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_10

    .line 1654
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 1656
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_0

    .line 1515
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

    .line 1664
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTime:I

    .line 1666
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isRecordingTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1667
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1668
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTime:I

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1673
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecordingTimeLimitInSecond:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTime:I

    sub-int/2addr v0, v1

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_3

    .line 1674
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBlinkCount:I

    .line 1681
    :cond_0
    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBlinkCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBlinkCount:I

    if-lez v0, :cond_1

    .line 1682
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->blinkIndicatorRecTime(Z)V

    .line 1684
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    if-eqz v0, :cond_1

    .line 1685
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1695
    :cond_1
    :goto_2
    return-void

    .line 1670
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTime:I

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 1675
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecordingTimeLimitInSecond:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTime:I

    sub-int/2addr v0, v1

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_4

    .line 1676
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBlinkCount:I

    goto :goto_1

    .line 1677
    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecordingTimeLimitInSecond:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTime:I

    sub-int/2addr v0, v1

    if-ne v0, v3, :cond_0

    .line 1678
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBlinkCount:I

    goto :goto_1

    .line 1689
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1690
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTime:I

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 1692
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTime:I

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method protected cancelRecording()V
    .locals 2

    .prologue
    .line 1096
    const-string v0, "Recording"

    const-string v1, "cancelRecording"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 1098
    const-string v0, "Recording"

    const-string v1, "return cancelRecording - record is already stopping"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :goto_0
    return-void

    .line 1102
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1103
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->CANCEL_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1104
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelVideoRecordingSync()V

    .line 1105
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecordingTickTimer()V

    .line 1106
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTime:I

    .line 1108
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->doDimmingRecordingButtons(Z)V

    goto :goto_0
.end method

.method public getMaxFileSizeOfImage()J
    .locals 2

    .prologue
    .line 245
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method protected isSnapShotAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1113
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v1, :cond_1

    .line 1128
    :cond_0
    :goto_0
    return v0

    .line 1116
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1119
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1122
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0x13

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_0

    .line 1125
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEffectRecordingRestricted()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1128
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isZoomAvailable()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 3
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v2, 0x0

    .line 260
    const-string v0, "Recording"

    const-string v1, "onActivate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Recording;->registerRecordingController(Lcom/sec/android/app/camera/interfaces/Engine;)V

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x8

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->unregisterEAM()V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x40

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 272
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/Recording;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->startRecording()V

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    .line 280
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 284
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isRecordingControlAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 285
    const/4 v0, 0x1

    .line 317
    :cond_0
    :goto_0
    return v0

    .line 287
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 289
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 290
    const-string v1, "Recording"

    const-string v2, "Wrong state for touchAF"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isStopPreviewPending()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 295
    const-string v1, "Recording"

    const-string v2, "Preview is not started"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 299
    :cond_3
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_TOUCH_AF:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x12

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusArea(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->showCAFButton()V

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x0

    .line 322
    const-string v0, "Recording"

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

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 331
    :cond_1
    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 336
    const-string v0, "Recording"

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

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void
.end method

.method public onChangeShootingModeParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 3
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    const/16 v2, 0x2a

    .line 342
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_2

    .line 345
    const-string v0, "max-limit-recording-time-uhd"

    invoke-virtual {p1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    const-string v0, "max-limit-recording-time-uhd"

    invoke-virtual {p1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->limitRecordingTimeBySystem(I)V

    .line 358
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 360
    const-string v0, "phase-af"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v0, "dynamic-range-control"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_1
    :goto_1
    return-void

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_3

    .line 349
    const-string v0, "max-limit-recording-time-wqhd"

    invoke-virtual {p1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    const-string v0, "max-limit-recording-time-wqhd"

    invoke-virtual {p1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->limitRecordingTimeBySystem(I)V

    goto :goto_0

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 353
    const-string v0, "max-limit-recording-time-fhd60"

    invoke-virtual {p1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    const-string v0, "max-limit-recording-time-fhd60"

    invoke-virtual {p1, v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->limitRecordingTimeBySystem(I)V

    goto :goto_0

    .line 363
    :cond_4
    const-string v0, "phase-af"

    const-string v1, "on"

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v0, "dynamic-range-control"

    const-string v1, "on"

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 372
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-nez v1, :cond_2

    .line 373
    :cond_0
    const-string v1, "Recording"

    const-string v2, "Call onClick after Clear!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_1
    :goto_0
    return v0

    .line 377
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 378
    const-string v1, "Recording"

    const-string v2, "onClick = mCAFButton"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 381
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0

    .line 384
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 385
    const-string v1, "Recording"

    const-string v2, "onClick = mCoverCAFButton"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 388
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0

    .line 391
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 392
    :cond_5
    const-string v1, "Recording"

    const-string v2, "onClick = mSnapShotButton"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 394
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->onShutterKeyReleased(I)Z

    goto :goto_0

    .line 396
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 397
    :cond_7
    const-string v1, "Recording"

    const-string v2, "onClick = mStopButton"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    goto/16 :goto_0

    .line 403
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 404
    :cond_9
    const-string v1, "Recording"

    const-string v2, "onClick = mPauseButton"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v1

    if-nez v1, :cond_1

    .line 408
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTime:I

    if-lt v1, v0, :cond_1

    .line 411
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->pauseRecording()V

    goto/16 :goto_0

    .line 413
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 414
    :cond_b
    const-string v1, "Recording"

    const-string v2, "onClick = mResumeButton"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v1

    if-nez v1, :cond_1

    .line 418
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->resumeRecording()V

    goto/16 :goto_0

    .line 420
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 421
    const-string v1, "Recording"

    const-string v2, "onClick = mCoverBackButton"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 423
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    .line 430
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 41
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 435
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 436
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 438
    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getHMSFormatStringWidth(F)F

    move-result v11

    .line 439
    .local v11, "recTimeTextWidth":F
    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float v6, v2, v11

    .line 441
    .local v6, "recTimeGroupWidth":F
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 444
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v4

    sub-float/2addr v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_1_1_RATIO_MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_1_1_RATIO_MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 461
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_HEIGHT:I

    int-to-float v5, v5

    sub-float/2addr v5, v11

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v5, v11

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 466
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_LEFT_MARGIN:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x7f0201cd

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 469
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_LEFT_MARGIN:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x7f0201cc

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 472
    new-instance v7, Lcom/samsung/android/glview/GLText;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v9, v2

    const/4 v10, 0x0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v12, v2

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v13

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v14, v2, v3

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 485
    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getMSFormatStringWidth(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const-string v3, " / "

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v3

    add-float v40, v2, v3

    .line 487
    .local v40, "recRemainTimeTextWidth":F
    new-instance v12, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float v16, v2, v40

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    move-object/from16 v13, p1

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 488
    new-instance v12, Lcom/samsung/android/glview/GLText;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v14, v2

    const/4 v15, 0x0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v18

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v19, v2, v3

    move-object/from16 v13, p1

    move/from16 v16, v40

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 492
    sget-boolean v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_MODE_TEXT_SHADOW:Z

    if-eqz v2, :cond_7

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_MODE_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_MODE_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setShadowOffset(FF)V

    .line 497
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v4, v40

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_HEIGHT:I

    int-to-float v5, v5

    sub-float v5, v5, v40

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v4

    add-float v4, v4, v40

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float v5, v5, v40

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 512
    new-instance v12, Lcom/samsung/android/glview/GLViewGroup;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_X:I

    int-to-float v14, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_Y:I

    int-to-float v15, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_WIDTH:I

    int-to-float v0, v2

    move/from16 v16, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    move-object/from16 v13, p1

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 513
    new-instance v12, Lcom/samsung/android/glview/GLText;

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v0, v2

    move/from16 v16, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    const-string v18, "0K"

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_SIZE_TEXT_SIZE:I

    int-to-float v0, v2

    move/from16 v19, v0

    const v2, 0x7f0c0011

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v20

    sget-boolean v21, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_MODE_TEXT_SHADOW:Z

    move-object/from16 v13, p1

    invoke-direct/range {v12 .. v21}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 518
    new-instance v12, Lcom/samsung/android/glview/GLProgressBar;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_POS_X:I

    int-to-float v14, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v15, v2, v3

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_WIDTH:I

    int-to-float v0, v2

    move/from16 v16, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    const v18, 0x7f020144

    const v19, 0x7f020171

    move-object/from16 v13, p1

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLProgressBar;-><init>(Lcom/samsung/android/glview/GLContext;FFFFII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    .line 520
    new-instance v12, Lcom/samsung/android/glview/GLText;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_MAX_SIZE_POS_X:I

    int-to-float v14, v2

    const/4 v15, 0x0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v0, v2

    move/from16 v16, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    const-string v18, ""

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_SIZE_TEXT_SIZE:I

    int-to-float v0, v2

    move/from16 v19, v0

    const v2, 0x7f0c0011

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v20

    sget-boolean v21, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_MODE_TEXT_SHADOW:Z

    move-object/from16 v13, p1

    invoke-direct/range {v12 .. v21}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_X_PORTRAIT:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_X_PORTRAIT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLProgressBar;->setMax(I)V

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 538
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v2, :cond_0

    .line 539
    new-instance v12, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    int-to-float v14, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_LANDSCAPE_POS_Y:I

    int-to-float v15, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_WIDTH:I

    int-to-float v0, v2

    move/from16 v16, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    move-object/from16 v13, p1

    invoke-direct/range {v12 .. v17}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setDirection(I)V

    .line 542
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;->setClipping(Z)V

    .line 545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 549
    :cond_0
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v2, :cond_8

    .line 550
    new-instance v12, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v13

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v14, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_SNAPSHOT_MARGIN_Y:I

    add-int/2addr v2, v3

    int-to-float v15, v2

    const v16, 0x7f02010c

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    .line 556
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08018d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 567
    new-instance v12, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v13

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v14, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v15, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_WIDTH:I

    int-to-float v0, v2

    move/from16 v16, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08018d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_SIZE:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v19, v2, v3

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 584
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v2, :cond_9

    .line 585
    new-instance v12, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v13

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v14, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_SNAPSHOT_MARGIN_Y:I

    add-int/2addr v2, v3

    int-to-float v15, v2

    const v16, 0x7f02010d

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    .line 591
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801b3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 598
    new-instance v12, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v13

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v14, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v15, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_WIDTH:I

    int-to-float v0, v2

    move/from16 v16, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0801b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_SIZE:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v19, v2, v3

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 617
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v2, :cond_1

    .line 618
    new-instance v12, Lcom/samsung/android/glview/GLButton;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v14, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_POS_Y:I

    int-to-float v15, v2

    const v16, 0x7f02010b

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v13, p1

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08010b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 630
    new-instance v12, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v13

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_POS_X:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v14, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v15, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_WIDTH:I

    int-to-float v0, v2

    move/from16 v16, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08010b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_SIZE:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v19, v2, v3

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_POS_X:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    add-int/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_TEXT_MARGIN:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 648
    :cond_1
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    if-eqz v2, :cond_2

    .line 649
    new-instance v12, Lcom/samsung/android/glview/GLButton;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_POS_X:I

    int-to-float v14, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_POS_Y:I

    int-to-float v15, v2

    const v16, 0x7f020023

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v13, p1

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08004b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 662
    :cond_2
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v2, :cond_a

    .line 663
    new-instance v12, Lcom/samsung/android/glview/GLButton;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_STOP_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v14, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_STOP_BUTTON_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_SNAPSHOT_MARGIN_Y:I

    add-int/2addr v2, v3

    int-to-float v15, v2

    const v16, 0x7f020109

    const v17, 0x7f02010a

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v13, p1

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    .line 669
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801d8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 680
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 681
    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_SIZE_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getHMSFormatStringWidth(F)F

    move-result v21

    .line 682
    .local v21, "coverRecTimeTextWidth":F
    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float v16, v2, v21

    .line 684
    .local v16, "coverRecTimeGroupWidth":F
    new-instance v12, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_INDICATOR_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    move-object/from16 v13, p1

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_INDICATOR_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float v5, v5, v21

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_ICON_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 688
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f020088

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 690
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f020087

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 692
    new-instance v17, Lcom/samsung/android/glview/GLText;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_ICON_WIDTH:I

    int-to-float v0, v2

    move/from16 v19, v0

    const/16 v20, 0x0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_INDICATOR_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v22, v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v23

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_SIZE_TEXT_SIZE:I

    int-to-float v0, v2

    move/from16 v24, v0

    sget v25, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_REC_TIME_TEXT_COLOR:I

    const/16 v26, 0x0

    move-object/from16 v18, p1

    invoke-direct/range {v17 .. v26}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 702
    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_SIZE_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getMSFormatStringWidth(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const-string v3, " / "

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_INDICATOR_TEXT_SIZE:F

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v3

    add-float v31, v2, v3

    .line 703
    .local v31, "coverRemainRecTimeTextWidth":F
    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float v26, v2, v31

    .line 704
    .local v26, "coverRemainRecTimeGroupWidth":F
    new-instance v22, Lcom/samsung/android/glview/GLViewGroup;

    const/16 v24, 0x0

    const/16 v25, 0x0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_INDICATOR_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v27, v0

    move-object/from16 v23, p1

    invoke-direct/range {v22 .. v27}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_INDICATOR_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float v5, v5, v31

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_ICON_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 708
    new-instance v27, Lcom/samsung/android/glview/GLText;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_ICON_WIDTH:I

    int-to-float v0, v2

    move/from16 v29, v0

    const/16 v30, 0x0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_INDICATOR_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v32, v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v33

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_SIZE_TEXT_SIZE:I

    int-to-float v0, v2

    move/from16 v34, v0

    sget v35, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_REC_TIME_TEXT_COLOR:I

    const/16 v36, 0x0

    move-object/from16 v28, p1

    invoke-direct/range {v27 .. v36}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 718
    new-instance v32, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v33

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_PAUSE_BUTTON_POS_X:I

    int-to-float v0, v2

    move/from16 v34, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v0, v2

    move/from16 v35, v0

    const v36, 0x7f02008a

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-direct/range {v32 .. v39}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    .line 720
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08018d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 731
    new-instance v32, Lcom/samsung/android/glview/GLButton;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_STOP_BUTTON_POS_X:I

    int-to-float v0, v2

    move/from16 v34, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_STOP_BUTTON_POS_Y:I

    int-to-float v0, v2

    move/from16 v35, v0

    const v36, 0x7f020109

    const v37, 0x7f02010a

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v33, p1

    invoke-direct/range {v32 .. v39}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801d8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 744
    new-instance v32, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v33

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_PAUSE_BUTTON_POS_X:I

    int-to-float v0, v2

    move/from16 v34, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v0, v2

    move/from16 v35, v0

    const v36, 0x7f02008b

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-direct/range {v32 .. v39}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801b3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 757
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 758
    new-instance v32, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v33

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_BACK_BUTTON_POS_X:I

    int-to-float v0, v2

    move/from16 v34, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_BACK_BUTTON_POS_Y_RTL:I

    int-to-float v0, v2

    move/from16 v35, v0

    const v36, 0x7f020086

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-direct/range {v32 .. v39}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 768
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080134

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 774
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v2, :cond_3

    .line 775
    new-instance v32, Lcom/samsung/android/glview/GLButton;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_PAUSE_BUTTON_POS_X:I

    int-to-float v0, v2

    move/from16 v34, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_SNAPSHOT_BUTTON_POS_Y:I

    int-to-float v0, v2

    move/from16 v35, v0

    const v36, 0x7f020089

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v33, p1

    invoke-direct/range {v32 .. v39}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    .line 777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08010b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 789
    :cond_3
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    if-eqz v2, :cond_4

    .line 790
    new-instance v32, Lcom/samsung/android/glview/GLButton;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_CAF_BUTTON_POS_X:I

    int-to-float v0, v2

    move/from16 v34, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_CAF_BUTTON_POS_Y:I

    int-to-float v0, v2

    move/from16 v35, v0

    const v36, 0x7f020023

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v33, p1

    invoke-direct/range {v32 .. v39}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08004b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 826
    .end local v16    # "coverRecTimeGroupWidth":F
    .end local v21    # "coverRecTimeTextWidth":F
    .end local v26    # "coverRemainRecTimeGroupWidth":F
    .end local v31    # "coverRemainRecTimeTextWidth":F
    :cond_4
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->makeRecordingAnimation()V

    .line 827
    return-void

    .line 451
    .end local v40    # "recRemainTimeTextWidth":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v4

    sub-float/2addr v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_0

    .line 457
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v4

    sub-float/2addr v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_POS_Y:I

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_0

    .line 495
    .restart local v40    # "recRemainTimeTextWidth":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    goto/16 :goto_1

    .line 553
    :cond_8
    new-instance v12, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v13

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v14, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v15, v2

    const v16, 0x7f02010c

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_2

    .line 588
    :cond_9
    new-instance v12, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v13

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v14, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v15, v2

    const v16, 0x7f02010d

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_3

    .line 666
    :cond_a
    new-instance v12, Lcom/samsung/android/glview/GLButton;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_STOP_BUTTON_POS_X:I

    add-int/2addr v2, v3

    int-to-float v14, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_STOP_BUTTON_POS_Y:I

    int-to-float v15, v2

    const v16, 0x7f020109

    const v17, 0x7f02010a

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v13, p1

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_4

    .line 763
    .restart local v16    # "coverRecTimeGroupWidth":F
    .restart local v21    # "coverRecTimeTextWidth":F
    .restart local v26    # "coverRemainRecTimeGroupWidth":F
    .restart local v31    # "coverRemainRecTimeTextWidth":F
    :cond_b
    new-instance v32, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v33

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_BACK_BUTTON_POS_X:I

    int-to-float v0, v2

    move/from16 v34, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_BACK_BUTTON_POS_Y:I

    int-to-float v0, v2

    move/from16 v35, v0

    const v36, 0x7f020086

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-direct/range {v32 .. v39}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    goto/16 :goto_5

    .line 802
    .end local v16    # "coverRecTimeGroupWidth":F
    .end local v21    # "coverRecTimeTextWidth":F
    .end local v26    # "coverRemainRecTimeGroupWidth":F
    .end local v31    # "coverRemainRecTimeTextWidth":F
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_INDICATOR_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v5, v11

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_INDICATOR_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->FULL_SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float v5, v5, v40

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_STOP_BUTTON_POS_X:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_STOP_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_PAUSE_BUTTON_POS_X:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_PAUSE_BUTTON_POS_X:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    .line 814
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButtonText:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_PAUSE_BUTTON_TEXT_SIZE:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setFontSize(F)V

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_PAUSE_BUTTON_POS_X:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_PAUSE_BUTTON_POS_X:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    .line 817
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButtonText:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_PAUSE_BUTTON_TEXT_SIZE:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setFontSize(F)V

    .line 820
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v2, :cond_4

    .line 821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_SNAPSHOT_BUTTON_POS_X:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_PAUSE_BUTTON_POS_X:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->RIGHT_SIDE_MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_POS_X:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_BUTTON_TEXT_MARGIN:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButtonText:Lcom/samsung/android/glview/GLText;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_PAUSE_BUTTON_TEXT_SIZE:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setFontSize(F)V

    goto/16 :goto_6
.end method

.method public onImageStoringCompleted()Z
    .locals 2

    .prologue
    .line 831
    const-string v0, "Recording"

    const-string v1, "onImageStoringCompleted"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 837
    const-string v0, "Recording"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 841
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTime:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    .line 842
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->cancelRecording()V

    .line 848
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 849
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 850
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 855
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->hideCAFButton()V

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_2

    .line 858
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 861
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x40

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 863
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->resetProgressBar()V

    .line 864
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->unregisterRecordingController()V

    .line 865
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    .line 867
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->registerEAM()V

    .line 868
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->clear()V

    .line 869
    return-void

    .line 844
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecordingForced()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 873
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isRecordingControlAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 874
    const-string v1, "Recording"

    const-string v2, "Recording control is not available at this moment, ignore key down event"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :goto_0
    return v0

    .line 877
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 887
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 881
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isSnapShotAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 882
    const-string v1, "Recording"

    const-string v2, "returning capture key because recording snapshot is unavailable"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 877
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 892
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isRecordingControlAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 893
    const-string v1, "Recording"

    const-string v2, "Recording control is not available at this moment, ignore key up event"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_0
    :goto_0
    return v0

    .line 896
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 916
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 898
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    .line 899
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    goto :goto_0

    .line 905
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isSnapShotAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 906
    const-string v1, "Recording"

    const-string v2, "returning capture key because recording snapshot is unavailable"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 911
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    .line 912
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    goto :goto_0

    .line 896
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
    .line 921
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecordingTimeLimitInSecond:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 922
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecordingTimeLimitInSecond:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 924
    :cond_0
    return-void
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 928
    const/4 v0, 0x0

    return v0
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
    .line 933
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEffectRecordingRestricted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 935
    const-string v0, "Z029"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectNameForLogging(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 941
    const-string v0, "Z030"

    const-string v1, "Video"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    :cond_1
    return-void

    .line 937
    :cond_2
    const-string v0, "Z028"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectNameForLogging(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 947
    const/4 v0, 0x1

    return v0
.end method

.method public onRecordingEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 952
    packed-switch p1, :pswitch_data_0

    .line 984
    :goto_0
    :pswitch_0
    return-void

    .line 960
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 961
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 962
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 964
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCoverRecordingState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 965
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->hideCoverRecordingLayout()V

    .line 969
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restorePreviousShootingMode()V

    goto :goto_0

    .line 967
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->hideRecordingButtonWithAnimation()V

    goto :goto_1

    .line 972
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 974
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCoverRecordingState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 975
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->hideCoverRecordingLayout()V

    .line 979
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restorePreviousShootingMode()V

    goto :goto_0

    .line 977
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->hideRecordingButtonWithAnimation()V

    goto :goto_2

    .line 952
    nop

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
    .line 989
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0801fe

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 990
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->onStopRecordingRequested(Z)V

    .line 991
    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 4

    .prologue
    .line 995
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 996
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    .line 1006
    :goto_0
    return-void

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getMaxVideoFileSize()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 999
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    goto :goto_0

    .line 1001
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->removeTouchAeRequest()V

    .line 1002
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->removeAfRequest()V

    .line 1003
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopAndRestartVideoRecording()V

    goto :goto_0
.end method

.method protected onRecordingRestricted(ZZ)V
    .locals 0
    .param p1, "isRestricted"    # Z
    .param p2, "stopForced"    # Z

    .prologue
    .line 1133
    if-eqz p1, :cond_0

    .line 1134
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/Recording;->onStopRecordingRequested(Z)V

    .line 1136
    :cond_0
    return-void
.end method

.method public onRecordingTick(JJ)V
    .locals 3
    .param p1, "elapsedTime"    # J
    .param p3, "fileSize"    # J

    .prologue
    .line 1010
    const-string v0, "Recording"

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

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1013
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->startTimer()V

    .line 1018
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->startBlinkIndicatorRecIcon()V

    .line 1019
    return-void

    .line 1015
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingTime(J)V

    .line 1016
    invoke-direct {p0, p3, p4}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateProgressBarText(J)V

    goto :goto_0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 1023
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 1028
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 3
    .param p1, "captureMethod"    # I

    .prologue
    const/4 v2, 0x1

    .line 1033
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1042
    :cond_0
    :goto_0
    return v2

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getRemainRecordingTime()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 1038
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleTakePicture()V

    goto :goto_0

    .line 1040
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x191

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(I)V

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 1047
    return-void
.end method

.method public onStopRecordingRequested(Z)V
    .locals 4
    .param p1, "forced"    # Z

    .prologue
    .line 1051
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTime:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1052
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->cancelRecording()V

    .line 1060
    :goto_0
    return-void

    .line 1054
    :cond_1
    if-eqz p1, :cond_2

    .line 1055
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecordingForced()V

    goto :goto_0

    .line 1057
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    goto :goto_0
.end method

.method public onTimerEvent(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1064
    return-void
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1068
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 1073
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoStoringPreparedEvent()V
    .locals 0

    .prologue
    .line 1078
    return-void
.end method

.method public setViewModeIndicator(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    if-eqz v0, :cond_0

    .line 1082
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1083
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 1084
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;->setViewMode(I)V

    .line 1085
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mHideViewModeIndicator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1087
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mHideViewModeIndicator:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1090
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0
.end method

.method protected startRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1139
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1140
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->START_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1142
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setMaxVideoFileSize()V

    .line 1143
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->startRecordingPreviewVI()V

    .line 1144
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSwitchToCamcorderPreview()V

    .line 1145
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->finishRecordingPreviewVI()V

    .line 1146
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePrepareVideoRecording()V

    .line 1147
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartVideoRecording()V

    .line 1149
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBlinkCount:I

    .line 1151
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgress:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLProgressBar;->setProgress(I)V

    .line 1153
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    const-string v1, "0K"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1156
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1157
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1158
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1163
    :goto_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Recording;->doDimmingRecordingButtons(Z)V

    .line 1164
    return-void

    .line 1160
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1161
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected stopRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 1167
    const-string v0, "Recording"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTime:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isRecordingControlAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1169
    :cond_0
    const-string v0, "Recording"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return stopRecording - recordingTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :goto_0
    return-void

    .line 1173
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1174
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getCurrentRecordingFileSize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateProgressBarText(J)V

    .line 1175
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getVideoRecordingTimeInMilliSecond()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingTime(J)V

    .line 1176
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1178
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1180
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopVideoRecordingAsync()V

    .line 1185
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecordingTickTimer()V

    .line 1186
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTime:I

    .line 1187
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1188
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1193
    :goto_2
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Recording;->doDimmingRecordingButtons(Z)V

    goto :goto_0

    .line 1182
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopVideoRecordingSync()V

    goto :goto_1

    .line 1190
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_2
.end method

.method protected stopRecordingForced()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 1197
    const-string v0, "Recording"

    const-string v1, "stopRecordingForced"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTime:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isRecordingControlAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1199
    :cond_0
    const-string v0, "Recording"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecordingForced : already stopping - recordingTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :goto_0
    return-void

    .line 1203
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1204
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getCurrentRecordingFileSize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateProgressBarText(J)V

    .line 1205
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getVideoRecordingTimeInMilliSecond()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingTime(J)V

    .line 1206
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1207
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopVideoRecordingForced()V

    .line 1209
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecordingTickTimer()V

    .line 1210
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTime:I

    .line 1211
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1212
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1217
    :goto_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Recording;->doDimmingRecordingButtons(Z)V

    goto :goto_0

    .line 1214
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_1
.end method
