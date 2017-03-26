.class public Lcom/sec/android/app/camera/shootingmode/BurstPanorama;
.super Ljava/lang/Object;
.source "BurstPanorama.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/sec/android/seccamera/SecCamera$PanoramaEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;


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

.field private static final PANORAMAX_MAX_IMAGE_COUNT:I = 0x320

.field private static final PANORAMA_ERROR_NO_DIRECTION:I = 0x1

.field private static final PANORAMA_ERROR_STITCHING:I = 0x0

.field private static final PANORAMA_ERROR_TRACING:I = 0x2

.field private static final PANORAMA_OVERLAP_PERCENTAGE:D = 0.2

.field private static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final STOP_BUTTON_DIAMETER:I

.field private static final STOP_BUTTON_POS_X:I

.field private static final STOP_BUTTON_POS_Y:I

.field private static final TAG:Ljava/lang/String; = "BurstPanorama"

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

.field private mIsPanoramaCaptureStarted:Z

.field private mIsPanoramaCapturing:Z

.field private mIsPanoramaWarning:Z

.field private mIsPreviewRectRotationSupported:Z

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

    .line 71
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_WIDTH:I

    .line 72
    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    .line 74
    const v0, 0x7f09002c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_LANDSCAPE_WIDTH:F

    .line 75
    sget v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_LANDSCAPE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_LANDSCAPE_X:F

    .line 77
    const v0, 0x7f09002e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    .line 78
    const v0, 0x7f09002f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    .line 79
    const v0, 0x7f09002d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_PORTRAIT_WIDTH:F

    .line 80
    const v0, 0x7f090030

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 81
    sget v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    .line 84
    const v0, 0x7f09002b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_WIDTH:F

    .line 85
    const v0, 0x7f090029

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_HEIGHT:F

    .line 86
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_POS_X:F

    .line 87
    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_POS_Y:F

    .line 88
    const v0, 0x7f0902ea

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_SIZE:F

    .line 89
    const v0, 0x7f09002a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_TEXT_MARGIN:F

    .line 91
    const v0, 0x7f090032

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 94
    const v0, 0x7f090035

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_SWING_DISTANCE:F

    .line 95
    const v0, 0x7f090034

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_OFFSET:F

    .line 97
    const v0, 0x7f090028

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_WIDTH:F

    .line 98
    const v0, 0x7f090027

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_HEIGHT:F

    .line 101
    const v0, 0x7f09020a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->STOP_BUTTON_POS_X:I

    .line 102
    const v0, 0x7f09020b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->STOP_BUTTON_POS_Y:I

    .line 103
    const v0, 0x7f090208

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->STOP_BUTTON_DIAMETER:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 5
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    .line 134
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviousCaptureCount:I

    .line 135
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    .line 136
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    .line 137
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    .line 138
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxHeight:I

    .line 139
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 141
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeHeight:F

    .line 142
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeY:F

    .line 144
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeHeight:F

    .line 145
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeY:F

    .line 147
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleWidth:F

    .line 148
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleHeight:F

    .line 149
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleX:F

    .line 151
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleWidth:F

    .line 152
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleHeight:F

    .line 153
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleX:F

    .line 154
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleY:F

    .line 156
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitX:F

    .line 157
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitY:F

    .line 158
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitHeight:F

    .line 160
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleWidth:F

    .line 161
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleHeight:F

    .line 162
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleX:F

    .line 164
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitWidth:F

    .line 165
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitX:F

    .line 167
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleWidth:F

    .line 168
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleHeight:F

    .line 169
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleX:F

    .line 170
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleY:F

    .line 172
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeRectWidth:F

    .line 173
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitRectWidth:F

    .line 175
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    .line 176
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    .line 178
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mHorizontalMaxCount:F

    .line 180
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPrievewRatio:F

    .line 182
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    .line 183
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEnterOrientation:I

    .line 185
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCaptureStarted:Z

    .line 186
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCapturing:Z

    .line 187
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    .line 188
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPreviewRectRotationSupported:Z

    .line 189
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsDrawLivePreview:Z

    .line 191
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPostProgress:I

    .line 193
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 194
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 195
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 196
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 198
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 199
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 200
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 202
    new-array v0, v3, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    .line 203
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    .line 204
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    .line 205
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    .line 207
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    .line 208
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsGuideTextDisplaying:Z

    .line 210
    new-array v0, v3, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    .line 211
    new-array v0, v3, [Lcom/samsung/android/glview/GLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    .line 212
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    .line 213
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/glview/GLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    .line 215
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 217
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 218
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 219
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    .line 220
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 221
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 222
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 223
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    .line 225
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePriviewBmp:Landroid/graphics/Bitmap;

    .line 227
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    .line 228
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$1;-><init>(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    .line 278
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 289
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 290
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 291
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->cancelPanoramaCapture()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->reset()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaCapturing()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideGuideText()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->showPreviewGroup()V

    return-void
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsDrawLivePreview:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCapturing:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    .prologue
    .line 68
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)Lcom/samsung/android/glview/GLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method

.method private cancelPanoramaCapture()V
    .locals 2

    .prologue
    .line 817
    const-string v0, "BurstPanorama"

    const-string v1, "cancelPanoramaCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->waitForPanoramaStartThreadComplete()V

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCurrentStateId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 821
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopPreview()V

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelTakePicture()V

    .line 825
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->clearPanoramaRect()V

    .line 827
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->unlockAEAWB()V

    .line 828
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 829
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 833
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 835
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartPreview()V

    .line 837
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCaptureStarted:Z

    .line 838
    return-void

    .line 831
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    goto :goto_0
.end method

.method private clearPanoramaRect()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 841
    const-string v1, "BurstPanorama"

    const-string v2, "clearPanoramaRect"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_0

    .line 844
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 845
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->resetTranslate()V

    .line 848
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_1

    .line 849
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 852
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideWarningArrow()V

    .line 853
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideWarningBox()V

    .line 855
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 856
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 857
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 855
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 861
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 862
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 863
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

    .line 867
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v2, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeY:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeHeight:F

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 868
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v6, 0x7f02012a

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 870
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 871
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 874
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v4, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeHeight:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 875
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v2, 0x7f02012a

    invoke-direct {v0, v1, v11, v11, v2}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 876
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleHeight:F

    const v2, 0x7f0c0011

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    .line 878
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 879
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 880
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 881
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPreviewRectRotationSupported:Z

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 885
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLViewGroup;->setCenterPivot(Z)V

    .line 886
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 887
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 889
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v4, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_HEIGHT:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v9

    .line 890
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v4, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_HEIGHT:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v12

    .line 891
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v4, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_WIDTH:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v14

    .line 892
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v7, 0x3

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v4, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_WIDTH:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v7

    .line 894
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v9

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 895
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v12

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v14

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 897
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 899
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f020128

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v9

    .line 900
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f020127

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v12

    .line 901
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f020129

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v14

    .line 902
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v4, 0x7f020126

    invoke-direct {v2, v3, v11, v11, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 904
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v9

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 905
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v12

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 906
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v14

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v14

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 907
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 909
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v4, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_HEIGHT:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v9

    .line 910
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v4, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_WIDTH:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v12

    .line 912
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v9

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 913
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v12

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 915
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f020128

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v9

    .line 916
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f020129

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v12

    .line 918
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v9

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 919
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v12

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 921
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 922
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 923
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 925
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f02012f

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v9

    .line 926
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f02012c

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v12

    .line 927
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f02012d

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v14

    .line 928
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v4, 0x7f02012e

    invoke-direct {v2, v3, v11, v11, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 930
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleHeight:F

    const v2, 0x7f0c0011

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    .line 932
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 934
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleHeight:F

    const v2, 0x7f0c0029

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    .line 936
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 937
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleHeight:F

    const v2, 0x7f0c0029

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    .line 939
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 941
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v2, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->STOP_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->STOP_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020109

    const v5, 0x7f02010a

    move v6, v9

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    .line 942
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 943
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080142

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 945
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 946
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$2;-><init>(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 960
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    .line 961
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->STOP_BUTTON_DIAMETER:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 962
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 964
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->onOrientationChanged(I)V

    .line 966
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 967
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 968
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 969
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 970
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 971
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 973
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v2, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_HEIGHT:F

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f08018c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_SIZE:F

    const v8, 0x7f0c001c

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v8

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    .line 975
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLText;->setClipping(Z)V

    .line 976
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 977
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    const v1, 0x7f0a0023

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x7f0c0010

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v12, v1, v2}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 978
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 979
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 980
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 982
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v13, :cond_1

    .line 983
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v10

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 984
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v10

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 985
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v10

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 986
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v10

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 982
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 884
    .end local v10    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    goto/16 :goto_0

    .line 993
    .restart local v10    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v14, v14}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 994
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v9, v11, v11}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 995
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v12, v11, v11}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 996
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v14, v11, v11}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 997
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v11, v11}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 998
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

    .line 1001
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1002
    .local v1, "animation":Landroid/view/animation/AnimationSet;
    const/4 v0, 0x0

    .line 1004
    .local v0, "anim":Landroid/view/animation/Animation;
    packed-switch p2, :pswitch_data_0

    .line 1030
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 1031
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1032
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 1033
    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 1034
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1035
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1038
    :cond_0
    return-object v1

    .line 1007
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v2, -0x40800000    # -1.0f

    sget v3, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1008
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_0

    .line 1013
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    sget v2, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_SWING_DISTANCE:F

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1014
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_0

    .line 1019
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v2, -0x40800000    # -1.0f

    sget v3, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1020
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto/16 :goto_0

    .line 1025
    :pswitch_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    sget v2, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_SWING_DISTANCE:F

    invoke-direct {v0, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1026
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto/16 :goto_0

    .line 1004
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
    .line 1042
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I
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
    .line 1046
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getViewAngle()[F

    move-result-object v3

    .line 1047
    .local v3, "viewAngle":[F
    const/4 v4, 0x0

    aget v1, v3, v4

    .line 1048
    .local v1, "mVerticalAngle":F
    const/4 v4, 0x1

    aget v0, v3, v4

    .line 1050
    .local v0, "mHorizontalAngle":F
    const/4 v4, 0x2

    new-array v2, v4, [F

    .line 1051
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

    .line 1052
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

    .line 1053
    const-string v4, "BurstPanorama"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vertcal count"

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

    .line 1055
    return-object v2
.end method

.method private declared-synchronized getPartialPanoramaImage([B)Landroid/graphics/Bitmap;
    .locals 20
    .param p1, "data"    # [B

    .prologue
    .line 1059
    monitor-enter p0

    const/4 v9, 0x0

    .line 1062
    .local v9, "bmp":Landroid/graphics/Bitmap;
    const v17, 0x1869f

    .line 1063
    .local v17, "width":I
    const v12, 0x1869f

    .line 1064
    .local v12, "height":I
    const/4 v10, 0x0

    .line 1066
    .local v10, "datarotation":I
    const/4 v3, 0x0

    .line 1067
    .local v3, "bmpOffset":I
    const/4 v4, 0x0

    .line 1069
    .local v4, "bmpStride":I
    if-eqz p1, :cond_0

    :try_start_0
    move-object/from16 v0, p1

    array-length v2, v0

    const/16 v5, 0x10

    if-ge v2, v5, :cond_1

    .line 1070
    :cond_0
    const-string v2, "BurstPanorama"

    const-string v5, "getPartialPanoramaImage: Received null or invalid data"

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1071
    const/4 v2, 0x0

    .line 1200
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1075
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

    .line 1076
    :cond_2
    const-string v2, "BurstPanorama"

    const-string v5, "getPartialPanoramaImage: Data is invalid (RGBA tag not found)"

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1077
    const/4 v2, 0x0

    goto :goto_0

    .line 1081
    :cond_3
    const/4 v2, 0x4

    :try_start_2
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v17

    .line 1082
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v12

    .line 1083
    const/16 v2, 0xc

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    .line 1089
    :try_start_3
    move-object/from16 v0, p1

    array-length v2, v0

    mul-int v5, v17, v12

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x10

    if-ge v2, v5, :cond_4

    .line 1090
    const-string v2, "BurstPanorama"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPartialPanoramaImage: The buffer is too small to contain a image of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const/4 v2, 0x0

    goto :goto_0

    .line 1084
    :catch_0
    move-exception v11

    .line 1085
    .local v11, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "BurstPanorama"

    const-string v5, "getPartialPanoramaImage: Could not parse panorama bitmap header"

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const/4 v2, 0x0

    goto :goto_0

    .line 1094
    .end local v11    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    if-nez v2, :cond_5

    .line 1095
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    packed-switch v2, :pswitch_data_0

    .line 1111
    :pswitch_0
    const-string v2, "BurstPanorama"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPartialPanoramaImage - PANORAMA Invalid direction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1098
    :pswitch_1
    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    .line 1099
    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxHeight:I

    .line 1100
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxHeight:I

    mul-int/2addr v2, v5

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 1101
    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1122
    :cond_5
    :goto_1
    :try_start_4
    move-object/from16 v0, p1

    array-length v2, v0

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, -0x4

    new-array v14, v2, [I

    .line 1123
    .local v14, "intData":[I
    const/16 v8, 0xff

    .line 1124
    .local v8, "MASK":I
    const/16 v16, 0x0

    .line 1125
    .local v16, "result":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move-object/from16 v0, p1

    array-length v2, v0

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, -0x4

    if-ge v13, v2, :cond_6

    .line 1126
    add-int/lit8 v2, v13, 0x4

    mul-int/lit8 v2, v2, 0x4

    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    shl-int/lit8 v16, v2, 0x10

    .line 1127
    add-int/lit8 v2, v13, 0x4

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    shl-int/lit8 v2, v2, 0x8

    add-int v16, v16, v2

    .line 1128
    add-int/lit8 v2, v13, 0x4

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    add-int v16, v16, v2

    .line 1129
    add-int/lit8 v2, v13, 0x4

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    shl-int/lit8 v2, v2, 0x18

    add-int v16, v16, v2

    .line 1130
    aput v16, v14, v13
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1125
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1105
    .end local v8    # "MASK":I
    .end local v13    # "i":I
    .end local v14    # "intData":[I
    .end local v16    # "result":I
    :pswitch_2
    :try_start_5
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    .line 1106
    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxHeight:I

    .line 1107
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxHeight:I

    mul-int/2addr v2, v5

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 1108
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1059
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1133
    .restart local v8    # "MASK":I
    .restart local v13    # "i":I
    .restart local v14    # "intData":[I
    .restart local v16    # "result":I
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    packed-switch v2, :pswitch_data_1

    .line 1185
    :pswitch_3
    const-string v2, "BurstPanorama"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPartialPanoramaImage - PANORAMA Invalid direction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1194
    :goto_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v2 .. v7}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v9

    move-object v2, v9

    .line 1200
    goto/16 :goto_0

    .line 1135
    :pswitch_4
    :try_start_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    if-eq v2, v12, :cond_7

    .line 1136
    const-string v2, "BurstPanorama"

    const-string v5, "getPartialPanoramaImage: Height is different!!"

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 1188
    .end local v8    # "MASK":I
    .end local v13    # "i":I
    .end local v14    # "intData":[I
    .end local v16    # "result":I
    :catch_1
    move-exception v11

    .line 1189
    .restart local v11    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_9
    const-string v2, "BurstPanorama"

    const-string v5, "getPartialPanoramaImage: Index Control Failed!!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1190
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1138
    .end local v11    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v8    # "MASK":I
    .restart local v13    # "i":I
    .restart local v14    # "intData":[I
    .restart local v16    # "result":I
    :cond_7
    const/16 v18, 0x0

    .local v18, "y":I
    :goto_4
    :try_start_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_8

    .line 1139
    mul-int v2, v18, v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    mul-int v6, v6, v18

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    add-int/2addr v6, v7

    move/from16 v0, v17

    invoke-static {v14, v2, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1138
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 1141
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    .line 1143
    const/4 v3, 0x0

    .line 1144
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    .line 1146
    goto :goto_3

    .line 1148
    .end local v18    # "y":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    if-eq v2, v12, :cond_9

    .line 1149
    const-string v2, "BurstPanorama"

    const-string v5, "getPartialPanoramaImage: Height is different!!"

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1151
    :cond_9
    const/16 v18, 0x0

    .restart local v18    # "y":I
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_a

    .line 1152
    mul-int v2, v18, v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    sub-int/2addr v6, v7

    sub-int v6, v6, v17

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    mul-int v7, v7, v18

    add-int/2addr v6, v7

    move/from16 v0, v17

    invoke-static {v14, v2, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1151
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 1155
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    .line 1157
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    sub-int v3, v2, v5

    .line 1158
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    .line 1160
    goto/16 :goto_3

    .line 1162
    .end local v18    # "y":I
    :pswitch_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    move/from16 v0, v17

    if-eq v2, v0, :cond_b

    .line 1163
    const-string v2, "BurstPanorama"

    const-string v5, "getPartialPanoramaImage: Width is different!!"

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1165
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    move/from16 v19, v0

    sub-int v7, v7, v19

    sub-int/2addr v7, v12

    mul-int/2addr v6, v7

    array-length v7, v14

    invoke-static {v14, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1167
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    add-int/2addr v2, v12

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    .line 1169
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxHeight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    sub-int/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    mul-int v3, v2, v5

    .line 1170
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    .line 1172
    goto/16 :goto_3

    .line 1174
    :pswitch_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    move/from16 v0, v17

    if-eq v2, v0, :cond_c

    .line 1175
    const-string v2, "BurstPanorama"

    const-string v5, "getPartialPanoramaImage: Width is different!!"

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1177
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    mul-int/2addr v6, v7

    array-length v7, v14

    invoke-static {v14, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1178
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    add-int/2addr v2, v12

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    .line 1180
    const/4 v3, 0x0

    .line 1181
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1183
    goto/16 :goto_3

    .line 1195
    :catch_2
    move-exception v15

    .line 1196
    .local v15, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_b
    const-string v2, "BurstPanorama"

    const-string v5, "getPartialPanoramaImage: Out of memory [1]"

    invoke-static {v2, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1197
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1095
    nop

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

    .line 1133
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

    .line 1204
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1205
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1206
    return-void
.end method

.method private hideGuideText()V
    .locals 2

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsGuideTextDisplaying:Z

    .line 1212
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1216
    :cond_0
    return-void
.end method

.method private hideLivePreview()V
    .locals 2

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1220
    return-void
.end method

.method private hidePreviewGroup()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1231
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_0

    .line 1232
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1235
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1236
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1238
    :cond_1
    return-void
.end method

.method private hideStopButton()V
    .locals 2

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1242
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1243
    return-void
.end method

.method private hideWarningArrow()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1246
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1247
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 1248
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1250
    :cond_0
    return-void
.end method

.method private hideWarningBox()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1253
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1254
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1255
    return-void
.end method

.method private initCoordinate([F)V
    .locals 11
    .param p1, "maxRate"    # [F

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 1258
    move-object v0, p1

    .line 1259
    .local v0, "panoramaMaxRate":[F
    const/4 v3, 0x1

    aget v3, v0, v3

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mHorizontalMaxCount:F

    .line 1261
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_RESOLUTION:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v2

    .line 1262
    .local v2, "previewWidth":I
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_RESOLUTION:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v1

    .line 1263
    .local v1, "previewHeight":I
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPrievewRatio:F

    .line 1265
    sget v3, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    float-to-double v4, v3

    const-wide v6, 0x3fe999999999999aL    # 0.8

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mHorizontalMaxCount:F

    float-to-double v8, v3

    mul-double/2addr v6, v8

    const-wide v8, 0x3fc999999999999aL    # 0.2

    add-double/2addr v6, v8

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPrievewRatio:F

    float-to-double v8, v3

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeHeight:F

    .line 1266
    sget v3, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeHeight:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v10

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeY:F

    .line 1268
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeHeight:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeHeight:F

    .line 1269
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeY:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeY:F

    .line 1271
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeHeight:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPrievewRatio:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleWidth:F

    .line 1272
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeHeight:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleHeight:F

    .line 1274
    sget v3, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v10

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleX:F

    .line 1275
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeY:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleY:F

    .line 1277
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleWidth:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleWidth:F

    .line 1278
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeHeight:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleHeight:F

    .line 1279
    sget v3, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_LANDSCAPE_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v10

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleX:F

    .line 1282
    const v3, 0x7f090031

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitWidth:F

    .line 1283
    sget v3, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v10

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitX:F

    .line 1285
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitWidth:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitHeight:F

    .line 1286
    sget v3, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_PORTRAIT_WIDTH:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v10

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitX:F

    .line 1287
    sget v3, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitHeight:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v10

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitY:F

    .line 1289
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitWidth:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleWidth:F

    .line 1290
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleWidth:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPrievewRatio:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleHeight:F

    .line 1291
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitX:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleX:F

    .line 1292
    sget v3, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleHeight:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v10

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleY:F

    .line 1294
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleHeight:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleWidth:F

    .line 1295
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleWidth:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleHeight:F

    .line 1296
    sget v3, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_PORTRAIT_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v10

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleX:F

    .line 1298
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitWidth:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v4, v10

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitRectWidth:F

    .line 1299
    sget v3, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v4, v10

    sub-float/2addr v3, v4

    mul-float/2addr v3, v10

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeRectWidth:F

    .line 1300
    return-void
.end method

.method private isDirectionDetected()Z
    .locals 1

    .prologue
    .line 1303
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    if-nez v0, :cond_0

    .line 1304
    const/4 v0, 0x0

    .line 1306
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized isReadyToCapture()Z
    .locals 1

    .prologue
    .line 1310
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;
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
    .line 1319
    monitor-enter p0

    :try_start_0
    const-string v0, "BurstPanorama"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onLivePreviewData , mCapturecount:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", mPreviousCaptureCount:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviousCaptureCount:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    const/4 v6, 0x0

    .line 1322
    .local v6, "bmp":Landroid/graphics/Bitmap;
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 1323
    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/Integer;

    .line 1324
    .local v10, "rotation":[Ljava/lang/Integer;
    invoke-static {p1, v10}, Lcom/sec/android/app/camera/util/Util;->decodeRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1325
    if-nez v6, :cond_1

    .line 1326
    const-string v0, "BurstPanorama"

    const-string v1, "Unable to decode RGBA data for live preview."

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1497
    .end local v10    # "rotation":[Ljava/lang/Integer;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1330
    .restart local v10    # "rotation":[Ljava/lang/Integer;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->setPreviewThumbnailSize(II)V

    .line 1332
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    .line 1333
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    .line 1335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 1353
    .end local v10    # "rotation":[Ljava/lang/Integer;
    :goto_1
    if-nez v6, :cond_5

    .line 1354
    const-string v0, "BurstPanorama"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to RGBA Data Creation Failed. mCaptureCount:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1319
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1337
    .restart local v6    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviousCaptureCount:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    if-eq v0, v1, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1343
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviousCaptureCount:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    .line 1344
    :cond_3
    const-string v0, "BurstPanorama"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onLivePreviewData : live preview rect is not visible. ignore case. mCaptureCount - "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", mPreviousCaptureCount - "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviousCaptureCount:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1350
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getPartialPanoramaImage([B)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1

    .line 1357
    :cond_5
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->setPreviewThumbnailSize(II)V

    .line 1358
    iput-object v6, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePriviewBmp:Landroid/graphics/Bitmap;

    .line 1359
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviousCaptureCount:I

    .line 1361
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    .line 1362
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->updateLivePreviewLayout(Z)V

    .line 1367
    :cond_6
    const/4 v8, 0x0

    .line 1368
    .local v8, "arrowleft":F
    const/4 v9, 0x0

    .line 1369
    .local v9, "arrowtop":F
    sget v2, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 1370
    .local v2, "left":F
    sget v3, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 1371
    .local v3, "top":F
    const/4 v11, 0x0

    .line 1373
    .local v11, "stopPanorama":Z
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_d

    .line 1374
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 1375
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float v4, v0, v1

    .line 1376
    .local v4, "width":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float v5, v0, v1

    .line 1442
    .local v5, "height":F
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_15

    .line 1443
    iget-object v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    monitor-enter v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1444
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_8

    .line 1445
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1446
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLBitmapTexture;->clear()V

    .line 1449
    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v4, v0

    if-ltz v0, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v5, v0

    if-gez v0, :cond_14

    .line 1450
    :cond_9
    const-string v0, "BurstPanorama"

    const-string v1, "It\'s too short image for thumbnail preview"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    monitor-exit v12

    goto/16 :goto_0

    .line 1456
    :catchall_1
    move-exception v0

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 1377
    .end local v4    # "width":F
    .end local v5    # "height":F
    :cond_a
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 1378
    :cond_b
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float v5, v0, v1

    .line 1379
    .restart local v5    # "height":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float v4, v0, v1

    .restart local v4    # "width":F
    goto :goto_2

    .line 1381
    .end local v4    # "width":F
    .end local v5    # "height":F
    :cond_c
    const-string v0, "BurstPanorama"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onLivePreviewData : invalid orientation "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1385
    :cond_d
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_e

    .line 1386
    sget v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float v4, v0, v1

    .line 1387
    .restart local v4    # "width":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float v5, v0, v1

    .line 1388
    .restart local v5    # "height":F
    const/4 v11, 0x1

    .line 1403
    :goto_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    packed-switch v0, :pswitch_data_0

    .line 1437
    :pswitch_0
    const-string v0, "BurstPanorama"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PANORAMA Invalid direction: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1389
    .end local v4    # "width":F
    .end local v5    # "height":F
    :cond_e
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_f

    .line 1390
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float v4, v0, v1

    .line 1391
    .restart local v4    # "width":F
    sget v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float v5, v0, v1

    .line 1392
    .restart local v5    # "height":F
    const/4 v11, 0x1

    goto :goto_3

    .line 1394
    .end local v4    # "width":F
    .end local v5    # "height":F
    :cond_f
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v4, v0, v1

    .line 1396
    .restart local v4    # "width":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_10

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 1397
    :cond_10
    sget v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v4, v0

    .line 1400
    :cond_11
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float v5, v0, v1

    .restart local v5    # "height":F
    goto :goto_3

    .line 1405
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    const v1, 0x7f090033

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    add-float v8, v0, v1

    .line 1406
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeHeight:F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v12, 0x0

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v9, v0, v1

    .line 1407
    goto/16 :goto_2

    .line 1410
    :pswitch_2
    sget v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v0, v1

    sub-float v2, v0, v4

    .line 1411
    sget v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v12, 0x0

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x7f090033

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float v8, v0, v1

    .line 1413
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeHeight:F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v12, 0x0

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v9, v0, v1

    .line 1414
    goto/16 :goto_2

    .line 1417
    :pswitch_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_12

    .line 1418
    sget v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    int-to-float v1, v1

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v1, v12

    mul-float/2addr v0, v1

    const/high16 v1, 0x44480000    # 800.0f

    div-float v5, v0, v1

    .line 1419
    sget v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v5

    sget v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v3, v0, v1

    .line 1421
    :cond_12
    const v0, 0x7f090033

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    add-float v9, v5, v0

    .line 1422
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitRectWidth:F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v12, 0x1

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float v8, v0, v1

    .line 1423
    goto/16 :goto_2

    .line 1426
    :pswitch_4
    sget v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v0, v1

    sub-float v3, v0, v5

    .line 1428
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_13

    .line 1429
    sget v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    int-to-float v1, v1

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v1, v12

    mul-float/2addr v0, v1

    const/high16 v1, 0x44480000    # 800.0f

    div-float v5, v0, v1

    .line 1430
    sget v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v5

    sget v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v3, v0, v1

    .line 1432
    :cond_13
    sget v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    sget v12, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_WIDTH:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, v5

    const v1, 0x7f090033

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float v9, v0, v1

    .line 1433
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitRectWidth:F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v12, 0x1

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-float v8, v0, v1

    .line 1434
    goto/16 :goto_2

    .line 1454
    :cond_14
    :try_start_5
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 1455
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1456
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1459
    :cond_15
    :try_start_6
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/16 v1, 0x31f

    if-ge v0, v1, :cond_1a

    .line 1460
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_17

    .line 1462
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 1467
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 1468
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    aget-object v7, v0, v1

    .line 1473
    .local v7, "activeGroup":Lcom/samsung/android/glview/GLViewGroup;
    :goto_4
    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 1474
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1476
    if-eqz v11, :cond_17

    .line 1477
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaCapturing()V

    .line 1492
    .end local v7    # "activeGroup":Lcom/samsung/android/glview/GLViewGroup;
    :cond_17
    :goto_5
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 1493
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->bringToFront()V

    goto/16 :goto_0

    .line 1470
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    aget-object v7, v0, v1

    .restart local v7    # "activeGroup":Lcom/samsung/android/glview/GLViewGroup;
    goto :goto_4

    .line 1481
    .end local v7    # "activeGroup":Lcom/samsung/android/glview/GLViewGroup;
    :cond_1a
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 1482
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1487
    :goto_6
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/16 v1, 0x31f

    if-ne v0, v1, :cond_17

    .line 1488
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaCapturing()V

    goto :goto_5

    .line 1484
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_6

    .line 1495
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->bringToFront()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1403
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
    .locals 10
    .param p1, "orientation"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1501
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->isDirectionDetected()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1502
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    packed-switch v3, :pswitch_data_0

    .line 1525
    :goto_0
    const/4 v1, 0x0

    .line 1526
    .local v1, "isHorizontalCapturing":Z
    packed-switch p1, :pswitch_data_1

    .line 1544
    :goto_1
    :pswitch_0
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    if-eq v3, v7, :cond_0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    if-ne v3, v9, :cond_1

    .line 1545
    :cond_0
    if-eqz v1, :cond_6

    .line 1546
    const/4 v1, 0x0

    .line 1551
    :cond_1
    :goto_2
    if-eqz v1, :cond_7

    .line 1552
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, 0x189e

    const/16 v5, 0x3e8

    invoke-interface {v3, v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    .line 1558
    :goto_3
    if-eqz p1, :cond_4

    .line 1559
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->isDirectionDetected()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1560
    const/4 v2, 0x0

    .local v2, "width":F
    const/4 v0, 0x0

    .line 1561
    .local v0, "height":F
    if-eq p1, v6, :cond_2

    const/16 v3, 0x8

    if-ne p1, v3, :cond_8

    .line 1562
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleWidth:F

    .line 1563
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleHeight:F

    .line 1564
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 1570
    :cond_3
    :goto_4
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    .line 1571
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 1572
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->updateLivePreviewLayout(Z)V

    .line 1575
    .end local v0    # "height":F
    .end local v2    # "width":F
    :cond_4
    return-void

    .line 1505
    .end local v1    # "isHorizontalCapturing":Z
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1506
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v7

    invoke-virtual {v3, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1507
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1508
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1512
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v5

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1513
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1514
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v8

    invoke-virtual {v3, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1515
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v9

    invoke-virtual {v3, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1519
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v5

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1520
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1521
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1522
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 1528
    .restart local v1    # "isHorizontalCapturing":Z
    :pswitch_3
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    const v4, 0x7f020129

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto/16 :goto_1

    .line 1531
    :pswitch_4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    const v4, 0x7f020126

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto/16 :goto_1

    .line 1534
    :pswitch_5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v5

    const v4, 0x7f020127

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1535
    const/4 v1, 0x1

    .line 1536
    goto/16 :goto_1

    .line 1538
    :pswitch_6
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v5

    const v4, 0x7f020128

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1539
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1548
    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 1554
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, 0x189e

    invoke-interface {v3, v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    goto/16 :goto_3

    .line 1565
    .restart local v0    # "height":F
    .restart local v2    # "width":F
    :cond_8
    if-eq p1, v7, :cond_9

    if-ne p1, v8, :cond_3

    .line 1566
    :cond_9
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleWidth:F

    .line 1567
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleHeight:F

    .line 1568
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    goto/16 :goto_4

    .line 1502
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1526
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
    .line 1578
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCapturing:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1579
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->showGuideText()V

    .line 1581
    :cond_0
    return-void
.end method

.method private panoramaRectChanged(II)V
    .locals 26
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1584
    const/4 v8, 0x0

    .line 1585
    .local v8, "rect_x":F
    const/4 v9, 0x0

    .line 1586
    .local v9, "rect_y":F
    const/4 v10, 0x0

    .line 1588
    .local v10, "startOffsetPosition":F
    const/4 v4, 0x0

    .line 1589
    .local v4, "arrow_x":F
    const/4 v5, 0x0

    .line 1591
    .local v5, "arrow_y":F
    const/4 v7, 0x0

    .line 1592
    .local v7, "baseW":F
    const/4 v6, 0x0

    .line 1596
    .local v6, "baseH":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 1894
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1598
    :pswitch_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitWidth:F

    .line 1599
    const/high16 v6, 0x42700000    # 60.0f

    .line 1600
    sget v22, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v23, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    move/from16 v23, v0

    sub-float v10, v22, v23

    .line 1601
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitX:F

    move/from16 v22, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    sget v24, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_WIDTH:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v7

    div-float v23, v23, v24

    add-float v8, v22, v23

    .line 1602
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sget v23, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v23, v6

    div-float v22, v22, v23

    add-float v9, v10, v22

    .line 1629
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v22

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 1632
    const/4 v11, 0x0

    .line 1634
    .local v11, "warningLevel":I
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v22, v0

    sget v23, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_WIDTH:I

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

    .line 1635
    .local v14, "xDistance":D
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sget v23, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

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

    .line 1636
    .local v18, "yDistance":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_1

    .line 1649
    :goto_2
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    if-gtz p2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    move/from16 v22, v0

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    if-gez p2, :cond_7

    .line 1650
    :cond_2
    const-wide/16 v18, 0x0

    .line 1654
    :cond_3
    :goto_3
    float-to-double v0, v7

    move-wide/from16 v22, v0

    div-double v22, v14, v22

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    mul-double v16, v22, v24

    .line 1655
    .local v16, "xDistanceRate":D
    float-to-double v0, v6

    move-wide/from16 v22, v0

    div-double v22, v18, v22

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    mul-double v20, v22, v24

    .line 1656
    .local v20, "yDistanceRate":D
    move-wide/from16 v0, v16

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 1658
    .local v12, "totalDistance":D
    const-string v22, "BurstPanorama"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Direction:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

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

    .line 1660
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_2

    :pswitch_3
    goto/16 :goto_0

    .line 1778
    :pswitch_4
    const-wide/high16 v22, 0x403e000000000000L    # 30.0

    cmpg-double v22, v12, v22

    if-gez v22, :cond_16

    .line 1779
    const/4 v11, 0x0

    .line 1785
    :goto_4
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_18

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    .line 1788
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    .line 1791
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    move/from16 v22, v0

    if-nez v22, :cond_5

    .line 1792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1801
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    .line 1826
    :cond_5
    :goto_5
    const/16 v22, 0x1

    move/from16 v0, v22

    if-lt v11, v0, :cond_1e

    .line 1828
    cmpl-double v22, v16, v20

    if-lez v22, :cond_1c

    .line 1829
    if-lez p1, :cond_1b

    .line 1830
    const-string v22, "BurstPanorama"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Left - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v22

    sub-float v22, v8, v22

    sget v23, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_OFFSET:F

    sub-float v4, v22, v23

    .line 1833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v5, v9, v22

    .line 1834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1878
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    .line 1880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    goto/16 :goto_0

    .line 1605
    .end local v11    # "warningLevel":I
    .end local v12    # "totalDistance":D
    .end local v14    # "xDistance":D
    .end local v16    # "xDistanceRate":D
    .end local v18    # "yDistance":D
    .end local v20    # "yDistanceRate":D
    :pswitch_5
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitWidth:F

    .line 1606
    const/high16 v6, 0x42700000    # 60.0f

    .line 1607
    sget v22, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    move/from16 v23, v0

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v23

    sub-float v10, v22, v23

    .line 1608
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitX:F

    move/from16 v22, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    sget v24, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_WIDTH:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v7

    div-float v23, v23, v24

    add-float v8, v22, v23

    .line 1609
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sget v23, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v23, v6

    div-float v22, v22, v23

    add-float v9, v10, v22

    .line 1610
    goto/16 :goto_1

    .line 1612
    :pswitch_6
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeRectWidth:F

    .line 1613
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleHeight:F

    .line 1614
    sget v22, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    move/from16 v23, v0

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleWidth:F

    move/from16 v23, v0

    sub-float v10, v22, v23

    .line 1615
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v22, v0

    sget v23, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_WIDTH:I

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v23, v7

    div-float v22, v22, v23

    add-float v8, v10, v22

    .line 1616
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeY:F

    move/from16 v22, v0

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sget v24, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v6

    div-float v23, v23, v24

    add-float v9, v22, v23

    .line 1617
    goto/16 :goto_1

    .line 1619
    :pswitch_7
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeRectWidth:F

    .line 1620
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleHeight:F

    .line 1621
    sget v22, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v23, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    move/from16 v23, v0

    sub-float v10, v22, v23

    .line 1622
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v22, v0

    sget v23, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_WIDTH:I

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v23, v7

    div-float v22, v22, v23

    add-float v8, v10, v22

    .line 1623
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeY:F

    move/from16 v22, v0

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sget v24, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v6

    div-float v23, v23, v24

    add-float v9, v22, v23

    .line 1624
    goto/16 :goto_1

    .line 1639
    .restart local v11    # "warningLevel":I
    .restart local v14    # "xDistance":D
    .restart local v18    # "yDistance":D
    :pswitch_8
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v18, v18, v22

    .line 1640
    goto/16 :goto_2

    .line 1643
    :pswitch_9
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v14, v14, v22

    .line 1644
    goto/16 :goto_2

    .line 1651
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    if-gtz p1, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    if-gez p1, :cond_3

    .line 1652
    :cond_9
    const-wide/16 v14, 0x0

    goto/16 :goto_3

    .line 1663
    .restart local v12    # "totalDistance":D
    .restart local v16    # "xDistanceRate":D
    .restart local v20    # "yDistanceRate":D
    :pswitch_a
    const-wide/high16 v22, 0x403e000000000000L    # 30.0

    cmpg-double v22, v12, v22

    if-gez v22, :cond_d

    .line 1664
    const/4 v11, 0x0

    .line 1670
    :goto_7
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_f

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 1672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    .line 1673
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    .line 1676
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    move/from16 v22, v0

    if-nez v22, :cond_b

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1686
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    .line 1711
    :cond_b
    :goto_8
    const/16 v22, 0x1

    move/from16 v0, v22

    if-lt v11, v0, :cond_15

    .line 1712
    cmpl-double v22, v20, v16

    if-lez v22, :cond_13

    .line 1713
    if-lez p2, :cond_12

    .line 1714
    const-string v22, "BurstPanorama"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Down - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v4, v8, v22

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v22

    add-float v22, v22, v9

    sget v23, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_OFFSET:F

    add-float v5, v22, v23

    .line 1718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1762
    :cond_c
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    goto/16 :goto_0

    .line 1665
    :cond_d
    const-wide/high16 v22, 0x4049000000000000L    # 50.0

    cmpg-double v22, v12, v22

    if-gez v22, :cond_e

    .line 1666
    const/4 v11, 0x1

    goto/16 :goto_7

    .line 1668
    :cond_e
    const/4 v11, 0x2

    goto/16 :goto_7

    .line 1688
    :cond_f
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v11, v0, :cond_11

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    .line 1691
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    .line 1694
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    move/from16 v22, v0

    if-nez v22, :cond_b

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1704
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    goto/16 :goto_8

    .line 1707
    :cond_11
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    .line 1708
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaSound()V

    goto/16 :goto_8

    .line 1726
    :cond_12
    const-string v22, "BurstPanorama"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Up - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v4, v8, v22

    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v22

    sub-float v22, v9, v22

    sget v23, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_OFFSET:F

    sub-float v5, v22, v23

    .line 1730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_9

    .line 1739
    :cond_13
    if-lez p1, :cond_14

    .line 1740
    const-string v22, "BurstPanorama"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Left - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v22

    sub-float v22, v8, v22

    sget v23, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_OFFSET:F

    sub-float v4, v22, v23

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v5, v9, v22

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_9

    .line 1750
    :cond_14
    if-gez p1, :cond_c

    .line 1751
    const-string v22, "BurstPanorama"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Right - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v22

    add-float v22, v22, v8

    sget v23, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_OFFSET:F

    add-float v4, v22, v23

    .line 1754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v5, v9, v22

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_9

    .line 1767
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    .line 1768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1769
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->setGuideTextLocation()V

    .line 1771
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideWarningArrow()V

    .line 1772
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideWarningBox()V

    goto/16 :goto_0

    .line 1780
    :cond_16
    const-wide/high16 v22, 0x4049000000000000L    # 50.0

    cmpg-double v22, v12, v22

    if-gez v22, :cond_17

    .line 1781
    const/4 v11, 0x1

    goto/16 :goto_4

    .line 1783
    :cond_17
    const/4 v11, 0x2

    goto/16 :goto_4

    .line 1803
    :cond_18
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v11, v0, :cond_1a

    .line 1804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 1805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    .line 1806
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    .line 1809
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    move/from16 v22, v0

    if-nez v22, :cond_5

    .line 1810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1819
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    goto/16 :goto_5

    .line 1822
    :cond_1a
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    .line 1823
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaSound()V

    goto/16 :goto_5

    .line 1842
    :cond_1b
    const-string v22, "BurstPanorama"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Right - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v22

    add-float v22, v22, v8

    sget v23, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_OFFSET:F

    add-float v4, v22, v23

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v5, v9, v22

    .line 1846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_6

    .line 1853
    :cond_1c
    if-gez p2, :cond_1d

    .line 1854
    const-string v22, "BurstPanorama"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Up - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v4, v8, v22

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v22

    sub-float v22, v9, v22

    sget v23, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_OFFSET:F

    sub-float v5, v22, v23

    .line 1858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_6

    .line 1866
    :cond_1d
    if-lez p2, :cond_6

    .line 1867
    const-string v22, "BurstPanorama"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Down - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v4, v8, v22

    .line 1870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v22

    add-float v22, v22, v9

    sget v23, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_OFFSET:F

    add-float v5, v22, v23

    .line 1871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_6

    .line 1882
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    .line 1884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1885
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->setGuideTextLocation()V

    .line 1887
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideWarningArrow()V

    .line 1888
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideWarningBox()V

    goto/16 :goto_0

    .line 1596
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

    .line 1636
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

    .line 1660
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

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1897
    const-string v0, "BurstPanorama"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCaptureStarted:Z

    .line 1900
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCapturing:Z

    .line 1901
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    .line 1902
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    .line 1903
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPostProgress:I

    .line 1905
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopCancelTimer()V

    .line 1906
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaSound()V

    .line 1908
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideCaptureTri()V

    .line 1909
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideStopButton()V

    .line 1911
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->clearPanoramaRect()V

    .line 1913
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    .line 1914
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1915
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLBitmapTexture;->clear()V

    .line 1916
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 1918
    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->updateLivePreviewLayout(Z)V

    .line 1919
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->setPreviewThumbnailSizeToDefault()V

    .line 1921
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->showPreviewGroup()V

    .line 1923
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 1924
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1925
    return-void
.end method

.method private restartCancelTimer()V
    .locals 0

    .prologue
    .line 1928
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopCancelTimer()V

    .line 1929
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->startCancelTimer()V

    .line 1930
    return-void
.end method

.method private setAlphaArrow(Lcom/samsung/android/glview/GLView;)V
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 1934
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1935
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1936
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 1937
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 1939
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1940
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->startAnimation()V

    .line 1941
    return-void
.end method

.method private declared-synchronized setCaptureProgressIncreased()V
    .locals 3

    .prologue
    .line 1944
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCapturing:Z

    .line 1945
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    .line 1947
    const-string v0, "BurstPanorama"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureProgressIncreased - mCaptureCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1948
    monitor-exit p0

    return-void

    .line 1944
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setEnterOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 1951
    const-string v0, "BurstPanorama"

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

    .line 1952
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEnterOrientation:I

    .line 1953
    return-void
.end method

.method private setGuideTextLocation()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x2

    .line 1961
    const/4 v6, 0x0

    .line 1962
    .local v6, "textX":F
    const/4 v7, 0x0

    .line 1963
    .local v7, "textY":F
    sget v5, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_WIDTH:F

    .line 1964
    .local v5, "textW":F
    sget v4, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_HEIGHT:F

    .line 1965
    .local v4, "textH":F
    sget v8, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_TEXT_MARGIN:F

    .line 1967
    .local v8, "text_mergin":F
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    if-nez v9, :cond_0

    .line 1968
    const-string v9, "BurstPanorama"

    const-string v10, "setGuideTextLocation : LivePreview is null!"

    invoke-static {v9, v10}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    :goto_0
    return-void

    .line 1972
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLRectangle;->getTranslateX()F

    move-result v2

    .line 1973
    .local v2, "rectX":F
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLRectangle;->getTranslateY()F

    move-result v3

    .line 1974
    .local v3, "rectY":F
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v1

    .line 1975
    .local v1, "rectW":F
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v0

    .line 1977
    .local v0, "rectH":F
    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    packed-switch v9, :pswitch_data_0

    .line 2036
    :goto_1
    :pswitch_0
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v6, v7}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    goto :goto_0

    .line 1980
    :pswitch_1
    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    packed-switch v9, :pswitch_data_1

    goto :goto_1

    .line 1982
    :pswitch_2
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v12, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1983
    add-float v9, v2, v1

    add-float v6, v9, v8

    .line 1984
    sub-float v9, v0, v4

    div-float/2addr v9, v11

    add-float v7, v3, v9

    .line 1985
    goto :goto_1

    .line 1987
    :pswitch_3
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v10, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1988
    add-float v9, v2, v1

    add-float/2addr v9, v4

    add-float v6, v9, v8

    .line 1989
    sub-float v9, v5, v0

    div-float/2addr v9, v11

    sub-float v7, v3, v9

    .line 1990
    goto :goto_1

    .line 1992
    :pswitch_4
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v12, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1993
    sub-float v6, v2, v8

    .line 1994
    add-float v9, v3, v0

    sub-float v10, v0, v4

    div-float/2addr v10, v11

    add-float v7, v9, v10

    .line 1995
    goto :goto_1

    .line 1997
    :pswitch_5
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v10, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1998
    sub-float v9, v2, v4

    sub-float v6, v9, v8

    .line 1999
    add-float v9, v3, v0

    sub-float v10, v5, v0

    div-float/2addr v10, v11

    add-float v7, v9, v10

    goto :goto_1

    .line 2006
    :pswitch_6
    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    packed-switch v9, :pswitch_data_2

    goto :goto_1

    .line 2008
    :pswitch_7
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v10, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 2009
    sub-float v9, v1, v5

    div-float/2addr v9, v11

    add-float v6, v2, v9

    .line 2010
    sub-float v9, v3, v4

    sub-float v7, v9, v8

    .line 2011
    goto :goto_1

    .line 2013
    :pswitch_8
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v12, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 2014
    add-float v9, v2, v1

    sub-float v10, v1, v4

    div-float/2addr v10, v11

    sub-float v6, v9, v10

    .line 2015
    add-float v9, v3, v0

    add-float v7, v9, v8

    .line 2016
    goto :goto_1

    .line 2018
    :pswitch_9
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v10, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 2019
    add-float v9, v2, v1

    sub-float v10, v5, v1

    div-float/2addr v10, v11

    add-float v6, v9, v10

    .line 2020
    add-float v9, v3, v0

    add-float/2addr v9, v4

    add-float v7, v9, v8

    .line 2021
    goto/16 :goto_1

    .line 2023
    :pswitch_a
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v12, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 2024
    sub-float v9, v1, v4

    div-float/2addr v9, v11

    add-float v6, v2, v9

    .line 2025
    sub-float v7, v3, v8

    goto/16 :goto_1

    .line 1977
    nop

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

    .line 1980
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2006
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
    .line 2045
    const-string v0, "BurstPanorama"

    const-string v1, "Fancy progress bar is not implemented yet."

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    return-void
.end method

.method private declared-synchronized setPostCaptureProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 2049
    monitor-enter p0

    :try_start_0
    const-string v0, "BurstPanorama"

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

    .line 2050
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPostProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2051
    monitor-exit p0

    return-void

    .line 2049
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
    .line 2054
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    if-lez v1, :cond_0

    .line 2055
    const-string v1, "BurstPanorama"

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

    .line 2059
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    packed-switch v1, :pswitch_data_0

    .line 2073
    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleWidth:F

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    .line 2074
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleHeight:F

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    .line 2078
    :goto_0
    return-void

    .line 2062
    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleHeight:F

    int-to-float v2, p2

    div-float v0, v1, v2

    .line 2063
    .local v0, "Ratio":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    .line 2064
    int-to-float v1, p2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    goto :goto_0

    .line 2068
    .end local v0    # "Ratio":F
    :pswitch_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleWidth:F

    int-to-float v2, p1

    div-float v0, v1, v2

    .line 2069
    .restart local v0    # "Ratio":F
    int-to-float v1, p2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    .line 2070
    int-to-float v1, p1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    goto :goto_0

    .line 2059
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
    .line 2081
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleWidth:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    .line 2082
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleHeight:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    .line 2083
    return-void
.end method

.method private showGuideText()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 2086
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 2087
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsGuideTextDisplaying:Z

    if-eqz v0, :cond_2

    .line 2088
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2089
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2095
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2096
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2099
    :cond_1
    return-void

    .line 2092
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2093
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsGuideTextDisplaying:Z

    goto :goto_0
.end method

.method private showPanoramaToastPopup(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    const/4 v2, 0x1

    .line 2103
    packed-switch p1, :pswitch_data_0

    .line 2113
    :goto_0
    return-void

    .line 2105
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f08015e

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2108
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f08018b

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2103
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

    .line 2116
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_0

    .line 2117
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2120
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->updateArrow()V

    .line 2122
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 2136
    :cond_1
    return-void

    .line 2125
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 2126
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2131
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x2

    .restart local v0    # "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 2132
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2131
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2122
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
    .line 2139
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2140
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 2141
    return-void
.end method

.method private startCancelTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2144
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2145
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2147
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2148
    return-void
.end method

.method private stopCancelTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2151
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2152
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2154
    :cond_0
    return-void
.end method

.method private stopPanoramaCapturing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2157
    const-string v0, "BurstPanorama"

    const-string v1, "stopPanoramaCapturing"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopPanorama()V

    .line 2161
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideCaptureTri()V

    .line 2163
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCaptureStarted:Z

    .line 2164
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCapturing:Z

    .line 2165
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    .line 2166
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    .line 2167
    return-void
.end method

.method private stopPanoramaSound()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 2170
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2171
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2172
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2174
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(I)V

    .line 2175
    return-void
.end method

.method private updateArrow()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    .line 2178
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 2200
    :goto_0
    return-void

    .line 2181
    :pswitch_0
    const v1, 0x7f090033

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    .line 2183
    .local v0, "triOffset":F
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v8

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleWidth:F

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleHeight:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2185
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v7

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleX:F

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleHeight:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto :goto_0

    .line 2191
    .end local v0    # "triOffset":F
    :pswitch_1
    const v1, 0x7f090033

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    .line 2193
    .restart local v0    # "triOffset":F
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v5

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleWidth:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleY:F

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2195
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v9

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleWidth:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleHeight:F

    add-float/2addr v3, v4

    add-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 2178
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
    .line 2207
    monitor-enter p0

    :try_start_0
    const-string v6, "BurstPanorama"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateLivePreviewLayout - mCaptureCount:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

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

    .line 2210
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v9, 0x2

    if-ge v6, v9, :cond_5

    if-nez p1, :cond_5

    .line 2211
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsDrawLivePreview:Z

    if-eqz v6, :cond_1

    .line 2215
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->showPreviewGroup()V

    .line 2217
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    .line 2218
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_2

    .line 2219
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleX:F

    move/from16 v25, v0

    .line 2220
    .local v25, "groupX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleY:F

    move/from16 v26, v0

    .line 2221
    .local v26, "groupY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleWidth:F

    move/from16 v24, v0

    .line 2222
    .local v24, "groupW":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleHeight:F

    move/from16 v21, v0

    .line 2223
    .local v21, "groupH":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleWidth:F

    move/from16 v41, v0

    .line 2224
    .local v41, "rectW":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleHeight:F

    move/from16 v40, v0

    .line 2238
    .local v40, "rectH":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 2239
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v9, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2240
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 2241
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    move/from16 v0, v41

    move/from16 v1, v40

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 2244
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v6, :cond_1

    .line 2245
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2246
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2441
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

    .line 2226
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    const/4 v9, 0x1

    if-eq v6, v9, :cond_3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    const/4 v9, 0x3

    if-ne v6, v9, :cond_4

    .line 2227
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleX:F

    move/from16 v25, v0

    .line 2228
    .restart local v25    # "groupX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleY:F

    move/from16 v26, v0

    .line 2229
    .restart local v26    # "groupY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleWidth:F

    move/from16 v24, v0

    .line 2230
    .restart local v24    # "groupW":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleHeight:F

    move/from16 v21, v0

    .line 2231
    .restart local v21    # "groupH":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleWidth:F

    move/from16 v41, v0

    .line 2232
    .restart local v41    # "rectW":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitSingleHeight:F

    move/from16 v40, v0

    .restart local v40    # "rectH":F
    goto :goto_0

    .line 2234
    .end local v21    # "groupH":F
    .end local v24    # "groupW":F
    .end local v25    # "groupX":F
    .end local v26    # "groupY":F
    .end local v40    # "rectH":F
    .end local v41    # "rectW":F
    :cond_4
    const-string v6, "BurstPanorama"

    const-string v9, "updateLivePreviewLayout: Invalid orientation"

    invoke-static {v6, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2207
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2249
    :cond_5
    if-eqz p1, :cond_1

    .line 2250
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hidePreviewGroup()V

    .line 2251
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2252
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v6, :cond_7

    .line 2253
    :cond_6
    const-string v6, "BurstPanorama"

    const-string v9, "updateLivePreviewLayout: LivePreview is null yet. ignore"

    invoke-static {v6, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2256
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2257
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->showStopButton()V

    .line 2265
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    sget v10, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float v48, v6, v9

    .line 2266
    .local v48, "widthFocus":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    sget v10, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float v28, v6, v9

    .line 2268
    .local v28, "heightFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x0

    aget v36, v6, v9

    .line 2269
    .local v36, "oldLeftGroup":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x1

    aget v38, v6, v9

    .line 2270
    .local v38, "oldTopGroup":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLBitmapTexture;->getLeft()F

    move-result v35

    .line 2271
    .local v35, "oldLeft":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLBitmapTexture;->getTop()F

    move-result v37

    .line 2272
    .local v37, "oldTop":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v39

    .line 2273
    .local v39, "oldWidth":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v34

    .line 2274
    .local v34, "oldHeight":F
    const/16 v30, 0x1

    .line 2276
    .local v30, "landscape":Z
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    sget v10, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float v47, v6, v9

    .line 2277
    .local v47, "width":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    sget v10, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float v27, v6, v9

    .line 2279
    .local v27, "height":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v49, v0

    monitor-enter v49
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2280
    :try_start_3
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    packed-switch v6, :pswitch_data_0

    .line 2377
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x0

    aget v6, v6, v9

    sub-float v18, v36, v6

    .line 2378
    .local v18, "fromXDeltaRect":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x1

    aget v6, v6, v9

    sub-float v20, v38, v6

    .line 2379
    .local v20, "fromYDeltaRect":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x0

    aget v6, v6, v9

    sub-float v6, v36, v6

    add-float v35, v35, v6

    .line 2380
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLBitmapTexture;->getLeft()F

    move-result v6

    sub-float v17, v35, v6

    .line 2381
    .local v17, "fromXDelta":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x1

    aget v6, v6, v9

    sub-float v6, v38, v6

    add-float v37, v37, v6

    .line 2382
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLBitmapTexture;->getTop()F

    move-result v6

    sub-float v19, v37, v6

    .line 2383
    .local v19, "fromYDelta":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v6

    div-float v5, v39, v6

    .line 2384
    .local v5, "scaleX":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v6

    div-float v7, v34, v6

    .line 2386
    .local v7, "scaleY":F
    new-instance v29, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v29 .. v29}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 2391
    .local v29, "interpol":Landroid/view/animation/Interpolator;
    if-eqz v30, :cond_8

    .line 2392
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 2393
    .local v4, "animRect":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v4, v6, v9, v10, v11}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2395
    const-wide/16 v10, 0xb2

    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2396
    const-wide/16 v10, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2397
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2398
    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2425
    :goto_3
    new-instance v44, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v6, v2, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2426
    .local v44, "ta":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v11

    float-to-int v11, v11

    move-object/from16 v0, v44

    invoke-virtual {v0, v6, v9, v10, v11}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2428
    const-wide/16 v10, 0xb2

    move-object/from16 v0, v44

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2429
    const-wide/16 v10, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2430
    const/4 v6, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2431
    move-object/from16 v0, v44

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2433
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->resetClipRect()V

    .line 2434
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6, v4}, Lcom/samsung/android/glview/GLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2435
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Lcom/samsung/android/glview/GLBitmapTexture;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2437
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->startAnimation()V

    .line 2438
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLBitmapTexture;->startAnimation()V

    .line 2439
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

    .line 2282
    :pswitch_1
    const/16 v22, 0x0

    .line 2283
    .local v22, "groupLeft":F
    const/16 v23, 0x0

    .line 2284
    .local v23, "groupTop":F
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v6

    neg-float v6, v6

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    add-float v43, v6, v9

    .line 2285
    .local v43, "startOffsetPosition":F
    move/from16 v32, v43

    .line 2286
    .local v32, "leftFocus":F
    sget v22, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    .line 2287
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeY:F

    move/from16 v23, v0

    .line 2288
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeY:F

    sget v9, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeHeight:F

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    sub-float v46, v6, v9

    .line 2290
    .local v46, "topFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v9, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2291
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v9, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeHeight:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 2292
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 2294
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    sget v9, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeHeight:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 2296
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 2297
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleHeight:F

    const/high16 v10, 0x40000000    # 2.0f

    sget v11, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    move/from16 v0, v47

    invoke-virtual {v6, v0, v9}, Lcom/samsung/android/glview/GLBitmapTexture;->setSize(FF)V

    .line 2300
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 2302
    add-float v6, v32, v48

    const/high16 v9, 0x41400000    # 12.0f

    sub-float v47, v6, v9

    .line 2303
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeHeight:F

    sget v10, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_HEIGHT:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move/from16 v0, v47

    invoke-virtual {v6, v0, v9}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2304
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 2308
    .end local v22    # "groupLeft":F
    .end local v23    # "groupTop":F
    .end local v32    # "leftFocus":F
    .end local v43    # "startOffsetPosition":F
    .end local v46    # "topFocus":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v6

    neg-float v6, v6

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v6, v9

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v6, v9

    sget v9, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    sub-float v43, v6, v9

    .line 2309
    .restart local v43    # "startOffsetPosition":F
    sget v6, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v9, 0x40000000    # 2.0f

    sget v10, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v6, v9

    sub-float v31, v6, v47

    .line 2310
    .local v31, "left":F
    move/from16 v32, v43

    .line 2311
    .restart local v32    # "leftFocus":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeY:F

    sget v9, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeHeight:F

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    sub-float v46, v6, v9

    .line 2313
    .restart local v46    # "topFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v9, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeHeight:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 2314
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    sget v10, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeY:F

    invoke-virtual {v6, v9, v10, v11}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2315
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 2317
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    sget v9, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeHeight:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 2319
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    sget v9, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move/from16 v0, v31

    invoke-virtual {v6, v0, v9}, Lcom/samsung/android/glview/GLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 2320
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleHeight:F

    const/high16 v10, 0x40000000    # 2.0f

    sget v11, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    move/from16 v0, v47

    invoke-virtual {v6, v0, v9}, Lcom/samsung/android/glview/GLBitmapTexture;->setSize(FF)V

    .line 2322
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move/from16 v0, v32

    move/from16 v1, v46

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 2324
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v48, v6

    sub-float v6, v32, v6

    const/high16 v9, 0x41400000    # 12.0f

    sub-float/2addr v6, v9

    sget v9, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    sub-float v47, v6, v9

    .line 2325
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    const/high16 v9, 0x42200000    # 40.0f

    add-float v9, v9, v47

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeHeight:F

    sget v11, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_HEIGHT:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2326
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 2330
    .end local v31    # "left":F
    .end local v32    # "leftFocus":F
    .end local v43    # "startOffsetPosition":F
    .end local v46    # "topFocus":F
    :pswitch_3
    const/16 v30, 0x0

    .line 2331
    sget v6, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float v6, v6, v27

    sget v9, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v45, v6, v9

    .line 2332
    .local v45, "top":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleHeight:F

    neg-float v6, v6

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    sget v9, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v6, v9

    sget v9, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    sub-float v43, v6, v9

    .line 2333
    .restart local v43    # "startOffsetPosition":F
    move/from16 v46, v43

    .line 2334
    .restart local v46    # "topFocus":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitX:F

    sget v9, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitWidth:F

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    sub-float v32, v6, v9

    .line 2336
    .restart local v32    # "leftFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitWidth:F

    sget v10, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 2337
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitX:F

    sget v11, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v6, v9, v10, v11}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2338
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 2340
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitWidth:F

    sget v10, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 2342
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    sget v11, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    sget v10, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v10, v27, v10

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLBitmapTexture;->setSize(FF)V

    .line 2343
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    const/4 v9, 0x0

    move/from16 v0, v45

    invoke-virtual {v6, v9, v0}, Lcom/samsung/android/glview/GLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 2345
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move/from16 v0, v32

    move/from16 v1, v46

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 2348
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v28, v6

    sub-float v6, v45, v6

    sget v9, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_HEIGHT:F

    sub-float/2addr v6, v9

    const/high16 v9, 0x41b00000    # 22.0f

    sub-float v27, v6, v9

    .line 2349
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitRectWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x41900000    # 18.0f

    sub-float/2addr v9, v10

    move/from16 v0, v27

    invoke-virtual {v6, v9, v0}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2350
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 2354
    .end local v32    # "leftFocus":F
    .end local v43    # "startOffsetPosition":F
    .end local v45    # "top":F
    .end local v46    # "topFocus":F
    :pswitch_4
    const/16 v30, 0x0

    .line 2355
    const/16 v45, 0x0

    .line 2356
    .restart local v45    # "top":F
    sget v6, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v9, 0x40000000    # 2.0f

    sget v10, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v6, v9

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v6, v9

    const/high16 v9, 0x41100000    # 9.0f

    div-float/2addr v6, v9

    const/high16 v9, 0x40000000    # 2.0f

    sget v10, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    add-float v28, v6, v9

    .line 2357
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    sget v9, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewLandscapeSingleHeight:F

    sub-float v43, v6, v9

    .line 2358
    .restart local v43    # "startOffsetPosition":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitX:F

    sget v9, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitWidth:F

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    sub-float v32, v6, v9

    .line 2359
    .restart local v32    # "leftFocus":F
    move/from16 v46, v43

    .line 2361
    .restart local v46    # "topFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitWidth:F

    sget v10, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 2362
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitX:F

    sget v11, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v6, v9, v10, v11}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2363
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 2364
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitWidth:F

    sget v10, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 2366
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    sget v11, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    sget v10, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v10, v27, v10

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLBitmapTexture;->setSize(FF)V

    .line 2367
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    const/4 v9, 0x0

    move/from16 v0, v45

    invoke-virtual {v6, v9, v0}, Lcom/samsung/android/glview/GLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 2369
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 2371
    add-float v6, v27, v28

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v28, v9

    sub-float v27, v6, v9

    .line 2372
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivepreviewPortraitRectWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x41900000    # 18.0f

    sub-float/2addr v9, v10

    move/from16 v0, v27

    invoke-virtual {v6, v9, v0}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2373
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 2400
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

    .line 2401
    .local v8, "scaleRect":Landroid/view/animation/ScaleAnimation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v8, v6, v9, v10, v11}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 2403
    const-wide/16 v10, 0xb2

    invoke-virtual {v8, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 2404
    const-wide/16 v10, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 2405
    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 2406
    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2408
    new-instance v33, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-direct {v0, v1, v6, v2, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2409
    .local v33, "moveRect":Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v11

    float-to-int v11, v11

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v9, v10, v11}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 2411
    const-wide/16 v10, 0xb2

    move-object/from16 v0, v33

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2412
    const-wide/16 v10, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 2413
    const/4 v6, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 2414
    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2416
    new-instance v42, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2417
    .local v42, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2418
    move-object/from16 v0, v42

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2419
    const-wide/16 v10, 0xb2

    move-object/from16 v0, v42

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 2420
    move-object/from16 v0, v42

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2421
    move-object/from16 v4, v42

    .restart local v4    # "animRect":Landroid/view/animation/Animation;
    goto/16 :goto_3

    .line 2280
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
    .line 296
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCaptureStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCapturing:Z

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
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 4
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getPanoramaMaxCount(Lcom/sec/android/app/camera/interfaces/Engine;)[F

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->initCoordinate([F)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPanoramaListener(Lcom/sec/android/seccamera/SecCamera$PanoramaEventListener;)V

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->showPreviewGroup()V

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsDrawLivePreview:Z

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public onChangeShootingModeParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 3
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    const/16 v2, 0x7530

    const/16 v1, 0x3a98

    .line 340
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_LOW_PERFORMANCE:Z

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p1, v1, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 346
    :goto_0
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    const-string v0, "picture-size"

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_RESOLUTION:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_0
    return-void

    .line 343
    :cond_1
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
    .line 355
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 356
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 357
    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 358
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 360
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->createPanoramaView()V

    .line 361
    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 365
    const-string v0, "sef_file_type"

    const/16 v1, 0x8e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public onImageStoringCompleted()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 371
    const-string v0, "PanoramaShot"

    .line 372
    .local v0, "dummyString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Panorama_Shot_Info"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v4, 0x8e0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/secvision/sef/SEF;->addSEFData(Ljava/lang/String;Ljava/lang/String;[BII)I

    .line 373
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->reset()V

    .line 375
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/util/ContentData;->getOrientation()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 377
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 378
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->addUriListInSecureCamera(Landroid/net/Uri;)V

    .line 385
    :cond_1
    return v5
.end method

.method public onInactivate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 390
    const-string v0, "BurstPanorama"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInactivate - capture count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getCaptureProgressIncreased()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->cancelPanoramaCapture()V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->clearSideQuickSetting()V

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsDrawLivePreview:Z

    .line 399
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->reset()V

    .line 400
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hidePreviewGroup()V

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setPanoramaListener(Lcom/sec/android/seccamera/SecCamera$PanoramaEventListener;)V

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 404
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 408
    sparse-switch p1, :sswitch_data_0

    .line 424
    :cond_0
    :sswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 410
    :sswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPostProgress:I

    if-lez v0, :cond_0

    .line 411
    const-string v0, "BurstPanorama"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown - it is stitching ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPostProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v0, 0x1

    goto :goto_0

    .line 408
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 429
    sparse-switch p1, :sswitch_data_0

    .line 464
    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    .line 431
    :sswitch_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPostProgress:I

    if-gtz v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 435
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 437
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCaptureStarted:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getCaptureProgressIncreased()I

    move-result v1

    if-nez v1, :cond_3

    .line 438
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->cancelPanoramaCapture()V

    .line 439
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->reset()V

    goto :goto_0

    .line 441
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getCaptureProgressIncreased()I

    move-result v1

    if-lez v1, :cond_0

    .line 442
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaCapturing()V

    goto :goto_0

    .line 449
    :sswitch_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCapturing:Z

    if-eqz v1, :cond_0

    .line 450
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    .line 451
    const-string v1, "BurstPanorama"

    const-string v2, "panorama can be saved at least two shot"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 454
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_5

    .line 455
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 457
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaCapturing()V

    goto :goto_0

    .line 429
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
    .line 469
    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 17
    .param p1, "orientation"    # I

    .prologue
    .line 474
    const-string v2, "BurstPanorama"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOrientationChanged - mEnterOrientation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEnterOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrentOrientation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

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

    .line 476
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPreviewRectRotationSupported:Z

    if-nez v2, :cond_0

    .line 477
    const/16 p1, 0x0

    .line 481
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCaptureStarted:Z

    if-eqz v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->isDirectionDetected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 482
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_1

    .line 483
    const-string v2, "BurstPanorama"

    const-string v3, "onOrientationChanged Stop case - orientation changed"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    .line 486
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    .line 488
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->updateLivePreviewLayout(Z)V

    .line 489
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hidePreviewGroup()V

    .line 491
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->cancelPanoramaCapture()V

    .line 492
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->reset()V

    .line 494
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->showPanoramaToastPopup(I)V

    .line 498
    :cond_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    .line 500
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEnterOrientation:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    .line 501
    const/4 v9, 0x0

    .line 502
    .local v9, "bStop":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEnterOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 521
    :cond_2
    :goto_0
    if-eqz v9, :cond_3

    .line 522
    const-string v2, "BurstPanorama"

    const-string v3, "onOrientationChanged Stop case - orientation changed during a capturing"

    invoke-static {v2, v3}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    .line 524
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideWarningArrow()V

    .line 525
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideWarningBox()V

    .line 526
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaSound()V

    .line 528
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideLivePreview()V

    .line 529
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->updateLivePreviewLayout(Z)V

    .line 531
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaCapturing()V

    .line 535
    .end local v9    # "bStop":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v2, :cond_4

    .line 536
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePriviewBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 537
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->updateLivePreviewLayout(Z)V

    .line 541
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 542
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->updateArrow()V

    .line 547
    :cond_5
    packed-switch p1, :pswitch_data_1

    .line 628
    :cond_6
    :goto_1
    return-void

    .line 504
    .restart local v9    # "bStop":Z
    :pswitch_0
    const/4 v2, 0x2

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    .line 505
    const/4 v9, 0x1

    goto :goto_0

    .line 508
    :pswitch_1
    const/4 v2, 0x3

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    .line 509
    const/4 v9, 0x1

    goto :goto_0

    .line 512
    :pswitch_2
    if-eqz p1, :cond_2

    .line 513
    const/4 v9, 0x1

    goto :goto_0

    .line 516
    :pswitch_3
    const/4 v2, 0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    .line 517
    const/4 v9, 0x1

    goto :goto_0

    .line 550
    .end local v9    # "bStop":Z
    :pswitch_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleX:F

    .line 551
    .local v14, "rectX":F
    const/4 v15, 0x0

    .line 552
    .local v15, "rectY":F
    sget v10, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_LANDSCAPE_X:F

    .line 553
    .local v10, "groupX":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeY:F

    .line 555
    .local v11, "groupY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLRectangle;->resetTranslate()V

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v3, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v10, v11}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    sget v3, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2, v14, v15}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    .line 565
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    const/4 v2, 0x4

    if-ge v12, v2, :cond_9

    .line 566
    const/4 v2, 0x2

    if-ge v12, v2, :cond_8

    .line 567
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v12

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 565
    :cond_7
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 571
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v12

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 574
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v2, :cond_6

    .line 575
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePriviewBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 577
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLBitmapTexture;->clear()V

    .line 579
    const/high16 v2, 0x40000000    # 2.0f

    sget v3, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v13, v2, v3

    .line 580
    .local v13, "padding":F
    new-instance v2, Lcom/samsung/android/glview/GLBitmapTexture;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v4, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleWidth:F

    sub-float/2addr v6, v13

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleHeight:F

    sub-float/2addr v7, v13

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePriviewBmp:Landroid/graphics/Bitmap;

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 582
    monitor-exit v16

    goto/16 :goto_1

    .end local v13    # "padding":F
    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 588
    .end local v10    # "groupX":F
    .end local v11    # "groupY":F
    .end local v12    # "i":I
    .end local v14    # "rectX":F
    .end local v15    # "rectY":F
    :pswitch_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleX:F

    .line 589
    .restart local v14    # "rectX":F
    const/4 v15, 0x0

    .line 590
    .restart local v15    # "rectY":F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitX:F

    .line 591
    .restart local v10    # "groupX":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitY:F

    .line 593
    .restart local v11    # "groupY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLRectangle;->resetTranslate()V

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v3, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_PORTRAIT_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v10, v11}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    sget v3, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_PORTRAIT_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2, v14, v15}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    .line 603
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    const/4 v2, 0x4

    if-ge v12, v2, :cond_c

    .line 604
    const/4 v2, 0x2

    if-ge v12, v2, :cond_b

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v12

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 603
    :cond_a
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 607
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v12

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_5

    .line 612
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v2, :cond_6

    .line 613
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePriviewBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 615
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLBitmapTexture;->clear()V

    .line 617
    const/high16 v2, 0x40000000    # 2.0f

    sget v3, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v13, v2, v3

    .line 619
    .restart local v13    # "padding":F
    new-instance v2, Lcom/samsung/android/glview/GLBitmapTexture;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v4, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleHeight:F

    sub-float/2addr v6, v13

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleWidth:F

    sub-float/2addr v7, v13

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePriviewBmp:Landroid/graphics/Bitmap;

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 621
    monitor-exit v16

    goto/16 :goto_1

    .end local v13    # "padding":F
    :catchall_1
    move-exception v2

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 502
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 547
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPanoramaCaptured()V
    .locals 2

    .prologue
    .line 632
    const-string v0, "BurstPanorama"

    const-string v1, "onPanoramaCaptured"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCaptureStarted:Z

    if-nez v0, :cond_0

    .line 639
    :goto_0
    return-void

    .line 637
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->setCaptureProgressIncreased()V

    .line 638
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->restartCancelTimer()V

    goto :goto_0
.end method

.method public onPanoramaCapturedMaxFrames()V
    .locals 2

    .prologue
    .line 643
    const-string v0, "BurstPanorama"

    const-string v1, "onPanoramaCapturedMaxFrames"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void
.end method

.method public onPanoramaCapturedNew()V
    .locals 2

    .prologue
    .line 648
    const-string v0, "BurstPanorama"

    const-string v1, "onPanoramaCapturedNew"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-void
.end method

.method public onPanoramaDirectionChanged(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 653
    const-string v0, "BurstPanorama"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanoramaDirectionChanged - direction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getCaptureProgressIncreased()I

    move-result v0

    if-nez v0, :cond_0

    .line 659
    :goto_0
    return-void

    .line 658
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->panoramaDirectionChanged(I)V

    goto :goto_0
.end method

.method public onPanoramaError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 663
    const-string v0, "BurstPanorama"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanoramaError - error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 666
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaCapturing()V

    .line 667
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideStopButton()V

    .line 668
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 674
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->showPanoramaToastPopup(I)V

    .line 675
    return-void

    .line 670
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->cancelPanoramaCapture()V

    .line 671
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->reset()V

    goto :goto_0
.end method

.method public onPanoramaLivePreviewData([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 684
    const-string v0, "BurstPanorama"

    const-string v1, "onPanoramaLivePreviewData"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->onLivePreviewData([B)V

    .line 693
    return-void
.end method

.method public onPanoramaLowResolutionData([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 702
    const-string v0, "BurstPanorama"

    const-string v1, "onPanoramaLowResolutionData"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/Util;->decodeRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 705
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->setLowResolutionBitmap(Landroid/graphics/Bitmap;)V

    .line 706
    return-void
.end method

.method public onPanoramaMoveSlowly()V
    .locals 2

    .prologue
    .line 710
    const-string v0, "BurstPanorama"

    const-string v1, "onPanoramaMoveSlowly"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->panoramaMoveSlowly()V

    .line 712
    return-void
.end method

.method public onPanoramaProgressStitching(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 716
    const-string v0, "BurstPanorama"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanoramaProgressStitching - progress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    const-string v0, "BurstPanorama"

    const-string v1, "onPanoramaProgressStitching - CE_STATE_SHUTDOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->reset()V

    .line 722
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->setPostCaptureProgress(I)V

    .line 724
    if-nez p1, :cond_1

    .line 725
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopCancelTimer()V

    .line 726
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaSound()V

    .line 727
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->clearPanoramaRect()V

    .line 728
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 729
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 730
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 734
    :goto_0
    return-void

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0
.end method

.method public onPanoramaRectChanged(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 739
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getCaptureProgressIncreased()I

    move-result v0

    if-nez v0, :cond_0

    .line 743
    :goto_0
    return-void

    .line 742
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->panoramaRectChanged(II)V

    goto :goto_0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 748
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 753
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 758
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPostProgress:I

    if-lez v1, :cond_0

    .line 759
    const-string v1, "BurstPanorama"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown - it is stitching ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPostProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :goto_0
    return v0

    .line 762
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getCaptureProgressIncreased()I

    move-result v1

    const/16 v2, 0x320

    if-ne v1, v2, :cond_1

    .line 763
    const-string v1, "BurstPanorama"

    const-string v2, "onKeyDown - PANORAMAX_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 766
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 3
    .param p1, "captureMethod"    # I

    .prologue
    const/4 v2, 0x1

    .line 772
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->isReadyToCapture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    const-string v0, "BurstPanorama"

    const-string v1, "Drop Panorama capture start, because it\'s not ready."

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :goto_0
    return v2

    .line 776
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    const-string v0, "BurstPanorama"

    const-string v1, "Return, isCapturing"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 780
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getCaptureProgressIncreased()I

    move-result v0

    const/16 v1, 0x320

    if-ne v0, v1, :cond_2

    .line 781
    const-string v0, "BurstPanorama"

    const-string v1, "Return PANORAMAX_MAX_IMAGE_COUNT"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 785
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x181

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 787
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestTransientAudioFocus()V

    .line 791
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->lockAEAWB()V

    .line 792
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isContinuousAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isHalfShutter()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 793
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleAutoFocus()V

    .line 795
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartPanorama()V

    .line 796
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCaptureStarted:Z

    .line 798
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastOrientation()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/glview/GLUtil;->getGLOrientationBySystemOrientation(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->setEnterOrientation(I)V

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 805
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 809
    return-void
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 813
    const/4 v0, 0x0

    return v0
.end method
