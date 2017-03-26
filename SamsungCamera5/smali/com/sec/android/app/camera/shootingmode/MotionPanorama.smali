.class public Lcom/sec/android/app/camera/shootingmode/MotionPanorama;
.super Ljava/lang/Object;
.source "MotionPanorama.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/sec/android/seccamera/SecCamera$MotionPanoramaEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;


# static fields
.field private static final ANIMATION_SPEED_FAST:I = 0x96

.field private static final ANIMATION_SPEED_SLOW:I = 0x12c

.field private static final GUIDE_HELP_TEXT_HEIGHT:F

.field private static final GUIDE_HELP_TEXT_POS_X:F

.field private static final GUIDE_HELP_TEXT_POS_Y:F

.field private static final GUIDE_HELP_TEXT_SIZE:F

.field private static final GUIDE_HELP_TEXT_WIDTH:F

.field private static final GUIDE_TEXT_MARGIN:F

.field private static final INIT_LANDSCAPE_SINGLE_Y:F = 0.0f

.field private static final INIT_LANDSCAPE_WIDTH:F

.field private static final INIT_LANDSCAPE_X:F

.field private static final INIT_PORTRAIT_SINGLE_Y:F = 0.0f

.field private static final INIT_PORTRAIT_WIDTH:F

.field private static final LIVEPREVIEW_LANDSCAPE_WIDTH:F

.field private static final LIVEPREVIEW_LANDSCAPE_X:F

.field private static final LIVEPREVIEW_MOVE_ANIM_TIME:I = 0xb2

.field private static final LIVEPREVIEW_PORTRAIT_HEIGHT:F

.field private static final LIVEPREVIEW_PORTRAIT_RECT_HEIGHT:F = 60.0f

.field private static final LIVEPREVIEW_PORTRAIT_Y:F

.field private static final LIVEPREVIEW_RECT_THICKNESS:F

.field private static final MESSAGE_PANORAMA_SHOW_UI:I = 0x9

.field private static final MESSAGE_PANORAMA_WARNING_HIGH:I = 0x3

.field private static final MESSAGE_PANORAMA_WARNING_LOW:I = 0x2

.field private static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field private static final MESSAGE_TIMEOUT_MOVESLOWLY:I = 0x5

.field private static final MOTION_PANORAMA_TEMP_AUDIO_FILE_NAME:Ljava/lang/String; = "motionpanorama.aac"

.field private static final MOTION_PANORAMA_TEMP_FILE_NAME:Ljava/lang/String; = "motionpanorama.jpg"

.field private static final PANORAMAX_MAX_IMAGE_COUNT:I = 0x320

.field private static final PANORAMA_OVERLAP_PERCENTAGE:D = 0.2

.field private static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SEF_SHOT_MODE_NAME:Ljava/lang/String; = "PanoramaShot"

.field private static final STOP_BUTTON_DIAMETER:I

.field private static final STOP_BUTTON_POS_X:I

.field private static final STOP_BUTTON_POS_Y:I

.field private static final TAG:Ljava/lang/String; = "MotionPanoramaApp"

.field private static final TRI_HEIGHT:F

.field private static final TRI_WIDTH:F

.field private static final WARNING_ARROW_OFFSET:F

.field private static final WARNING_ARROW_SWING_DISTANCE:F

.field private static final WARNING_LEVEL_HIGH:I = 0x2

.field private static final WARNING_LEVEL_HIGH_VALUE:I = 0x32

.field private static final WARNING_LEVEL_LOW:I = 0x1

.field private static final WARNING_LEVEL_LOW_VALUE:I = 0x1e

.field private static final WARNING_LEVEL_NONE:I = 0x0

.field private static final WARNING_LEVEL_STOP:I = 0x3


# instance fields
.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCaptureCount:I

.field private mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

.field private mCaptureTri:[Lcom/samsung/android/glview/GLImage;

.field private mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

.field private mCurrentOrientation:I

.field private mDetectedDirection:I

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mEnterOrientation:I

.field private mGLContext:Lcom/samsung/android/glview/GLContext;

.field private mGuideText:Lcom/samsung/android/glview/GLText;

.field private mHorizontalMaxCount:F

.field private mInitLandscapeHeight:F

.field private mInitLandscapeSingleHeight:F

.field private mInitLandscapeSingleWidth:F

.field private mInitLandscapeSingleX:F

.field private mInitLandscapeY:F

.field private mInitPortraitHeight:F

.field private mInitPortraitSingleHeight:F

.field private mInitPortraitSingleWidth:F

.field private mInitPortraitSingleX:F

.field private mInitPortraitX:F

.field private mInitPortraitY:F

.field private mInitializeBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

.field private mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

.field private mInitializeTri:[Lcom/samsung/android/glview/GLImage;

.field private mIsDrawLivePreview:Z

.field private mIsGuideTextDisplaying:Z

.field private mIsMotionPanoramaEnabled:Z

.field private mIsPanoramaCaptureStarted:Z

.field private mIsPanoramaCapturing:Z

.field private mIsPanoramaStopping:Z

.field private mIsPanoramaWarning:Z

.field private mIsPreviewRectRotationSupported:Z

.field private mIsSoundRecording:Z

.field private mIsSoundRecordingEnabled:Z

.field private mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

.field private mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

.field private mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

.field private mLivePriviewBmp:Landroid/graphics/Bitmap;

.field private mLivepreviewLandscapeHeight:F

.field private mLivepreviewLandscapeRectWidth:F

.field private mLivepreviewLandscapeSingleHeight:F

.field private mLivepreviewLandscapeSingleWidth:F

.field private mLivepreviewLandscapeSingleX:F

.field private mLivepreviewLandscapeSingleY:F

.field private mLivepreviewLandscapeY:F

.field private mLivepreviewPortraitRectWidth:F

.field private mLivepreviewPortraitSingleHeight:F

.field private mLivepreviewPortraitSingleWidth:F

.field private mLivepreviewPortraitSingleX:F

.field private mLivepreviewPortraitSingleY:F

.field private mLivepreviewPortraitWidth:F

.field private mLivepreviewPortraitX:F

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

.field private mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

.field protected mPanoramaMsgHandler:Landroid/os/Handler;

.field private mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mPostProgress:I

.field private mPreviewThumbnailHeight:F

.field private mPreviewThumbnailWidth:F

.field private mPreviousCaptureCount:I

.field private mPrievewRatio:F

.field private mThumbnailPreviewHeight:I

.field private mThumbnailPreviewMaxHeight:I

.field private mThumbnailPreviewMaxWidth:I

.field private mThumbnailPreviewPreallocatedBuffer:[I

.field private mThumbnailPreviewWidth:I

.field private mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

.field private mWarningArrow:[Lcom/samsung/android/glview/GLImage;

.field private mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

.field private mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x7f0901bf

    const v3, 0x7f0901be

    const/high16 v2, 0x40000000    # 2.0f

    .line 86
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    .line 87
    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    .line 89
    const v0, 0x7f09002c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_LANDSCAPE_WIDTH:F

    .line 90
    sget v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_LANDSCAPE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_LANDSCAPE_X:F

    .line 92
    const v0, 0x7f09002e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    .line 93
    const v0, 0x7f09002f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    .line 94
    const v0, 0x7f09002d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_PORTRAIT_WIDTH:F

    .line 95
    const v0, 0x7f090030

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 96
    sget v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    .line 99
    const v0, 0x7f09002b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_WIDTH:F

    .line 100
    const v0, 0x7f090029

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_HEIGHT:F

    .line 101
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_POS_X:F

    .line 102
    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_POS_Y:F

    .line 103
    const v0, 0x7f0902ea

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_SIZE:F

    .line 104
    const v0, 0x7f09002a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_TEXT_MARGIN:F

    .line 106
    const v0, 0x7f090032

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 109
    const v0, 0x7f090035

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_SWING_DISTANCE:F

    .line 110
    const v0, 0x7f090034

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_OFFSET:F

    .line 112
    const v0, 0x7f090028

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_WIDTH:F

    .line 113
    const v0, 0x7f090027

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_HEIGHT:F

    .line 116
    const v0, 0x7f09020a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->STOP_BUTTON_POS_X:I

    .line 117
    const v0, 0x7f09020b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->STOP_BUTTON_POS_Y:I

    .line 118
    const v0, 0x7f090208

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->STOP_BUTTON_DIAMETER:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 5
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    .line 150
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviousCaptureCount:I

    .line 151
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewWidth:I

    .line 152
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewHeight:I

    .line 153
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    .line 154
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxHeight:I

    .line 155
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 157
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeHeight:F

    .line 158
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeY:F

    .line 160
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    .line 161
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeY:F

    .line 163
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleWidth:F

    .line 164
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleHeight:F

    .line 165
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleX:F

    .line 167
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    .line 168
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    .line 169
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleX:F

    .line 170
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleY:F

    .line 172
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitX:F

    .line 173
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitY:F

    .line 174
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitHeight:F

    .line 176
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleWidth:F

    .line 177
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleHeight:F

    .line 178
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleX:F

    .line 180
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    .line 181
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitX:F

    .line 183
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    .line 184
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleHeight:F

    .line 185
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleX:F

    .line 186
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleY:F

    .line 188
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeRectWidth:F

    .line 189
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitRectWidth:F

    .line 191
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    .line 192
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    .line 194
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mHorizontalMaxCount:F

    .line 196
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPrievewRatio:F

    .line 198
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    .line 199
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEnterOrientation:I

    .line 201
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCaptureStarted:Z

    .line 202
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCapturing:Z

    .line 203
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 204
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    .line 205
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPreviewRectRotationSupported:Z

    .line 206
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsDrawLivePreview:Z

    .line 208
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPostProgress:I

    .line 210
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 211
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 212
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 213
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 215
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 216
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 217
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 219
    new-array v0, v4, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    .line 220
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    .line 221
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    .line 222
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    .line 224
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    .line 225
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsGuideTextDisplaying:Z

    .line 227
    new-array v0, v4, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    .line 228
    new-array v0, v4, [Lcom/samsung/android/glview/GLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    .line 229
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    .line 230
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/glview/GLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    .line 232
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 234
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 235
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 236
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    .line 237
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 238
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 239
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 240
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    .line 242
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    .line 244
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 246
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePriviewBmp:Landroid/graphics/Bitmap;

    .line 248
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsSoundRecording:Z

    .line 249
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsMotionPanoramaEnabled:Z

    .line 250
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsSoundRecordingEnabled:Z

    .line 251
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;-><init>(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    .line 301
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 302
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$2;-><init>(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 329
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 330
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 331
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->cancelPanoramaCapture()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->reset()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Lcom/samsung/android/glview/GLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaCapturing()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideGuideText()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->showPreviewGroup()V

    return-void
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsDrawLivePreview:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCapturing:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    return v0
.end method

.method private cancelPanoramaCapture()V
    .locals 2

    .prologue
    .line 990
    const-string v0, "MotionPanoramaApp"

    const-string v1, "cancelPanoramaCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    .line 994
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->waitForMotionPanoramaStartThreadComplete()V

    .line 995
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCurrentStateId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 996
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopPreview()V

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelMotionPanorama()V

    .line 1000
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsSoundRecordingEnabled:Z

    if-eqz v0, :cond_1

    .line 1001
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopSoundRecording()V

    .line 1003
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->removeTempFile()V

    .line 1005
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->clearPanoramaRect()V

    .line 1007
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->unlockAEAWB()V

    .line 1008
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1009
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 1013
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 1015
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartPreview()V

    .line 1017
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCaptureStarted:Z

    .line 1018
    return-void

    .line 1011
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    goto :goto_0
.end method

.method private clear()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1021
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    .line 1022
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCaptureStarted:Z

    .line 1023
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCapturing:Z

    .line 1024
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    .line 1025
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    .line 1026
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPostProgress:I

    .line 1028
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopCancelTimer()V

    .line 1029
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaSound()V

    .line 1031
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideCaptureTri()V

    .line 1032
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideStopButton()V

    .line 1034
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 1035
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    monitor-enter v1

    .line 1036
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1038
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLBitmapTexture;->clear()V

    .line 1039
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 1041
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1043
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->clearPanoramaRect()V

    .line 1045
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 1046
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1047
    return-void

    .line 1041
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private clearPanoramaRect()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1050
    const-string v1, "MotionPanoramaApp"

    const-string v2, "clearPanoramaRect"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_0

    .line 1053
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1054
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->resetTranslate()V

    .line 1057
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_1

    .line 1058
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1059
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLText;->resetTranslate()V

    .line 1062
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideWarningArrow()V

    .line 1063
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideWarningBox()V

    .line 1065
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 1066
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 1067
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1065
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1071
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1072
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_4

    .line 1073
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1075
    :cond_4
    return-void
.end method

.method private createPanoramaView()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x4

    const/4 v12, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 1079
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v2, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeY:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1080
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v6, 0x7f02012a

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 1082
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1083
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1086
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v4, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1087
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v2, 0x7f02012a

    invoke-direct {v0, v1, v11, v11, v2}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 1088
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleHeight:F

    const v2, 0x7f0c0011

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    .line 1090
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1091
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1092
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1093
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPreviewRectRotationSupported:Z

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 1097
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLViewGroup;->setCenterPivot(Z)V

    .line 1098
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 1099
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1101
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v4, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_HEIGHT:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v9

    .line 1102
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v4, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_HEIGHT:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v12

    .line 1103
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v4, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_WIDTH:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v14

    .line 1104
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v7, 0x3

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v4, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_WIDTH:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v7

    .line 1106
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v9

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1107
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v12

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1108
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v14

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1111
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f020128

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v9

    .line 1112
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f020127

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v12

    .line 1113
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f020129

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v14

    .line 1114
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v4, 0x7f020126

    invoke-direct {v2, v3, v11, v11, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 1116
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v9

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1117
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v12

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1118
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v14

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v14

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1119
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1121
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v4, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_HEIGHT:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v9

    .line 1122
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v4, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_WIDTH:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v12

    .line 1124
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v9

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1125
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v12

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1127
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f020128

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v9

    .line 1128
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f020129

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v12

    .line 1130
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v9

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1131
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v12

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1133
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1134
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1135
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1137
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f02012f

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v9

    .line 1138
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f02012c

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v12

    .line 1139
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f02012d

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v14

    .line 1140
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v4, 0x7f02012e

    invoke-direct {v2, v3, v11, v11, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 1142
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    const v2, 0x7f0c0011

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    .line 1144
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1146
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    const v2, 0x7f0c0029

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    .line 1148
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1149
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleHeight:F

    const v2, 0x7f0c0029

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    .line 1151
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1153
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v2, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->STOP_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->STOP_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020109

    const v5, 0x7f02010a

    move v6, v9

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    .line 1154
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1155
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080142

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1156
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1157
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1158
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$3;-><init>(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1180
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    .line 1181
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->STOP_BUTTON_DIAMETER:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 1182
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1184
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->onOrientationChanged(I)V

    .line 1186
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1187
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1188
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1189
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1190
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1191
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1193
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v2, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_HEIGHT:F

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f08018c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_SIZE:F

    const v8, 0x7f0c001c

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v8

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    .line 1195
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLText;->setClipping(Z)V

    .line 1196
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 1197
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    const v1, 0x7f0a0023

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x7f0c0010

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v12, v1, v2}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1198
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 1199
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1200
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1202
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v13, :cond_1

    .line 1203
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v10

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1204
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v10

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1205
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v10

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1206
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v10

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1202
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1096
    .end local v10    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    goto/16 :goto_0

    .line 1213
    .restart local v10    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v14, v14}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1214
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v9, v11, v11}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1215
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v12, v11, v11}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1216
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v14, v11, v11}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1217
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v11, v11}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1218
    return-void
.end method

.method private getAnimation(II)Landroid/view/animation/AnimationSet;
    .locals 10
    .param p1, "speed"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1221
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1222
    .local v1, "animation":Landroid/view/animation/AnimationSet;
    const/4 v0, 0x0

    .line 1224
    .local v0, "anim":Landroid/view/animation/Animation;
    packed-switch p2, :pswitch_data_0

    .line 1250
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 1251
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1252
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 1253
    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 1254
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1255
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1258
    :cond_0
    return-object v1

    .line 1227
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v2, -0x40800000    # -1.0f

    sget v3, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1228
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_0

    .line 1233
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    sget v2, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_SWING_DISTANCE:F

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1234
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_0

    .line 1239
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v2, -0x40800000    # -1.0f

    sget v3, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1240
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto/16 :goto_0

    .line 1245
    :pswitch_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    sget v2, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_SWING_DISTANCE:F

    invoke-direct {v0, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1246
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto/16 :goto_0

    .line 1224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized getCaptureProgressIncreased()I
    .locals 1

    .prologue
    .line 1262
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPanoramaMaxCount(Lcom/sec/android/app/camera/interfaces/Engine;)[F
    .locals 12
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    .line 1266
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getViewAngle()[F

    move-result-object v3

    .line 1267
    .local v3, "viewAngle":[F
    const/4 v4, 0x0

    aget v1, v3, v4

    .line 1268
    .local v1, "mVerticalAngle":F
    const/4 v4, 0x1

    aget v0, v3, v4

    .line 1270
    .local v0, "mHorizontalAngle":F
    const/4 v4, 0x2

    new-array v2, v4, [F

    .line 1271
    .local v2, "maxCount":[F
    const/4 v4, 0x0

    const-wide v6, 0x4076800000000000L    # 360.0

    float-to-double v8, v1

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    float-to-double v8, v1

    const-wide v10, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-float v5, v6

    aput v5, v2, v4

    .line 1272
    const/4 v4, 0x1

    const-wide v6, 0x4076800000000000L    # 360.0

    float-to-double v8, v0

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    float-to-double v8, v0

    const-wide v10, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-float v5, v6

    aput v5, v2, v4

    .line 1273
    const-string v4, "MotionPanoramaApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vertical count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " horizontal count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    return-object v2
.end method

.method private declared-synchronized getPartialPanoramaImage([B)Landroid/graphics/Bitmap;
    .locals 22
    .param p1, "data"    # [B

    .prologue
    .line 1279
    monitor-enter p0

    const/4 v9, 0x0

    .line 1282
    .local v9, "bmp":Landroid/graphics/Bitmap;
    const/16 v20, 0x0

    .line 1283
    .local v20, "width":I
    const/4 v11, 0x0

    .line 1284
    .local v11, "height":I
    const/4 v15, 0x0

    .line 1285
    .local v15, "offsetX":I
    const/16 v16, 0x0

    .line 1286
    .local v16, "offsetY":I
    const/16 v19, 0x0

    .line 1287
    .local v19, "rotation":I
    const/4 v14, 0x0

    .line 1289
    .local v14, "maxSize":I
    const/4 v3, 0x0

    .line 1290
    .local v3, "bmpOffset":I
    const/4 v4, 0x0

    .line 1292
    .local v4, "bmpStride":I
    if-eqz p1, :cond_0

    :try_start_0
    move-object/from16 v0, p1

    array-length v2, v0

    const/16 v5, 0x10

    if-ge v2, v5, :cond_1

    .line 1293
    :cond_0
    const-string v2, "MotionPanoramaApp"

    const-string v5, "getPartialPanoramaImage: Received null or invalid data"

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1294
    const/4 v2, 0x0

    .line 1425
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1298
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    aget-byte v2, p1, v2

    const/16 v5, 0x52

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    const/16 v5, 0x47

    if-ne v2, v5, :cond_2

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    const/16 v5, 0x42

    if-ne v2, v5, :cond_2

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    const/16 v5, 0x41

    if-eq v2, v5, :cond_3

    .line 1299
    :cond_2
    const-string v2, "MotionPanoramaApp"

    const-string v5, "getPartialPanoramaImage: Data is invalid (RGBA tag not found)"

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1300
    const/4 v2, 0x0

    goto :goto_0

    .line 1304
    :cond_3
    const/4 v2, 0x4

    :try_start_2
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v20

    .line 1305
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v11

    .line 1306
    const/16 v2, 0xc

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v15

    .line 1307
    const/16 v2, 0x10

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v16

    .line 1308
    const/16 v2, 0x14

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v19

    .line 1309
    const/16 v2, 0x18

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v14

    .line 1315
    :try_start_3
    move-object/from16 v0, p1

    array-length v2, v0

    mul-int v5, v20, v11

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x20

    if-ge v2, v5, :cond_4

    .line 1316
    const-string v2, "MotionPanoramaApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPartialPanoramaImage: The buffer is too small to contain a image of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1310
    :catch_0
    move-exception v10

    .line 1311
    .local v10, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "MotionPanoramaApp"

    const-string v5, "getPartialPanoramaImage: Could not parse panorama bitmap header"

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1320
    .end local v10    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    if-nez v2, :cond_5

    .line 1321
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    packed-switch v2, :pswitch_data_0

    .line 1337
    :pswitch_0
    const-string v2, "MotionPanoramaApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPartialPanoramaImage - PANORAMA Invalid direction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1324
    :pswitch_1
    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    .line 1325
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxHeight:I

    .line 1326
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxHeight:I

    mul-int/2addr v2, v5

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 1327
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewHeight:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1348
    :cond_5
    :goto_1
    :try_start_4
    move-object/from16 v0, p1

    array-length v2, v0

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, -0x8

    new-array v13, v2, [I

    .line 1349
    .local v13, "intData":[I
    const/16 v8, 0xff

    .line 1350
    .local v8, "MASK":I
    const/16 v18, 0x0

    .line 1351
    .local v18, "result":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move-object/from16 v0, p1

    array-length v2, v0

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, -0x8

    if-ge v12, v2, :cond_6

    .line 1352
    add-int/lit8 v2, v12, 0x8

    mul-int/lit8 v2, v2, 0x4

    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    shl-int/lit8 v18, v2, 0x10

    .line 1353
    add-int/lit8 v2, v12, 0x8

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    shl-int/lit8 v2, v2, 0x8

    add-int v18, v18, v2

    .line 1354
    add-int/lit8 v2, v12, 0x8

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    add-int v18, v18, v2

    .line 1355
    add-int/lit8 v2, v12, 0x8

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    shl-int/lit8 v2, v2, 0x18

    add-int v18, v18, v2

    .line 1356
    aput v18, v13, v12
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1351
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1331
    .end local v8    # "MASK":I
    .end local v12    # "i":I
    .end local v13    # "intData":[I
    .end local v18    # "result":I
    :pswitch_2
    :try_start_5
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    .line 1332
    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxHeight:I

    .line 1333
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxHeight:I

    mul-int/2addr v2, v5

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 1334
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewWidth:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1279
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1359
    .restart local v8    # "MASK":I
    .restart local v12    # "i":I
    .restart local v13    # "intData":[I
    .restart local v18    # "result":I
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    packed-switch v2, :pswitch_data_1

    .line 1410
    :pswitch_3
    const-string v2, "MotionPanoramaApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPartialPanoramaImage - PANORAMA Invalid direction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1419
    :goto_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v2 .. v7}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v9

    move-object v2, v9

    .line 1425
    goto/16 :goto_0

    .line 1361
    :pswitch_4
    :try_start_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewHeight:I

    if-eq v2, v11, :cond_7

    .line 1362
    const-string v2, "MotionPanoramaApp"

    const-string v5, "getPartialPanoramaImage: Height is different!!"

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 1413
    .end local v8    # "MASK":I
    .end local v12    # "i":I
    .end local v13    # "intData":[I
    .end local v18    # "result":I
    :catch_1
    move-exception v10

    .line 1414
    .restart local v10    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_9
    const-string v2, "MotionPanoramaApp"

    const-string v5, "getPartialPanoramaImage: Index Control Failed!!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1415
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1364
    .end local v10    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v8    # "MASK":I
    .restart local v12    # "i":I
    .restart local v13    # "intData":[I
    .restart local v18    # "result":I
    :cond_7
    const/16 v21, 0x0

    .local v21, "y":I
    :goto_4
    :try_start_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewHeight:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_8

    .line 1365
    mul-int v2, v21, v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    mul-int v6, v6, v21

    add-int/2addr v6, v15

    move/from16 v0, v20

    invoke-static {v13, v2, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1364
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 1367
    :cond_8
    add-int v2, v15, v20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewWidth:I

    .line 1369
    const/4 v3, 0x0

    .line 1370
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    .line 1372
    goto :goto_3

    .line 1374
    .end local v21    # "y":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewHeight:I

    if-eq v2, v11, :cond_9

    .line 1375
    const-string v2, "MotionPanoramaApp"

    const-string v5, "getPartialPanoramaImage: Height is different!!"

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1377
    :cond_9
    const/16 v21, 0x0

    .restart local v21    # "y":I
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewHeight:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_a

    .line 1378
    mul-int v2, v21, v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    mul-int v6, v6, v21

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    sub-int/2addr v7, v15

    sub-int v7, v7, v20

    add-int/2addr v6, v7

    move/from16 v0, v20

    invoke-static {v13, v2, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1377
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 1381
    :cond_a
    add-int v2, v15, v20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewWidth:I

    .line 1383
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewWidth:I

    sub-int v3, v2, v5

    .line 1384
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    .line 1386
    goto/16 :goto_3

    .line 1388
    .end local v21    # "y":I
    :pswitch_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewWidth:I

    move/from16 v0, v20

    if-eq v2, v0, :cond_b

    .line 1389
    const-string v2, "MotionPanoramaApp"

    const-string v5, "getPartialPanoramaImage: Width is different!!"

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1391
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxHeight:I

    sub-int v7, v7, v16

    sub-int/2addr v7, v11

    mul-int/2addr v6, v7

    array-length v7, v13

    invoke-static {v13, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1392
    add-int v2, v16, v11

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewHeight:I

    .line 1394
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxHeight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewHeight:I

    sub-int/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    mul-int v3, v2, v5

    .line 1395
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    .line 1397
    goto/16 :goto_3

    .line 1399
    :pswitch_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewWidth:I

    move/from16 v0, v20

    if-eq v2, v0, :cond_c

    .line 1400
    const-string v2, "MotionPanoramaApp"

    const-string v5, "getPartialPanoramaImage: Width is different!!"

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1402
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    mul-int v6, v6, v16

    array-length v7, v13

    invoke-static {v13, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1403
    add-int v2, v16, v11

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewHeight:I

    .line 1405
    const/4 v3, 0x0

    .line 1406
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1408
    goto/16 :goto_3

    .line 1420
    :catch_2
    move-exception v17

    .line 1421
    .local v17, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_b
    const-string v2, "MotionPanoramaApp"

    const-string v5, "getPartialPanoramaImage: Out of memory [1]"

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1422
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1359
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method private hideCaptureTri()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1429
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1430
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1431
    return-void
.end method

.method private hideGuideText()V
    .locals 2

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1435
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsGuideTextDisplaying:Z

    .line 1437
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1441
    :cond_0
    return-void
.end method

.method private hideLivePreview()V
    .locals 2

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1445
    return-void
.end method

.method private hidePreviewGroup()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1448
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_0

    .line 1449
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1452
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1453
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1452
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1455
    :cond_1
    return-void
.end method

.method private hideStopButton()V
    .locals 2

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1459
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1460
    return-void
.end method

.method private hideWarningArrow()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1464
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 1465
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1467
    :cond_0
    return-void
.end method

.method private hideWarningBox()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1470
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1471
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->resetTranslate()V

    .line 1473
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1474
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->resetTranslate()V

    .line 1475
    return-void
.end method

.method private initCoordinate([F)V
    .locals 6
    .param p1, "maxRate"    # [F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 1478
    move-object v0, p1

    .line 1479
    .local v0, "panoramaMaxRate":[F
    const/4 v3, 0x1

    aget v3, v0, v3

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mHorizontalMaxCount:F

    .line 1481
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_RESOLUTION:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v2

    .line 1482
    .local v2, "previewWidth":I
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_RESOLUTION:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v1

    .line 1483
    .local v1, "previewHeight":I
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPrievewRatio:F

    .line 1485
    sget v3, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mHorizontalMaxCount:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPrievewRatio:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    .line 1486
    sget v3, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeY:F

    .line 1488
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeHeight:F

    .line 1489
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeY:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeY:F

    .line 1491
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPrievewRatio:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    .line 1492
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    .line 1494
    sget v3, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleX:F

    .line 1495
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeY:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleY:F

    .line 1497
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleWidth:F

    .line 1498
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleHeight:F

    .line 1499
    sget v3, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_LANDSCAPE_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleX:F

    .line 1502
    const v3, 0x7f090031

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    .line 1503
    sget v3, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitX:F

    .line 1505
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitHeight:F

    .line 1506
    sget v3, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_PORTRAIT_WIDTH:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitX:F

    .line 1507
    sget v3, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitHeight:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitY:F

    .line 1509
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    .line 1510
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPrievewRatio:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleHeight:F

    .line 1511
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitX:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleX:F

    .line 1512
    sget v3, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleHeight:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleY:F

    .line 1514
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleHeight:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleWidth:F

    .line 1515
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleHeight:F

    .line 1516
    sget v3, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_PORTRAIT_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleX:F

    .line 1518
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitRectWidth:F

    .line 1519
    sget v3, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v3, v5

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeRectWidth:F

    .line 1520
    return-void
.end method

.method private isDirectionDetected()Z
    .locals 1

    .prologue
    .line 1523
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    if-nez v0, :cond_0

    .line 1524
    const/4 v0, 0x0

    .line 1526
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized isReadyToCapture()Z
    .locals 1

    .prologue
    .line 1530
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onLivePreviewData([B)V
    .locals 13
    .param p1, "data"    # [B

    .prologue
    .line 1539
    monitor-enter p0

    :try_start_0
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onLivePreviewData , mCapturecount:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", mPreviousCaptureCount:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviousCaptureCount:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    const/4 v6, 0x0

    .line 1542
    .local v6, "bmp":Landroid/graphics/Bitmap;
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 1543
    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/Integer;

    .line 1544
    .local v10, "rotation":[Ljava/lang/Integer;
    invoke-static {p1, v10}, Lcom/sec/android/app/camera/util/Util;->decodeExtendedRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1545
    if-nez v6, :cond_1

    .line 1546
    const-string v0, "MotionPanoramaApp"

    const-string v1, "Unable to decode RGBA data for live preview."

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1729
    .end local v10    # "rotation":[Ljava/lang/Integer;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1550
    .restart local v10    # "rotation":[Ljava/lang/Integer;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setPreviewThumbnailSize(II)V

    .line 1552
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewWidth:I

    .line 1553
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewHeight:I

    .line 1555
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 1576
    .end local v10    # "rotation":[Ljava/lang/Integer;
    :goto_1
    iput-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePriviewBmp:Landroid/graphics/Bitmap;

    .line 1577
    if-nez v6, :cond_6

    .line 1578
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to RGBA Data Creation Failed. mCaptureCount:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1539
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1557
    .restart local v6    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviousCaptureCount:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    if-eq v0, v1, :cond_0

    .line 1562
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    if-eqz v0, :cond_3

    .line 1563
    const-string v0, "MotionPanoramaApp"

    const-string v1, "return panorama is stopping"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1566
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1567
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviousCaptureCount:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    .line 1568
    :cond_4
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onLivePreviewData : live preview rect is not visible. ignore case. mCaptureCount - "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", mPreviousCaptureCount - "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviousCaptureCount:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1574
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getPartialPanoramaImage([B)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1

    .line 1581
    :cond_6
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setPreviewThumbnailSize(II)V

    .line 1583
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviousCaptureCount:I

    .line 1585
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    .line 1586
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->updateLivePreviewLayout(Z)V

    .line 1591
    :cond_7
    const/4 v8, 0x0

    .line 1592
    .local v8, "arrowleft":F
    const/4 v9, 0x0

    .line 1593
    .local v9, "arrowtop":F
    sget v2, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 1594
    .local v2, "left":F
    sget v3, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 1595
    .local v3, "top":F
    const/4 v11, 0x0

    .line 1597
    .local v11, "stopPanorama":Z
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_e

    .line 1598
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 1599
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float v4, v0, v1

    .line 1600
    .local v4, "width":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float v5, v0, v1

    .line 1666
    .local v5, "height":F
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_16

    .line 1667
    iget-object v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    monitor-enter v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1668
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_9

    .line 1669
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1670
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLBitmapTexture;->clear()V

    .line 1673
    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v4, v0

    if-ltz v0, :cond_a

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v5, v0

    if-gez v0, :cond_15

    .line 1674
    :cond_a
    const-string v0, "MotionPanoramaApp"

    const-string v1, "It\'s too short image for thumbnail preview"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    monitor-exit v12

    goto/16 :goto_0

    .line 1680
    :catchall_1
    move-exception v0

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 1601
    .end local v4    # "width":F
    .end local v5    # "height":F
    :cond_b
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 1602
    :cond_c
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float v5, v0, v1

    .line 1603
    .restart local v5    # "height":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float v4, v0, v1

    .restart local v4    # "width":F
    goto :goto_2

    .line 1605
    .end local v4    # "width":F
    .end local v5    # "height":F
    :cond_d
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onLivePreviewData : invalid orientation "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1609
    :cond_e
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_f

    .line 1610
    sget v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float v4, v0, v1

    .line 1611
    .restart local v4    # "width":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float v5, v0, v1

    .line 1612
    .restart local v5    # "height":F
    const/4 v11, 0x1

    .line 1627
    :goto_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    packed-switch v0, :pswitch_data_0

    .line 1661
    :pswitch_0
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PANORAMA Invalid direction: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1613
    .end local v4    # "width":F
    .end local v5    # "height":F
    :cond_f
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_10

    .line 1614
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float v4, v0, v1

    .line 1615
    .restart local v4    # "width":F
    sget v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float v5, v0, v1

    .line 1616
    .restart local v5    # "height":F
    const/4 v11, 0x1

    goto :goto_3

    .line 1618
    .end local v4    # "width":F
    .end local v5    # "height":F
    :cond_10
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v4, v0, v1

    .line 1620
    .restart local v4    # "width":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    .line 1621
    :cond_11
    sget v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v4, v0

    .line 1624
    :cond_12
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float v5, v0, v1

    .restart local v5    # "height":F
    goto :goto_3

    .line 1629
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    const v1, 0x7f090033

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    add-float v8, v0, v1

    .line 1630
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v12, 0x0

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v9, v0, v1

    .line 1631
    goto/16 :goto_2

    .line 1634
    :pswitch_2
    sget v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v0, v1

    sub-float v2, v0, v4

    .line 1635
    sget v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v12, 0x0

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x7f090033

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float v8, v0, v1

    .line 1637
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v12, 0x0

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v9, v0, v1

    .line 1638
    goto/16 :goto_2

    .line 1641
    :pswitch_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_13

    .line 1642
    sget v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    int-to-float v1, v1

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v1, v12

    mul-float/2addr v0, v1

    const/high16 v1, 0x44480000    # 800.0f

    div-float v5, v0, v1

    .line 1643
    sget v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v5

    sget v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v3, v0, v1

    .line 1645
    :cond_13
    const v0, 0x7f090033

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    add-float v9, v5, v0

    .line 1646
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitRectWidth:F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v12, 0x1

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float v8, v0, v1

    .line 1647
    goto/16 :goto_2

    .line 1650
    :pswitch_4
    sget v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v0, v1

    sub-float v3, v0, v5

    .line 1652
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_14

    .line 1653
    sget v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    int-to-float v1, v1

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v1, v12

    mul-float/2addr v0, v1

    const/high16 v1, 0x44480000    # 800.0f

    div-float v5, v0, v1

    .line 1654
    sget v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v5

    sget v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v3, v0, v1

    .line 1656
    :cond_14
    sget v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_WIDTH:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, v5

    const v1, 0x7f090033

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float v9, v0, v1

    .line 1657
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitRectWidth:F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v12, 0x1

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-float v8, v0, v1

    .line 1658
    goto/16 :goto_2

    .line 1678
    :cond_15
    :try_start_5
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 1679
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1680
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1683
    :cond_16
    :try_start_6
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/16 v1, 0x31f

    if-ge v0, v1, :cond_1c

    .line 1684
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1a

    .line 1686
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 1691
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 1692
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    aget-object v7, v0, v1

    .line 1697
    .local v7, "activeGroup":Lcom/samsung/android/glview/GLViewGroup;
    :goto_4
    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 1698
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1700
    if-eqz v11, :cond_1a

    .line 1701
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    if-eqz v0, :cond_19

    .line 1702
    const-string v0, "MotionPanoramaApp"

    const-string v1, "already Stopping..."

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1694
    .end local v7    # "activeGroup":Lcom/samsung/android/glview/GLViewGroup;
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    aget-object v7, v0, v1

    .restart local v7    # "activeGroup":Lcom/samsung/android/glview/GLViewGroup;
    goto :goto_4

    .line 1705
    :cond_19
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaCapturing()V

    .line 1724
    .end local v7    # "activeGroup":Lcom/samsung/android/glview/GLViewGroup;
    :cond_1a
    :goto_5
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    .line 1725
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->bringToFront()V

    goto/16 :goto_0

    .line 1709
    :cond_1c
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    .line 1710
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1715
    :goto_6
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/16 v1, 0x31f

    if-ne v0, v1, :cond_1a

    .line 1716
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    if-eqz v0, :cond_1f

    .line 1717
    const-string v0, "MotionPanoramaApp"

    const-string v1, "already Stopping..."

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1712
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_6

    .line 1720
    :cond_1f
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaCapturing()V

    goto :goto_5

    .line 1727
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->bringToFront()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1627
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private panoramaDirectionChanged(I)V
    .locals 9
    .param p1, "orientation"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v4, 0x0

    .line 1733
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->isDirectionDetected()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1734
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    packed-switch v3, :pswitch_data_0

    .line 1757
    :goto_0
    const/4 v1, 0x0

    .line 1758
    .local v1, "isHorizontalCapturing":Z
    packed-switch p1, :pswitch_data_1

    .line 1776
    :goto_1
    :pswitch_0
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    if-eq v3, v7, :cond_0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    if-ne v3, v5, :cond_1

    .line 1777
    :cond_0
    if-eqz v1, :cond_6

    .line 1778
    const/4 v1, 0x0

    .line 1783
    :cond_1
    :goto_2
    if-eqz v1, :cond_7

    .line 1784
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, 0x189e

    const-string v5, "1000"

    invoke-interface {v3, v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    .line 1789
    :goto_3
    if-eqz p1, :cond_4

    .line 1790
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->isDirectionDetected()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1791
    const/4 v2, 0x0

    .local v2, "width":F
    const/4 v0, 0x0

    .line 1792
    .local v0, "height":F
    if-eq p1, v6, :cond_2

    const/16 v3, 0x8

    if-ne p1, v3, :cond_8

    .line 1793
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    .line 1794
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleHeight:F

    .line 1795
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 1801
    :cond_3
    :goto_4
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    .line 1802
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 1803
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->updateLivePreviewLayout(Z)V

    .line 1806
    .end local v0    # "height":F
    .end local v2    # "width":F
    :cond_4
    return-void

    .line 1737
    .end local v1    # "isHorizontalCapturing":Z
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1738
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v7

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1739
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1740
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v5

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1744
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1745
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1746
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v8

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1747
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v5

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1751
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1752
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1753
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1754
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v5

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 1760
    .restart local v1    # "isHorizontalCapturing":Z
    :pswitch_3
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    const v4, 0x7f020129

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto/16 :goto_1

    .line 1763
    :pswitch_4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    const v4, 0x7f020126

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto/16 :goto_1

    .line 1766
    :pswitch_5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v4

    const v4, 0x7f020127

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1767
    const/4 v1, 0x1

    .line 1768
    goto/16 :goto_1

    .line 1770
    :pswitch_6
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v4

    const v4, 0x7f020128

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1771
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1780
    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 1786
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, 0x189e

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 1796
    .restart local v0    # "height":F
    .restart local v2    # "width":F
    :cond_8
    if-eq p1, v7, :cond_9

    if-ne p1, v8, :cond_3

    .line 1797
    :cond_9
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    .line 1798
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    .line 1799
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    goto/16 :goto_4

    .line 1734
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1758
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private panoramaMoveSlowly()V
    .locals 2

    .prologue
    .line 1809
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCapturing:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1810
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->showGuideText()V

    .line 1812
    :cond_0
    return-void
.end method

.method private panoramaRectChanged(II)V
    .locals 26
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1815
    const/4 v8, 0x0

    .line 1816
    .local v8, "rect_x":F
    const/4 v9, 0x0

    .line 1817
    .local v9, "rect_y":F
    const/4 v10, 0x0

    .line 1819
    .local v10, "startOffsetPosition":F
    const/4 v4, 0x0

    .line 1820
    .local v4, "arrow_x":F
    const/4 v5, 0x0

    .line 1822
    .local v5, "arrow_y":F
    const/4 v7, 0x0

    .line 1823
    .local v7, "baseW":F
    const/4 v6, 0x0

    .line 1827
    .local v6, "baseH":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 2125
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1829
    :pswitch_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    .line 1830
    const/high16 v6, 0x42700000    # 60.0f

    .line 1831
    sget v22, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v23, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    move/from16 v23, v0

    sub-float v10, v22, v23

    .line 1832
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitX:F

    move/from16 v22, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    sget v24, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v7

    div-float v23, v23, v24

    add-float v8, v22, v23

    .line 1833
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sget v23, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v23, v6

    div-float v22, v22, v23

    add-float v9, v10, v22

    .line 1860
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v22

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 1863
    const/4 v11, 0x0

    .line 1865
    .local v11, "warningLevel":I
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v22, v0

    sget v23, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v23, v7

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    .line 1866
    .local v14, "xDistance":D
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sget v23, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v23, v6

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    .line 1867
    .local v18, "yDistance":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_1

    .line 1880
    :goto_2
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    if-gtz p2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    move/from16 v22, v0

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    if-gez p2, :cond_7

    .line 1881
    :cond_2
    const-wide/16 v18, 0x0

    .line 1885
    :cond_3
    :goto_3
    float-to-double v0, v7

    move-wide/from16 v22, v0

    div-double v22, v14, v22

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    mul-double v16, v22, v24

    .line 1886
    .local v16, "xDistanceRate":D
    float-to-double v0, v6

    move-wide/from16 v22, v0

    div-double v22, v18, v22

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    mul-double v20, v22, v24

    .line 1887
    .local v20, "yDistanceRate":D
    move-wide/from16 v0, v16

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 1889
    .local v12, "totalDistance":D
    const-string v22, "MotionPanoramaApp"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Direction:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", x Distance:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", y Distance:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_2

    :pswitch_3
    goto/16 :goto_0

    .line 2009
    :pswitch_4
    const-wide/high16 v22, 0x403e000000000000L    # 30.0

    cmpg-double v22, v12, v22

    if-gez v22, :cond_16

    .line 2010
    const/4 v11, 0x0

    .line 2016
    :goto_4
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_18

    .line 2017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 2018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    .line 2019
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 2022
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    move/from16 v22, v0

    if-nez v22, :cond_5

    .line 2023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2032
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 2057
    :cond_5
    :goto_5
    const/16 v22, 0x1

    move/from16 v0, v22

    if-lt v11, v0, :cond_1e

    .line 2059
    cmpl-double v22, v16, v20

    if-lez v22, :cond_1c

    .line 2060
    if-lez p1, :cond_1b

    .line 2061
    const-string v22, "MotionPanoramaApp"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Left - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v22

    sub-float v22, v8, v22

    sget v23, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_OFFSET:F

    sub-float v4, v22, v23

    .line 2064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v5, v9, v22

    .line 2065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2109
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 2110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    .line 2111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    goto/16 :goto_0

    .line 1836
    .end local v11    # "warningLevel":I
    .end local v12    # "totalDistance":D
    .end local v14    # "xDistance":D
    .end local v16    # "xDistanceRate":D
    .end local v18    # "yDistance":D
    .end local v20    # "yDistanceRate":D
    :pswitch_5
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    .line 1837
    const/high16 v6, 0x42700000    # 60.0f

    .line 1838
    sget v22, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    move/from16 v23, v0

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v23

    sub-float v10, v22, v23

    .line 1839
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitX:F

    move/from16 v22, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    sget v24, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v7

    div-float v23, v23, v24

    add-float v8, v22, v23

    .line 1840
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sget v23, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v23, v6

    div-float v22, v22, v23

    add-float v9, v10, v22

    .line 1841
    goto/16 :goto_1

    .line 1843
    :pswitch_6
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeRectWidth:F

    .line 1844
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    .line 1845
    sget v22, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    move/from16 v23, v0

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    move/from16 v23, v0

    sub-float v10, v22, v23

    .line 1846
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v22, v0

    sget v23, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v23, v7

    div-float v22, v22, v23

    add-float v8, v10, v22

    .line 1847
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeY:F

    move/from16 v22, v0

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sget v24, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v6

    div-float v23, v23, v24

    add-float v9, v22, v23

    .line 1848
    goto/16 :goto_1

    .line 1850
    :pswitch_7
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeRectWidth:F

    .line 1851
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    .line 1852
    sget v22, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v23, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    move/from16 v23, v0

    sub-float v10, v22, v23

    .line 1853
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v22, v0

    sget v23, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v23, v7

    div-float v22, v22, v23

    add-float v8, v10, v22

    .line 1854
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeY:F

    move/from16 v22, v0

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sget v24, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v6

    div-float v23, v23, v24

    add-float v9, v22, v23

    .line 1855
    goto/16 :goto_1

    .line 1870
    .restart local v11    # "warningLevel":I
    .restart local v14    # "xDistance":D
    .restart local v18    # "yDistance":D
    :pswitch_8
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v18, v18, v22

    .line 1871
    goto/16 :goto_2

    .line 1874
    :pswitch_9
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v14, v14, v22

    .line 1875
    goto/16 :goto_2

    .line 1882
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    if-gtz p1, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    if-gez p1, :cond_3

    .line 1883
    :cond_9
    const-wide/16 v14, 0x0

    goto/16 :goto_3

    .line 1894
    .restart local v12    # "totalDistance":D
    .restart local v16    # "xDistanceRate":D
    .restart local v20    # "yDistanceRate":D
    :pswitch_a
    const-wide/high16 v22, 0x403e000000000000L    # 30.0

    cmpg-double v22, v12, v22

    if-gez v22, :cond_d

    .line 1895
    const/4 v11, 0x0

    .line 1901
    :goto_7
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_f

    .line 1902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 1903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    .line 1904
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 1907
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    move/from16 v22, v0

    if-nez v22, :cond_b

    .line 1908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1917
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 1942
    :cond_b
    :goto_8
    const/16 v22, 0x1

    move/from16 v0, v22

    if-lt v11, v0, :cond_15

    .line 1943
    cmpl-double v22, v20, v16

    if-lez v22, :cond_13

    .line 1944
    if-lez p2, :cond_12

    .line 1945
    const-string v22, "MotionPanoramaApp"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Down - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v4, v8, v22

    .line 1948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v22

    add-float v22, v22, v9

    sget v23, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_OFFSET:F

    add-float v5, v22, v23

    .line 1949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1993
    :cond_c
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    .line 1996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    goto/16 :goto_0

    .line 1896
    :cond_d
    const-wide/high16 v22, 0x4049000000000000L    # 50.0

    cmpg-double v22, v12, v22

    if-gez v22, :cond_e

    .line 1897
    const/4 v11, 0x1

    goto/16 :goto_7

    .line 1899
    :cond_e
    const/4 v11, 0x2

    goto/16 :goto_7

    .line 1919
    :cond_f
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v11, v0, :cond_11

    .line 1920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 1921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    .line 1922
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 1925
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    move/from16 v22, v0

    if-nez v22, :cond_b

    .line 1926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1935
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    goto/16 :goto_8

    .line 1938
    :cond_11
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 1939
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaSound()V

    goto/16 :goto_8

    .line 1957
    :cond_12
    const-string v22, "MotionPanoramaApp"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Up - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v4, v8, v22

    .line 1960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v22

    sub-float v22, v9, v22

    sget v23, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_OFFSET:F

    sub-float v5, v22, v23

    .line 1961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_9

    .line 1970
    :cond_13
    if-lez p1, :cond_14

    .line 1971
    const-string v22, "MotionPanoramaApp"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Left - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v22

    sub-float v22, v8, v22

    sget v23, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_OFFSET:F

    sub-float v4, v22, v23

    .line 1974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v5, v9, v22

    .line 1975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_9

    .line 1981
    :cond_14
    if-gez p1, :cond_c

    .line 1982
    const-string v22, "MotionPanoramaApp"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Right - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v22

    add-float v22, v22, v8

    sget v23, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_OFFSET:F

    add-float v4, v22, v23

    .line 1985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v5, v9, v22

    .line 1986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_9

    .line 1998
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 2000
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setGuideTextLocation()V

    .line 2002
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideWarningArrow()V

    .line 2003
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideWarningBox()V

    goto/16 :goto_0

    .line 2011
    :cond_16
    const-wide/high16 v22, 0x4049000000000000L    # 50.0

    cmpg-double v22, v12, v22

    if-gez v22, :cond_17

    .line 2012
    const/4 v11, 0x1

    goto/16 :goto_4

    .line 2014
    :cond_17
    const/4 v11, 0x2

    goto/16 :goto_4

    .line 2034
    :cond_18
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v11, v0, :cond_1a

    .line 2035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 2036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    .line 2037
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 2040
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    move/from16 v22, v0

    if-nez v22, :cond_5

    .line 2041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2050
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    goto/16 :goto_5

    .line 2053
    :cond_1a
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 2054
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaSound()V

    goto/16 :goto_5

    .line 2073
    :cond_1b
    const-string v22, "MotionPanoramaApp"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Right - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v22

    add-float v22, v22, v8

    sget v23, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_OFFSET:F

    add-float v4, v22, v23

    .line 2076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v5, v9, v22

    .line 2077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_6

    .line 2084
    :cond_1c
    if-gez p2, :cond_1d

    .line 2085
    const-string v22, "MotionPanoramaApp"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Up - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v4, v8, v22

    .line 2088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v22

    sub-float v22, v9, v22

    sget v23, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_OFFSET:F

    sub-float v5, v22, v23

    .line 2089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_6

    .line 2097
    :cond_1d
    if-lez p2, :cond_6

    .line 2098
    const-string v22, "MotionPanoramaApp"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Down - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v4, v8, v22

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v22

    add-float v22, v22, v9

    sget v23, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_OFFSET:F

    add-float v5, v22, v23

    .line 2102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_6

    .line 2113
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    .line 2115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 2116
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setGuideTextLocation()V

    .line 2118
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideWarningArrow()V

    .line 2119
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideWarningBox()V

    goto/16 :goto_0

    .line 1827
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1867
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_2
        :pswitch_8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_8
    .end packed-switch

    .line 1891
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method

.method private removeTempFile()V
    .locals 6

    .prologue
    .line 2132
    const-string v3, "MotionPanoramaApp"

    const-string v4, "removeTempFile"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v0

    .line 2134
    .local v0, "directory":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "motionpanorama.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2136
    .local v2, "filename":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2140
    :goto_0
    return-void

    .line 2137
    :catch_0
    move-exception v1

    .line 2138
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "MotionPanoramaApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 2143
    const-string v0, "MotionPanoramaApp"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->clear()V

    .line 2146
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->updateLivePreviewLayout(Z)V

    .line 2147
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setPreviewThumbnailSizeToDefault()V

    .line 2149
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->showPreviewGroup()V

    .line 2150
    return-void
.end method

.method private restartCancelTimer()V
    .locals 0

    .prologue
    .line 2153
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopCancelTimer()V

    .line 2154
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->startCancelTimer()V

    .line 2155
    return-void
.end method

.method private saveAudio(Ljava/lang/String;)V
    .locals 5
    .param p1, "outputFileName"    # Ljava/lang/String;

    .prologue
    .line 2158
    const-string v2, "MotionPanoramaApp"

    const-string v3, "saveAudio"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    .line 2161
    .local v1, "directory":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "motionpanorama.aac"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2162
    .local v0, "audioPath":Ljava/lang/String;
    const-string v2, "Motion_Panorama_AAC_000"

    const/16 v3, 0x104

    const/4 v4, 0x1

    invoke-static {p1, v2, v0, v3, v4}, Lcom/sec/android/secvision/sef/SEF;->addSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    .line 2163
    return-void
.end method

.method private setAlphaArrow(Lcom/samsung/android/glview/GLView;)V
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 2167
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 2168
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2169
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 2170
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 2172
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2173
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->startAnimation()V

    .line 2174
    return-void
.end method

.method private declared-synchronized setCaptureProgressIncreased()V
    .locals 3

    .prologue
    .line 2177
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCapturing:Z

    .line 2178
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    .line 2180
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureProgressIncreased - mCaptureCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2181
    monitor-exit p0

    return-void

    .line 2177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setEnterOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 2184
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnterOrientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEnterOrientation:I

    .line 2186
    return-void
.end method

.method private setGuideTextLocation()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x2

    .line 2194
    const/4 v6, 0x0

    .line 2195
    .local v6, "textX":F
    const/4 v7, 0x0

    .line 2196
    .local v7, "textY":F
    sget v5, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_WIDTH:F

    .line 2197
    .local v5, "textW":F
    sget v4, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_HEIGHT:F

    .line 2198
    .local v4, "textH":F
    sget v8, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_TEXT_MARGIN:F

    .line 2200
    .local v8, "text_mergin":F
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    if-nez v9, :cond_0

    .line 2201
    const-string v9, "MotionPanoramaApp"

    const-string v10, "setGuideTextLocation : LivePreview is null!"

    invoke-static {v9, v10}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    :goto_0
    return-void

    .line 2205
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLRectangle;->getTranslateX()F

    move-result v2

    .line 2206
    .local v2, "rectX":F
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLRectangle;->getTranslateY()F

    move-result v3

    .line 2207
    .local v3, "rectY":F
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v1

    .line 2208
    .local v1, "rectW":F
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v0

    .line 2210
    .local v0, "rectH":F
    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    packed-switch v9, :pswitch_data_0

    .line 2265
    :goto_1
    :pswitch_0
    const-string v9, "MotionPanoramaApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setGuideTextLocation : Orientation-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Direction -"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    const-string v9, "MotionPanoramaApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setGuideTextLocation : Box x("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), y("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), w("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), h("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    const-string v9, "MotionPanoramaApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setGuideTextLocation : text x("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), y("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), w("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), h("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v6, v7}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 2213
    :pswitch_1
    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    packed-switch v9, :pswitch_data_1

    goto/16 :goto_1

    .line 2215
    :pswitch_2
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v12, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 2216
    add-float v9, v2, v1

    add-float v6, v9, v8

    .line 2217
    sub-float v9, v0, v4

    div-float/2addr v9, v11

    add-float v7, v3, v9

    .line 2218
    goto/16 :goto_1

    .line 2220
    :pswitch_3
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v10, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 2221
    add-float v9, v2, v1

    add-float/2addr v9, v4

    add-float v6, v9, v8

    .line 2222
    sub-float v9, v5, v0

    div-float/2addr v9, v11

    sub-float v7, v3, v9

    .line 2223
    goto/16 :goto_1

    .line 2225
    :pswitch_4
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v12, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 2226
    sub-float v6, v2, v8

    .line 2227
    add-float v9, v3, v0

    sub-float v10, v0, v4

    div-float/2addr v10, v11

    add-float v7, v9, v10

    .line 2228
    goto/16 :goto_1

    .line 2230
    :pswitch_5
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v10, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 2231
    sub-float v9, v2, v4

    sub-float v6, v9, v8

    .line 2232
    add-float v9, v3, v0

    sub-float v10, v5, v0

    div-float/2addr v10, v11

    add-float v7, v9, v10

    goto/16 :goto_1

    .line 2239
    :pswitch_6
    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    packed-switch v9, :pswitch_data_2

    goto/16 :goto_1

    .line 2241
    :pswitch_7
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v10, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 2242
    sub-float v9, v1, v5

    div-float/2addr v9, v11

    add-float v6, v2, v9

    .line 2243
    sub-float v9, v3, v4

    sub-float v7, v9, v8

    .line 2244
    goto/16 :goto_1

    .line 2246
    :pswitch_8
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v12, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 2247
    add-float v9, v2, v1

    sub-float v10, v1, v4

    div-float/2addr v10, v11

    sub-float v6, v9, v10

    .line 2248
    add-float v9, v3, v0

    add-float v7, v9, v8

    .line 2249
    goto/16 :goto_1

    .line 2251
    :pswitch_9
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v10, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 2252
    add-float v9, v2, v1

    sub-float v10, v5, v1

    div-float/2addr v10, v11

    add-float v6, v9, v10

    .line 2253
    add-float v9, v3, v0

    add-float/2addr v9, v4

    add-float v7, v9, v8

    .line 2254
    goto/16 :goto_1

    .line 2256
    :pswitch_a
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v12, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 2257
    sub-float v9, v1, v4

    div-float/2addr v9, v11

    add-float v6, v2, v9

    .line 2258
    sub-float v7, v3, v8

    goto/16 :goto_1

    .line 2210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2213
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2239
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private setLowResolutionBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2278
    const-string v0, "MotionPanoramaApp"

    const-string v1, "Fancy progress bar is not implemented yet."

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    return-void
.end method

.method private setMotionPanoramaEnabled(I)V
    .locals 4
    .param p1, "modeid"    # I

    .prologue
    const/4 v3, 0x1

    .line 2282
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMotionPanoramaMode - modeid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    if-ne p1, v3, :cond_0

    .line 2285
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsMotionPanoramaEnabled:Z

    .line 2289
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsMotionPanoramaEnabled:Z

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableMotionPanoramaMode(Z)V

    .line 2290
    return-void

    .line 2287
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsMotionPanoramaEnabled:Z

    goto :goto_0
.end method

.method private setOutputFile()V
    .locals 7

    .prologue
    .line 2296
    const-string v4, "MotionPanoramaApp"

    const-string v5, "setOutputFile"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 2299
    .local v1, "directory":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2300
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2301
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2302
    const-string v4, "MotionPanoramaApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to Create Directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    .line 2308
    new-instance v0, Ljava/io/File;

    .end local v0    # "cameraDir":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2309
    .restart local v0    # "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2310
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2311
    const-string v4, "MotionPanoramaApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to Create Directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v5, -0xa

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    .line 2327
    :goto_0
    return-void

    .line 2317
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "motionpanorama.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2318
    .local v2, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2319
    .local v3, "preFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2320
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2321
    const-string v4, "MotionPanoramaApp"

    const-string v5, "temp file was deleted"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setOutputFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized setPostCaptureProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 2330
    monitor-enter p0

    :try_start_0
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPostCaptureProgress :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPostProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2332
    monitor-exit p0

    return-void

    .line 2330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setPreviewThumbnailSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2335
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    if-lez v1, :cond_0

    .line 2336
    const-string v1, "MotionPanoramaApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewThumbnailSize : width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    packed-switch v1, :pswitch_data_0

    .line 2354
    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    .line 2355
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    .line 2359
    :goto_0
    return-void

    .line 2343
    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    int-to-float v2, p2

    div-float v0, v1, v2

    .line 2344
    .local v0, "Ratio":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    .line 2345
    int-to-float v1, p2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    goto :goto_0

    .line 2349
    .end local v0    # "Ratio":F
    :pswitch_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    int-to-float v2, p1

    div-float v0, v1, v2

    .line 2350
    .restart local v0    # "Ratio":F
    int-to-float v1, p2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    .line 2351
    int-to-float v1, p1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    goto :goto_0

    .line 2340
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setPreviewThumbnailSizeToDefault()V
    .locals 1

    .prologue
    .line 2362
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    .line 2363
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    .line 2364
    return-void
.end method

.method private showGuideText()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 2367
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 2368
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsGuideTextDisplaying:Z

    if-eqz v0, :cond_2

    .line 2369
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2370
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2376
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2377
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2380
    :cond_1
    return-void

    .line 2373
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsGuideTextDisplaying:Z

    goto :goto_0
.end method

.method private showPanoramaToastPopup(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    const/4 v2, 0x1

    .line 2384
    packed-switch p1, :pswitch_data_0

    .line 2394
    :goto_0
    return-void

    .line 2386
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f08015e

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2389
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f08018b

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2384
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showPreviewGroup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2397
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_0

    .line 2398
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2401
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->updateArrow()V

    .line 2403
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 2417
    :cond_1
    return-void

    .line 2406
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 2407
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2406
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2412
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x2

    .restart local v0    # "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 2413
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2412
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showStopButton()V
    .locals 2

    .prologue
    .line 2420
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2421
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 2422
    return-void
.end method

.method private startCancelTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2425
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2426
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2428
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2429
    return-void
.end method

.method private startSoundRecording()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 2432
    const-string v0, "MotionPanoramaApp"

    const-string v3, "startSoundRecording"

    invoke-static {v0, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsSoundRecording:Z

    if-eqz v0, :cond_0

    .line 2468
    :goto_0
    return-void

    .line 2437
    :cond_0
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2438
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isAudioRecordAllowed"

    new-array v4, v11, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "false"

    aput-object v10, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2440
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2441
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2442
    const-string v0, "isAudioRecordAllowed"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2443
    const-string v0, "MotionPanoramaApp"

    const-string v2, "Audio record not allowed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2447
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2451
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v7

    .line 2452
    .local v7, "directory":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "motionpanorama.aac"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2454
    .local v9, "path":Ljava/lang/String;
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 2456
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 2457
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 2458
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 2459
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v9}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 2460
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 2461
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2466
    .end local v7    # "directory":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    :goto_1
    iput-boolean v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsSoundRecording:Z

    .line 2467
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->disableAlertSound(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2462
    :catch_0
    move-exception v8

    .line 2463
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private stopCancelTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2471
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2472
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2474
    :cond_0
    return-void
.end method

.method private stopPanoramaCapturing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2477
    const-string v0, "MotionPanoramaApp"

    const-string v1, "stopPanoramaCapturing"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2479
    const-string v0, "MotionPanoramaApp"

    const-string v1, "current is not Capturing"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    :goto_0
    return-void

    .line 2482
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    .line 2484
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsSoundRecordingEnabled:Z

    if-eqz v0, :cond_1

    .line 2485
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopSoundRecording()V

    .line 2488
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopMotionPanorama()V

    .line 2490
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideCaptureTri()V

    .line 2492
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCaptureStarted:Z

    .line 2493
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCapturing:Z

    .line 2494
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    .line 2495
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    goto :goto_0
.end method

.method private stopPanoramaSound()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 2499
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2500
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2501
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2503
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(I)V

    .line 2504
    return-void
.end method

.method private stopSoundRecording()V
    .locals 3

    .prologue
    .line 2507
    const-string v1, "MotionPanoramaApp"

    const-string v2, "stopSoundRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsSoundRecording:Z

    if-nez v1, :cond_0

    .line 2524
    :goto_0
    return-void

    .line 2514
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 2515
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 2516
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 2517
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2522
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsSoundRecording:Z

    .line 2523
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->enableAlertSound(Landroid/content/Context;)V

    goto :goto_0

    .line 2518
    :catch_0
    move-exception v0

    .line 2519
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private updateArrow()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    .line 2527
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 2549
    :goto_0
    return-void

    .line 2530
    :pswitch_0
    const v1, 0x7f090033

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    .line 2532
    .local v0, "triOffset":F
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v8

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2534
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v7

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleX:F

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto :goto_0

    .line 2540
    .end local v0    # "triOffset":F
    :pswitch_1
    const v1, 0x7f090033

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    .line 2542
    .restart local v0    # "triOffset":F
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v5

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleY:F

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2544
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v9

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleHeight:F

    add-float/2addr v3, v4

    add-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 2527
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized updateLivePreviewLayout(Z)V
    .locals 50
    .param p1, "detectedDirection"    # Z

    .prologue
    .line 2556
    monitor-enter p0

    :try_start_0
    const-string v6, "MotionPanoramaApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateLivePreviewLayout - mCaptureCount:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", direction:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v9, 0x2

    if-ge v6, v9, :cond_5

    if-nez p1, :cond_5

    .line 2560
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsDrawLivePreview:Z

    if-eqz v6, :cond_1

    .line 2564
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->showPreviewGroup()V

    .line 2566
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    .line 2567
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_2

    .line 2568
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleX:F

    move/from16 v25, v0

    .line 2569
    .local v25, "groupX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleY:F

    move/from16 v26, v0

    .line 2570
    .local v26, "groupY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    move/from16 v24, v0

    .line 2571
    .local v24, "groupW":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    move/from16 v21, v0

    .line 2572
    .local v21, "groupH":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    move/from16 v41, v0

    .line 2573
    .local v41, "rectW":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    move/from16 v40, v0

    .line 2587
    .local v40, "rectH":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 2588
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v9, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2589
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 2590
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    move/from16 v0, v41

    move/from16 v1, v40

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 2593
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v6, :cond_1

    .line 2594
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2595
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2790
    .end local v21    # "groupH":F
    .end local v24    # "groupW":F
    .end local v25    # "groupX":F
    .end local v26    # "groupY":F
    .end local v40    # "rectH":F
    .end local v41    # "rectW":F
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 2575
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    const/4 v9, 0x1

    if-eq v6, v9, :cond_3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    const/4 v9, 0x3

    if-ne v6, v9, :cond_4

    .line 2576
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleX:F

    move/from16 v25, v0

    .line 2577
    .restart local v25    # "groupX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleY:F

    move/from16 v26, v0

    .line 2578
    .restart local v26    # "groupY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    move/from16 v24, v0

    .line 2579
    .restart local v24    # "groupW":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleHeight:F

    move/from16 v21, v0

    .line 2580
    .restart local v21    # "groupH":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    move/from16 v41, v0

    .line 2581
    .restart local v41    # "rectW":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleHeight:F

    move/from16 v40, v0

    .restart local v40    # "rectH":F
    goto :goto_0

    .line 2583
    .end local v21    # "groupH":F
    .end local v24    # "groupW":F
    .end local v25    # "groupX":F
    .end local v26    # "groupY":F
    .end local v40    # "rectH":F
    .end local v41    # "rectW":F
    :cond_4
    const-string v6, "MotionPanoramaApp"

    const-string v9, "updateLivePreviewLayout: Invalid orientation"

    invoke-static {v6, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2556
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2598
    :cond_5
    if-eqz p1, :cond_1

    .line 2599
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hidePreviewGroup()V

    .line 2600
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2601
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v6, :cond_7

    .line 2602
    :cond_6
    const-string v6, "MotionPanoramaApp"

    const-string v9, "updateLivePreviewLayout: LivePreview is null yet. ignore"

    invoke-static {v6, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2605
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2606
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->showStopButton()V

    .line 2614
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    sget v10, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float v48, v6, v9

    .line 2615
    .local v48, "widthFocus":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    sget v10, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float v28, v6, v9

    .line 2617
    .local v28, "heightFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x0

    aget v36, v6, v9

    .line 2618
    .local v36, "oldLeftGroup":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x1

    aget v38, v6, v9

    .line 2619
    .local v38, "oldTopGroup":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLBitmapTexture;->getLeft()F

    move-result v35

    .line 2620
    .local v35, "oldLeft":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLBitmapTexture;->getTop()F

    move-result v37

    .line 2621
    .local v37, "oldTop":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v39

    .line 2622
    .local v39, "oldWidth":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v34

    .line 2623
    .local v34, "oldHeight":F
    const/16 v30, 0x1

    .line 2625
    .local v30, "landscape":Z
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    sget v10, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float v47, v6, v9

    .line 2626
    .local v47, "width":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    sget v10, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float v27, v6, v9

    .line 2628
    .local v27, "height":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v49, v0

    monitor-enter v49
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2629
    :try_start_3
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    packed-switch v6, :pswitch_data_0

    .line 2726
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x0

    aget v6, v6, v9

    sub-float v18, v36, v6

    .line 2727
    .local v18, "fromXDeltaRect":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x1

    aget v6, v6, v9

    sub-float v20, v38, v6

    .line 2728
    .local v20, "fromYDeltaRect":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x0

    aget v6, v6, v9

    sub-float v6, v36, v6

    add-float v35, v35, v6

    .line 2729
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLBitmapTexture;->getLeft()F

    move-result v6

    sub-float v17, v35, v6

    .line 2730
    .local v17, "fromXDelta":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x1

    aget v6, v6, v9

    sub-float v6, v38, v6

    add-float v37, v37, v6

    .line 2731
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLBitmapTexture;->getTop()F

    move-result v6

    sub-float v19, v37, v6

    .line 2732
    .local v19, "fromYDelta":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v6

    div-float v5, v39, v6

    .line 2733
    .local v5, "scaleX":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v6

    div-float v7, v34, v6

    .line 2735
    .local v7, "scaleY":F
    new-instance v29, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v29 .. v29}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 2740
    .local v29, "interpol":Landroid/view/animation/Interpolator;
    if-eqz v30, :cond_8

    .line 2741
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 2742
    .local v4, "animRect":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v4, v6, v9, v10, v11}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2744
    const-wide/16 v10, 0xb2

    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2745
    const-wide/16 v10, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2746
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2747
    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2774
    :goto_3
    new-instance v44, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v6, v2, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2775
    .local v44, "ta":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v11

    float-to-int v11, v11

    move-object/from16 v0, v44

    invoke-virtual {v0, v6, v9, v10, v11}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2777
    const-wide/16 v10, 0xb2

    move-object/from16 v0, v44

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2778
    const-wide/16 v10, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2779
    const/4 v6, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2780
    move-object/from16 v0, v44

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2782
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->resetClipRect()V

    .line 2783
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6, v4}, Lcom/samsung/android/glview/GLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2784
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Lcom/samsung/android/glview/GLBitmapTexture;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2786
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->startAnimation()V

    .line 2787
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLBitmapTexture;->startAnimation()V

    .line 2788
    monitor-exit v49

    goto/16 :goto_1

    .end local v4    # "animRect":Landroid/view/animation/Animation;
    .end local v5    # "scaleX":F
    .end local v7    # "scaleY":F
    .end local v17    # "fromXDelta":F
    .end local v18    # "fromXDeltaRect":F
    .end local v19    # "fromYDelta":F
    .end local v20    # "fromYDeltaRect":F
    .end local v29    # "interpol":Landroid/view/animation/Interpolator;
    .end local v44    # "ta":Landroid/view/animation/Animation;
    :catchall_1
    move-exception v6

    monitor-exit v49
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2631
    :pswitch_1
    const/16 v22, 0x0

    .line 2632
    .local v22, "groupLeft":F
    const/16 v23, 0x0

    .line 2633
    .local v23, "groupTop":F
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v6

    neg-float v6, v6

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    add-float v43, v6, v9

    .line 2634
    .local v43, "startOffsetPosition":F
    move/from16 v32, v43

    .line 2635
    .local v32, "leftFocus":F
    sget v22, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    .line 2636
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeY:F

    move/from16 v23, v0

    .line 2637
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeY:F

    sget v9, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    sub-float v46, v6, v9

    .line 2639
    .local v46, "topFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v9, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2640
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v9, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 2641
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 2643
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    sget v9, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 2645
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 2646
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    const/high16 v10, 0x40000000    # 2.0f

    sget v11, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    move/from16 v0, v47

    invoke-virtual {v6, v0, v9}, Lcom/samsung/android/glview/GLBitmapTexture;->setSize(FF)V

    .line 2649
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 2651
    add-float v6, v32, v48

    const/high16 v9, 0x41400000    # 12.0f

    sub-float v47, v6, v9

    .line 2652
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    sget v10, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_HEIGHT:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move/from16 v0, v47

    invoke-virtual {v6, v0, v9}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2653
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 2657
    .end local v22    # "groupLeft":F
    .end local v23    # "groupTop":F
    .end local v32    # "leftFocus":F
    .end local v43    # "startOffsetPosition":F
    .end local v46    # "topFocus":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v6

    neg-float v6, v6

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v6, v9

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v6, v9

    sget v9, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    sub-float v43, v6, v9

    .line 2658
    .restart local v43    # "startOffsetPosition":F
    sget v6, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v9, 0x40000000    # 2.0f

    sget v10, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v6, v9

    sub-float v31, v6, v47

    .line 2659
    .local v31, "left":F
    move/from16 v32, v43

    .line 2660
    .restart local v32    # "leftFocus":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeY:F

    sget v9, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    sub-float v46, v6, v9

    .line 2662
    .restart local v46    # "topFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v9, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 2663
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    sget v10, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeY:F

    invoke-virtual {v6, v9, v10, v11}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2664
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 2666
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    sget v9, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 2668
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    sget v9, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move/from16 v0, v31

    invoke-virtual {v6, v0, v9}, Lcom/samsung/android/glview/GLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 2669
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    const/high16 v10, 0x40000000    # 2.0f

    sget v11, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    move/from16 v0, v47

    invoke-virtual {v6, v0, v9}, Lcom/samsung/android/glview/GLBitmapTexture;->setSize(FF)V

    .line 2671
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move/from16 v0, v32

    move/from16 v1, v46

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 2673
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v48, v6

    sub-float v6, v32, v6

    const/high16 v9, 0x41400000    # 12.0f

    sub-float/2addr v6, v9

    sget v9, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    sub-float v47, v6, v9

    .line 2674
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    const/high16 v9, 0x42200000    # 40.0f

    add-float v9, v9, v47

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    sget v11, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_HEIGHT:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2675
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 2679
    .end local v31    # "left":F
    .end local v32    # "leftFocus":F
    .end local v43    # "startOffsetPosition":F
    .end local v46    # "topFocus":F
    :pswitch_3
    const/16 v30, 0x0

    .line 2680
    sget v6, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float v6, v6, v27

    sget v9, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v45, v6, v9

    .line 2681
    .local v45, "top":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    neg-float v6, v6

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    sget v9, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v6, v9

    sget v9, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    sub-float v43, v6, v9

    .line 2682
    .restart local v43    # "startOffsetPosition":F
    move/from16 v46, v43

    .line 2683
    .restart local v46    # "topFocus":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitX:F

    sget v9, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    sub-float v32, v6, v9

    .line 2685
    .restart local v32    # "leftFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    sget v10, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 2686
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitX:F

    sget v11, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v6, v9, v10, v11}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2687
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 2689
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    sget v10, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 2691
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    sget v11, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    sget v10, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v10, v27, v10

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLBitmapTexture;->setSize(FF)V

    .line 2692
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    const/4 v9, 0x0

    move/from16 v0, v45

    invoke-virtual {v6, v9, v0}, Lcom/samsung/android/glview/GLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 2694
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move/from16 v0, v32

    move/from16 v1, v46

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 2697
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v28, v6

    sub-float v6, v45, v6

    sget v9, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_HEIGHT:F

    sub-float/2addr v6, v9

    const/high16 v9, 0x41b00000    # 22.0f

    sub-float v27, v6, v9

    .line 2698
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitRectWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x41900000    # 18.0f

    sub-float/2addr v9, v10

    move/from16 v0, v27

    invoke-virtual {v6, v9, v0}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2699
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 2703
    .end local v32    # "leftFocus":F
    .end local v43    # "startOffsetPosition":F
    .end local v45    # "top":F
    .end local v46    # "topFocus":F
    :pswitch_4
    const/16 v30, 0x0

    .line 2704
    const/16 v45, 0x0

    .line 2705
    .restart local v45    # "top":F
    sget v6, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v9, 0x40000000    # 2.0f

    sget v10, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v6, v9

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v6, v9

    const/high16 v9, 0x41100000    # 9.0f

    div-float/2addr v6, v9

    const/high16 v9, 0x40000000    # 2.0f

    sget v10, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    add-float v28, v6, v9

    .line 2706
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    sget v9, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    sub-float v43, v6, v9

    .line 2707
    .restart local v43    # "startOffsetPosition":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitX:F

    sget v9, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    sub-float v32, v6, v9

    .line 2708
    .restart local v32    # "leftFocus":F
    move/from16 v46, v43

    .line 2710
    .restart local v46    # "topFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    sget v10, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 2711
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitX:F

    sget v11, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v6, v9, v10, v11}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2712
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 2713
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    sget v10, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 2715
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    sget v11, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    sget v10, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v10, v27, v10

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLBitmapTexture;->setSize(FF)V

    .line 2716
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    const/4 v9, 0x0

    move/from16 v0, v45

    invoke-virtual {v6, v9, v0}, Lcom/samsung/android/glview/GLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 2718
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 2720
    add-float v6, v27, v28

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v28, v9

    sub-float v27, v6, v9

    .line 2721
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitRectWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x41900000    # 18.0f

    sub-float/2addr v9, v10

    move/from16 v0, v27

    invoke-virtual {v6, v9, v0}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2722
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 2749
    .end local v32    # "leftFocus":F
    .end local v43    # "startOffsetPosition":F
    .end local v45    # "top":F
    .end local v46    # "topFocus":F
    .restart local v5    # "scaleX":F
    .restart local v7    # "scaleY":F
    .restart local v17    # "fromXDelta":F
    .restart local v18    # "fromXDeltaRect":F
    .restart local v19    # "fromYDelta":F
    .restart local v20    # "fromYDeltaRect":F
    .restart local v29    # "interpol":Landroid/view/animation/Interpolator;
    :cond_8
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    move v9, v5

    move v11, v7

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 2750
    .local v8, "scaleRect":Landroid/view/animation/ScaleAnimation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v8, v6, v9, v10, v11}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 2752
    const-wide/16 v10, 0xb2

    invoke-virtual {v8, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 2753
    const-wide/16 v10, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 2754
    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 2755
    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2757
    new-instance v33, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-direct {v0, v1, v6, v2, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2758
    .local v33, "moveRect":Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v11

    float-to-int v11, v11

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v9, v10, v11}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 2760
    const-wide/16 v10, 0xb2

    move-object/from16 v0, v33

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2761
    const-wide/16 v10, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 2762
    const/4 v6, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 2763
    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2765
    new-instance v42, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2766
    .local v42, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2767
    move-object/from16 v0, v42

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2768
    const-wide/16 v10, 0xb2

    move-object/from16 v0, v42

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 2769
    move-object/from16 v0, v42

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2770
    move-object/from16 v4, v42

    .restart local v4    # "animRect":Landroid/view/animation/Animation;
    goto/16 :goto_3

    .line 2629
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getMaxFileSizeOfImage()J
    .locals 2

    .prologue
    .line 336
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCaptureStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCapturing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomAvailable()Z
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 6
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 351
    const-string v1, "MotionPanoramaApp"

    const-string v2, "onActivate"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 355
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getPanoramaMaxCount(Lcom/sec/android/app/camera/interfaces/Engine;)[F

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->initCoordinate([F)V

    .line 357
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v1

    if-nez v1, :cond_2

    .line 358
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v5, [I

    const/16 v3, 0x87

    aput v3, v2, v4

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    .line 363
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 365
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setMotionPanoramaListener(Lcom/sec/android/seccamera/SecCamera$MotionPanoramaEventListener;)V

    .line 366
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 367
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    .line 370
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0x86

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 371
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 372
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "camera.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 375
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPanoramaMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setMotionPanoramaEnabled(I)V

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 380
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 387
    :cond_1
    :goto_1
    return-void

    .line 360
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v4, [I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    goto :goto_0

    .line 384
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->showPreviewGroup()V

    .line 385
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsDrawLivePreview:Z

    goto :goto_1
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraSettingChanged(II)V
    .locals 3
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 396
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraSettingsChanged: menuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", modeid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    packed-switch p1, :pswitch_data_0

    .line 405
    :goto_0
    return-void

    .line 400
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setMotionPanoramaEnabled(I)V

    goto :goto_0

    .line 398
    :pswitch_data_0
    .packed-switch 0x86
        :pswitch_0
    .end packed-switch
.end method

.method public onChangeShootingModeParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 3
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    const/16 v2, 0x7530

    const/16 v1, 0x3a98

    .line 412
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_LOW_PERFORMANCE:Z

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {p1, v1, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 418
    :goto_0
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v0, "picture-size"

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_RESOLUTION:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    return-void

    .line 415
    :cond_0
    invoke-virtual {p1, v2, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

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
    .line 425
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 426
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 427
    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 428
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 430
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->createPanoramaView()V

    .line 431
    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;)Z
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 435
    const-string v1, "sef_file_type"

    const/16 v2, 0x8e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsMotionPanoramaEnabled:Z

    if-eqz v1, :cond_0

    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, "dataSubType":I
    or-int/lit8 v0, v0, 0x1

    .line 439
    const-string v1, "sef_file_sub_type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 441
    .end local v0    # "dataSubType":I
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 452
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInactivate - capture count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getCaptureProgressIncreased()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    .line 454
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->cancelPanoramaCapture()V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->clearSideQuickSetting()V

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsDrawLivePreview:Z

    .line 460
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->clear()V

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x86

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setMotionPanoramaListener(Lcom/sec/android/seccamera/SecCamera$MotionPanoramaEventListener;)V

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    .line 470
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 474
    sparse-switch p1, :sswitch_data_0

    .line 490
    :cond_0
    :sswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 476
    :sswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPostProgress:I

    if-lez v0, :cond_0

    .line 477
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown - it is stitching ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPostProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/4 v0, 0x1

    goto :goto_0

    .line 474
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 496
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 540
    :cond_1
    :goto_1
    return v0

    .line 498
    :sswitch_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPostProgress:I

    if-gtz v2, :cond_1

    .line 501
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 502
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 504
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCaptureStarted:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getCaptureProgressIncreased()I

    move-result v2

    if-nez v2, :cond_3

    .line 505
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->cancelPanoramaCapture()V

    .line 506
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->reset()V

    goto :goto_1

    .line 508
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getCaptureProgressIncreased()I

    move-result v2

    if-lez v2, :cond_0

    .line 509
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    if-eqz v1, :cond_4

    .line 510
    const-string v1, "MotionPanoramaApp"

    const-string v2, "already Stopping..."

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 513
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaCapturing()V

    goto :goto_1

    .line 520
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_5

    .line 522
    const-string v1, "MotionPanoramaApp"

    const-string v2, "panorama can be saved at least two shot"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 526
    :cond_5
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    if-nez v2, :cond_7

    .line 527
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_6

    .line 528
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 530
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaCapturing()V

    move v0, v1

    .line 531
    goto :goto_1

    .line 533
    :cond_7
    const-string v0, "MotionPanoramaApp"

    const-string v2, "now panorama is stopping"

    invoke-static {v0, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 496
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public onMotionPanoramaCaptureResult(Z)V
    .locals 6
    .param p1, "arg0"    # Z

    .prologue
    .line 550
    const-string v2, "MotionPanoramaApp"

    const-string v3, "onMotionPanoramaCaptureResult"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    if-nez p1, :cond_0

    .line 553
    const-string v2, "MotionPanoramaApp"

    const-string v3, "onMotionPanoramaCaptureResult - Error!"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const-string v3, "motionpanorama.jpg"

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->renamePostSavingFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, "outputFileName":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 562
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getOrientationOnTake()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 564
    .local v0, "orientation":I
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 565
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 566
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 567
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 570
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 571
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/util/ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->addUriListInSecureCamera(Landroid/net/Uri;)V

    .line 578
    .end local v0    # "orientation":I
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsSoundRecordingEnabled:Z

    if-eqz v2, :cond_3

    .line 579
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->saveAudio(Ljava/lang/String;)V

    .line 581
    :cond_3
    const-string v2, "Panorama_Shot_Info"

    const-string v3, "PanoramaShot"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v4, 0x8e0

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/secvision/sef/SEF;->addSEFData(Ljava/lang/String;Ljava/lang/String;[BII)I

    .line 582
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    .line 584
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateLatestMedia()V

    .line 585
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateQuickView()V

    .line 587
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->unlockAEAWB()V

    .line 588
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusActive()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 589
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 594
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 596
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->reset()V

    goto :goto_0

    .line 574
    :cond_4
    const-string v2, "MotionPanoramaApp"

    const-string v3, "output file error"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 591
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    goto :goto_2
.end method

.method public onMotionPanoramaCaptured()V
    .locals 2

    .prologue
    .line 602
    const-string v0, "MotionPanoramaApp"

    const-string v1, "onMotionPanoramaCaptured"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCaptureStarted:Z

    if-nez v0, :cond_0

    .line 609
    :goto_0
    return-void

    .line 607
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setCaptureProgressIncreased()V

    .line 608
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->restartCancelTimer()V

    goto :goto_0
.end method

.method public onMotionPanoramaCapturedMaxFrames()V
    .locals 2

    .prologue
    .line 613
    const-string v0, "MotionPanoramaApp"

    const-string v1, "onMotionPanoramaCapturedMaxFrames"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCapturing:Z

    if-eqz v0, :cond_0

    .line 616
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    if-eqz v0, :cond_1

    .line 617
    const-string v0, "MotionPanoramaApp"

    const-string v1, "already Stopping..."

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaCapturing()V

    goto :goto_0
.end method

.method public onMotionPanoramaDirectionChanged(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 626
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMotionPanoramaDirectionChanged - direction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getCaptureProgressIncreased()I

    move-result v0

    if-nez v0, :cond_0

    .line 632
    :goto_0
    return-void

    .line 631
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->panoramaDirectionChanged(I)V

    goto :goto_0
.end method

.method public onMotionPanoramaError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 636
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMotionPanoramaError - error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 639
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    if-eqz v0, :cond_1

    .line 640
    const-string v0, "MotionPanoramaApp"

    const-string v1, "already Stopping..."

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :goto_0
    return-void

    .line 643
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaCapturing()V

    .line 648
    :goto_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->showPanoramaToastPopup(I)V

    goto :goto_0

    .line 645
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->cancelPanoramaCapture()V

    .line 646
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->reset()V

    goto :goto_1
.end method

.method public onMotionPanoramaLivePreviewData([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 658
    const-string v0, "MotionPanoramaApp"

    const-string v1, "onMotionPanoramaLivePreviewData"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsDrawLivePreview:Z

    if-eqz v0, :cond_0

    .line 662
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->onLivePreviewData([B)V

    .line 664
    :cond_0
    return-void
.end method

.method public onMotionPanoramaMoveSlowly()V
    .locals 2

    .prologue
    .line 668
    const-string v0, "MotionPanoramaApp"

    const-string v1, "onMotionPanoramaMoveSlowly"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->panoramaMoveSlowly()V

    .line 671
    return-void
.end method

.method public onMotionPanoramaProgressStitching(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 675
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMotionPanoramaProgressStitching - progress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    const-string v0, "MotionPanoramaApp"

    const-string v1, "onMotionPanoramaProgressStitching - CE_STATE_SHUTDOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->clear()V

    .line 696
    :goto_0
    return-void

    .line 683
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setPostCaptureProgress(I)V

    .line 685
    if-nez p1, :cond_1

    .line 686
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopCancelTimer()V

    .line 687
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaSound()V

    .line 688
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->clearPanoramaRect()V

    .line 689
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 690
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 692
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    goto :goto_0

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0
.end method

.method public onMotionPanoramaRectChanged(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getCaptureProgressIncreased()I

    move-result v0

    if-nez v0, :cond_0

    .line 706
    :goto_0
    return-void

    .line 705
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->panoramaRectChanged(II)V

    goto :goto_0
.end method

.method public onMotionPanoramaThumbnailData([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 715
    const-string v0, "MotionPanoramaApp"

    const-string v1, "onMotionPanoramaThumbnailData"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/Util;->decodeRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 718
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setLowResolutionBitmap(Landroid/graphics/Bitmap;)V

    .line 720
    return-void
.end method

.method public onMotionPanoramaUIImageData([B)V
    .locals 2
    .param p1, "arg0"    # [B

    .prologue
    .line 724
    const-string v0, "MotionPanoramaApp"

    const-string v1, "onMotionPanoramaUIImageData"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 728
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->onLivePreviewData([B)V

    .line 730
    :cond_0
    return-void
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
    .line 734
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v0, "Z143"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPanoramaMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 17
    .param p1, "orientation"    # I

    .prologue
    .line 739
    const-string v2, "MotionPanoramaApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOrientationChanged - mEnterOrientation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEnterOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrentOrientation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", orientation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPreviewRectRotationSupported:Z

    if-nez v2, :cond_0

    .line 742
    const/16 p1, 0x0

    .line 746
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCaptureStarted:Z

    if-eqz v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->isDirectionDetected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 747
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_1

    .line 748
    const-string v2, "MotionPanoramaApp"

    const-string v3, "onOrientationChanged Stop case - orientation changed"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 751
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    .line 753
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->updateLivePreviewLayout(Z)V

    .line 754
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hidePreviewGroup()V

    .line 756
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->cancelPanoramaCapture()V

    .line 757
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->reset()V

    .line 759
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->showPanoramaToastPopup(I)V

    .line 763
    :cond_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    .line 765
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEnterOrientation:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_5

    .line 766
    const/4 v9, 0x0

    .line 767
    .local v9, "bStop":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEnterOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 786
    :cond_2
    :goto_0
    if-eqz v9, :cond_5

    .line 787
    const-string v2, "MotionPanoramaApp"

    const-string v3, "onOrientationChanged Stop case - orientation changed during a capturing"

    invoke-static {v2, v3}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    if-eqz v2, :cond_4

    .line 789
    const-string v2, "MotionPanoramaApp"

    const-string v3, "already Stopping..."

    invoke-static {v2, v3}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    .end local v9    # "bStop":Z
    :cond_3
    :goto_1
    return-void

    .line 769
    .restart local v9    # "bStop":Z
    :pswitch_0
    const/4 v2, 0x2

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    .line 770
    const/4 v9, 0x1

    goto :goto_0

    .line 773
    :pswitch_1
    const/4 v2, 0x3

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    .line 774
    const/4 v9, 0x1

    goto :goto_0

    .line 777
    :pswitch_2
    if-eqz p1, :cond_2

    .line 778
    const/4 v9, 0x1

    goto :goto_0

    .line 781
    :pswitch_3
    const/4 v2, 0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    .line 782
    const/4 v9, 0x1

    goto :goto_0

    .line 792
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 793
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideWarningArrow()V

    .line 794
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideWarningBox()V

    .line 795
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaSound()V

    .line 797
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideLivePreview()V

    .line 798
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->updateLivePreviewLayout(Z)V

    .line 800
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaCapturing()V

    .line 804
    .end local v9    # "bStop":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v2, :cond_6

    .line 805
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePriviewBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 806
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->updateLivePreviewLayout(Z)V

    .line 810
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 811
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->updateArrow()V

    .line 816
    :cond_7
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 819
    :pswitch_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleX:F

    .line 820
    .local v14, "rectX":F
    const/4 v15, 0x0

    .line 821
    .local v15, "rectY":F
    sget v10, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_LANDSCAPE_X:F

    .line 822
    .local v10, "groupX":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeY:F

    .line 824
    .local v11, "groupY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLRectangle;->resetTranslate()V

    .line 826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v3, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v10, v11}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    sget v3, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2, v14, v15}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    .line 833
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    const/4 v2, 0x4

    if-ge v12, v2, :cond_a

    .line 834
    const/4 v2, 0x2

    if-ge v12, v2, :cond_9

    .line 835
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    .line 836
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v12

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 833
    :cond_8
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 839
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v12

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 842
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v2, :cond_3

    .line 843
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePriviewBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 845
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLBitmapTexture;->clear()V

    .line 847
    const/high16 v2, 0x40000000    # 2.0f

    sget v3, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v13, v2, v3

    .line 848
    .local v13, "padding":F
    new-instance v2, Lcom/samsung/android/glview/GLBitmapTexture;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v4, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleWidth:F

    sub-float/2addr v6, v13

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleHeight:F

    sub-float/2addr v7, v13

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePriviewBmp:Landroid/graphics/Bitmap;

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 849
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 850
    monitor-exit v16

    goto/16 :goto_1

    .end local v13    # "padding":F
    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 856
    .end local v10    # "groupX":F
    .end local v11    # "groupY":F
    .end local v12    # "i":I
    .end local v14    # "rectX":F
    .end local v15    # "rectY":F
    :pswitch_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleX:F

    .line 857
    .restart local v14    # "rectX":F
    const/4 v15, 0x0

    .line 858
    .restart local v15    # "rectY":F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitX:F

    .line 859
    .restart local v10    # "groupX":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitY:F

    .line 861
    .restart local v11    # "groupY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLRectangle;->resetTranslate()V

    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v3, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_PORTRAIT_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v10, v11}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    sget v3, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_PORTRAIT_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 869
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2, v14, v15}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    .line 870
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    const/4 v2, 0x4

    if-ge v12, v2, :cond_d

    .line 871
    const/4 v2, 0x2

    if-ge v12, v2, :cond_c

    .line 872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v12

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 870
    :cond_b
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 874
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v12

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_5

    .line 879
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v2, :cond_3

    .line 880
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePriviewBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 882
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLBitmapTexture;->clear()V

    .line 884
    const/high16 v2, 0x40000000    # 2.0f

    sget v3, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v13, v2, v3

    .line 886
    .restart local v13    # "padding":F
    new-instance v2, Lcom/samsung/android/glview/GLBitmapTexture;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v4, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleHeight:F

    sub-float/2addr v6, v13

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleWidth:F

    sub-float/2addr v7, v13

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePriviewBmp:Landroid/graphics/Bitmap;

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 888
    monitor-exit v16

    goto/16 :goto_1

    .end local v13    # "padding":F
    :catchall_1
    move-exception v2

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 767
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 816
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 900
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 905
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 910
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPostProgress:I

    if-lez v1, :cond_0

    .line 911
    const-string v1, "MotionPanoramaApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown - it is stitching ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPostProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :goto_0
    return v0

    .line 914
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getCaptureProgressIncreased()I

    move-result v1

    const/16 v2, 0x320

    if-ne v1, v2, :cond_1

    .line 915
    const-string v1, "MotionPanoramaApp"

    const-string v2, "onKeyDown - PANORAMAX_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 918
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 3
    .param p1, "captureMethod"    # I

    .prologue
    const/4 v2, 0x1

    .line 926
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->isReadyToCapture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    const-string v0, "MotionPanoramaApp"

    const-string v1, "Drop Panorama capture start, because it\'s not ready."

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :goto_0
    return v2

    .line 930
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 931
    const-string v0, "MotionPanoramaApp"

    const-string v1, "return is capturing."

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 934
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    if-eqz v0, :cond_2

    .line 935
    const-string v0, "MotionPanoramaApp"

    const-string v1, "return is stopping"

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 938
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getCaptureProgressIncreased()I

    move-result v0

    const/16 v1, 0x320

    if-ne v0, v1, :cond_3

    .line 939
    const-string v0, "MotionPanoramaApp"

    const-string v1, "Return PANORAMAX_MAX_IMAGE_COUNT"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 943
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x1c1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 945
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 947
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestTransientAudioFocus()V

    .line 949
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->lockAEAWB()V

    .line 950
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isContinuousAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isHalfShutter()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 951
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleAutoFocus()V

    .line 953
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setOutputFile()V

    .line 955
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsSoundRecordingEnabled:Z

    if-eqz v0, :cond_5

    .line 956
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->startSoundRecording()V

    .line 958
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartMotionPanorama()V

    .line 959
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCaptureStarted:Z

    .line 962
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x40

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 964
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastOrientation()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/glview/GLUtil;->getGLOrientationBySystemOrientation(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setEnterOrientation(I)V

    goto/16 :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 971
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 975
    return-void
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 979
    const/4 v0, 0x0

    return v0
.end method
