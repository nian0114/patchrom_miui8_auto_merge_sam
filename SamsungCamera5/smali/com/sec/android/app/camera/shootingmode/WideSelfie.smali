.class public Lcom/sec/android/app/camera/shootingmode/WideSelfie;
.super Ljava/lang/Object;
.source "WideSelfie.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/seccamera/SecCamera$WideSelfieEventListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;


# static fields
.field private static final ANIMATION_TOP_MARGIN_LEFT:F

.field private static final ANIMATION_TOP_MARGIN_TOP:F

.field private static final ARROW_LANDSCAPE_OVERLAY:F

.field private static final ARROW_MARGIN:F

.field private static final BACKGROUND_RECT_PORTRAIT_X:F

.field private static final BACKGROUND_RECT_PORTRAIT_Y:F

.field private static final DELAY_TO_HIDE_PROGRESS_POPUP:I = 0x32

.field private static FOCUS_RECT_LANDSCAPE_X:F = 0.0f

.field private static final FOCUS_RECT_LANDSCAPE_Y:F

.field private static final FOCUS_RECT_PORTRAIT_X:F

.field private static FOCUS_RECT_PORTRAIT_Y:F = 0.0f

.field private static final GUIDETEXT_LEFT:I = 0x1

.field private static final GUIDETEXT_NONE:I = 0x3

.field private static final GUIDETEXT_RIGHT:I = 0x2

.field private static final GUIDETEXT_START:I = 0x0

.field private static final GUIDE_TEXT_FONT_COLOR:I

.field private static final GUIDE_TEXT_HEIGHT:F

.field private static GUIDE_TEXT_PORTRAIT_HEIGHT:F = 0.0f

.field private static final GUIDE_TEXT_PORTRAIT_X:F

.field private static final GUIDE_TEXT_PORTRAIT_Y:F

.field private static final GUIDE_TEXT_POS_X:F

.field private static final GUIDE_TEXT_SIZE:F

.field private static final GUIDE_TEXT_STROKE_COLOR:I

.field private static final GUIDE_TEXT_STROKE_WIDTH:I

.field private static final GUIDE_TEXT_WIDTH:F

.field private static final LANDSCAPE_CAPTURE_COUNT:I = 0x3

.field private static final LIVEPREVIEW_LANDSCAPE_HEIGHT:F

.field private static LIVEPREVIEW_LANDSCAPE_WIDTH:F = 0.0f

.field private static final LIVEPREVIEW_LANDSCAPE_X:F

.field private static final LIVEPREVIEW_LANDSCAPE_Y:F

.field private static LIVEPREVIEW_PORTRAIT_HEIGHT:F = 0.0f

.field private static final LIVEPREVIEW_PORTRAIT_WIDTH:F

.field private static final LIVEPREVIEW_PORTRAIT_X:F

.field private static final LIVEPREVIEW_PORTRAIT_Y:F

.field private static final LIVEPREVIEW_RECT_THICKNESS:F

.field private static final LIVEPREVIEW_SCREEN_WIDTH:I

.field private static final LIVEPREVIEW_SINGLE_HEIGHT:F

.field private static final LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

.field private static final LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

.field private static final LIVEPREVIEW_SINGLE_PORTRAIT_X:F = 0.0f

.field private static LIVEPREVIEW_SINGLE_PORTRAIT_Y:F = 0.0f

.field private static final LIVEPREVIEW_SINGLE_WIDTH:F

.field private static LIVEPREVIEW_SINGLE_X:F = 0.0f

.field private static final LIVEPREVIEW_SINGLE_Y:F = 0.0f

.field private static final MESSAGE_HIDE_PROGRESS_POPUP:I = 0x9

.field private static final MESSAGE_SHOW_LIVEPREVIEW:I = 0x8

.field private static final MESSAGE_START_ANIMATION:I = 0x5

.field protected static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field private static final MESSAGE_TIMEOUT_GUIDETEXT:I = 0x4

.field private static final MESSAGE_TIMEOUT_SKIP_CAPTURE:I = 0x6

.field private static final MESSAGE_TIMEOUT_SKIP_CHECK_WARNING:I = 0x7

.field private static final MESSAGE_WIDE_SELFIE_WARNING_HIGH:I = 0x3

.field private static final MESSAGE_WIDE_SELFIE_WARNING_LOW:I = 0x2

.field private static final NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

.field private static final NEXT_CAPTURE_FOCUS_PORTRAIT_X:F

.field private static final PORTRATE_CAPTURE_COUNT:I = 0x5

.field private static final PREVIEW_LEFT_MARGIN:F

.field private static final PREVIEW_PORTRAIT_MARGIN:F

.field private static final PREVIEW_PORTRAIT_RIGHT_MARGIN:F

.field private static final PREVIEW_RATIO:F = 1.3333334f

.field private static final PREVIEW_TOP_MARGIN:F

.field private static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field private static final SCREEN_CROP_LANDSCAPE_HEIGHT:I

.field private static final SCREEN_CROP_PORTRAIT_BOTTOM_OFFSET_NORMAL:I

.field private static final SCREEN_CROP_PORTRAIT_OFFSET_NORMAL:I

.field private static final SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

.field private static final SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final STOP_BUTTON_DIAMETER:I

.field private static final STOP_BUTTON_POS_X:I

.field private static final STOP_BUTTON_POS_Y:I

.field protected static final TAG:Ljava/lang/String; = "WideSelfie"

.field private static final WARNINGTEXT_MOVE_SLOWLY:I = 0x4

.field private static final WARNINGTEXT_WARNING_DOWN:I = 0x1

.field private static final WARNINGTEXT_WARNING_LEFT:I = 0x2

.field private static final WARNINGTEXT_WARNING_RIGHT:I = 0x3

.field private static final WARNINGTEXT_WARNING_UP:I = 0x0

.field private static final WARNING_DOWN:I = 0x1

.field private static final WARNING_LEFT:I = 0x2

.field private static final WARNING_LEVEL_HIGH:I = 0x2

.field private static final WARNING_LEVEL_LOW:I = 0x1

.field private static final WARNING_LEVEL_NONE:I = 0x0

.field private static final WARNING_LEVEL_STOP:I = 0x3

.field private static final WARNING_NONE:I = 0x4

.field private static final WARNING_RIGHT:I = 0x3

.field private static final WARNING_UP:I = 0x0

.field private static final WIDE_SELFIE_ERROR_BLURED_RESULT_IMAGE:I = 0x4

.field private static final WIDE_SELFIE_ERROR_NO_DIRECTION:I = 0x1

.field private static final WIDE_SELFIE_ERROR_REACHED_MAX_FRAME_COUNT:I = 0x3

.field private static final WIDE_SELFIE_ERROR_STITCHING:I = 0x0

.field private static final WIDE_SELFIE_ERROR_TRACING:I = 0x2


# instance fields
.field private mAnimationDirection:Z

.field private mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

.field private mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCaptureCount:I

.field private mCaptureError:Z

.field private mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

.field private mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

.field private mChanged:Z

.field private mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

.field private mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

.field private mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

.field private mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

.field private mCurrentDirection:I

.field private mCurrentOrientation:I

.field private mDetectedDirection:I

.field private mEncodingProgress:Z

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mFocusRectCenterX:F

.field private mFocusRectCenterY:F

.field private mFocusRectLeft:F

.field private mFocusRectTop:F

.field private mGLContext:Lcom/samsung/android/glview/GLContext;

.field private mGuideArrow:[Lcom/samsung/android/glview/GLImage;

.field private mGuideBlinkingAnimation:Landroid/view/animation/Animation;

.field private mGuideRect:[Lcom/samsung/android/glview/GLImage;

.field private mGuideShow:Z

.field private mGuideState:I

.field private mGuideText:Lcom/samsung/android/glview/GLText;

.field private mHeight:F

.field private mIsCapturePreparing:Z

.field private mIsStartCapture:Z

.field private mIsWideSelfieCaptureStarted:Z

.field private mLeftBottomX:F

.field private mLeftBottomY:F

.field private mLeftTopX:F

.field private mLeftTopY:F

.field private mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

.field private mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mLivePreviewPortraitHeightMargin:F

.field private mLivePreviewRealThumbnailHeight:F

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mMovingDetection:Z

.field private mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

.field private mNextCaptureFocusRectCenterX:F

.field private mNextCaptureFocusRectCenterY:F

.field private mNextCaptureFocusRectLeft:F

.field private mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

.field private mNextCaptureFocusRectTop:F

.field private mNextCaptureFocusStep:I

.field private mPlayHaptic:Z

.field private mPostProgress:I

.field private mPrevFocusRectCenterX:F

.field private mPrevFocusRectCenterY:F

.field private mPrevThumbnailHeight:F

.field private mPrevThumbnailScaleFactor:F

.field private mPrevThumbnailWidth:F

.field private mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

.field private mPreviewThumbnailHeight:F

.field private mPreviewThumbnailLeft:F

.field private mPreviewThumbnailTop:F

.field private mPreviewThumbnailWidth:F

.field private mRightBottomX:F

.field private mRightBottomY:F

.field private mRightTopX:F

.field private mRightTopY:F

.field private mSkipCapture:Z

.field private mSkipCheckWarning:Z

.field private mSkipFrame:I

.field private mSkipFrameOnWideSelfie:Z

.field private mStartCheckWarning:Z

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

.field private mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

.field private mWarningArrow:[Lcom/samsung/android/glview/GLImage;

.field private mWarningBox:Lcom/samsung/android/glview/GLImage;

.field private mWarningText:Lcom/samsung/android/glview/GLText;

.field private mWideSelfieLowResolutionBitmap:Landroid/graphics/Bitmap;

.field protected mWideSelfieMsgHandler:Landroid/os/Handler;

.field private mWideSelfieWarning:Z

.field private mWidth:F

.field private misWideSelfieCapturing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x7f090148

    const/high16 v2, 0x40000000    # 2.0f

    const v1, 0x3faaaaab

    .line 76
    const v0, 0x7f090294

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_WIDTH:F

    .line 77
    const v0, 0x7f09028f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_HEIGHT:F

    .line 78
    const v0, 0x7f090293

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_POS_X:F

    .line 79
    const v0, 0x7f090291

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_X:F

    .line 80
    const v0, 0x7f090292

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_Y:F

    .line 81
    const v0, 0x7f0902eb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_SIZE:F

    .line 82
    const v0, 0x7f0a0023

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_STROKE_WIDTH:I

    .line 83
    const v0, 0x7f0c0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_STROKE_COLOR:I

    .line 84
    const v0, 0x7f0c001c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_FONT_COLOR:I

    .line 85
    const v0, 0x7f090289

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_MARGIN:F

    .line 86
    const v0, 0x7f090288

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    .line 87
    const v0, 0x7f090295

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    .line 88
    const v0, 0x7f090297

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    .line 89
    const v0, 0x7f090298

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    .line 90
    const v0, 0x7f09029a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    .line 91
    const v0, 0x7f09029b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    .line 92
    const v0, 0x7f09029c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    .line 93
    sget v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    mul-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 94
    sget v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 96
    sget v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 97
    sget v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    .line 99
    const v0, 0x7f09029d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 100
    const v0, 0x7f09029e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    .line 101
    sget v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_PORTRAIT_X:F

    .line 102
    const v0, 0x7f09028a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->BACKGROUND_RECT_PORTRAIT_X:F

    .line 103
    const v0, 0x7f09028b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->BACKGROUND_RECT_PORTRAIT_Y:F

    .line 104
    sget v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    .line 105
    sget v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    .line 106
    const v0, 0x7f0902a4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_TOP_MARGIN:F

    .line 107
    const v0, 0x7f0902a1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_LEFT_MARGIN:F

    .line 108
    const v0, 0x7f0902a2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_PORTRAIT_MARGIN:F

    .line 109
    const v0, 0x7f0902a3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_PORTRAIT_RIGHT_MARGIN:F

    .line 110
    const v0, 0x7f0902a0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    .line 111
    const v0, 0x7f09029f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    .line 118
    const v0, 0x7f090208

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->STOP_BUTTON_DIAMETER:I

    .line 119
    const v0, 0x7f09028c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_LANDSCAPE_HEIGHT:I

    .line 120
    const v0, 0x7f09028e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

    .line 121
    const v0, 0x7f09028d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_OFFSET_NORMAL:I

    .line 122
    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

    .line 123
    sget v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_OFFSET_NORMAL:I

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_BOTTOM_OFFSET_NORMAL:I

    .line 125
    const v0, 0x7f09020a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->STOP_BUTTON_POS_X:I

    .line 126
    const v0, 0x7f09020b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->STOP_BUTTON_POS_Y:I

    .line 145
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    .line 146
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_HEIGHT:I

    .line 147
    const v0, 0x7f0902a5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SCREEN_WIDTH:I

    .line 159
    const v0, 0x7f090290

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_HEIGHT:F

    .line 160
    const v0, 0x7f090296

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    .line 161
    const v0, 0x7f090299

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 162
    sget v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    .line 163
    sget v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .line 164
    sget v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    .line 165
    sget v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_Y:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 5
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    .line 167
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrame:I

    .line 168
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsCapturePreparing:Z

    .line 169
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    .line 170
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    .line 171
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCapture:Z

    .line 172
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureError:Z

    .line 173
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCheckWarning:Z

    .line 174
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    .line 175
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieCapturing:Z

    .line 176
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    .line 177
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPlayHaptic:Z

    .line 178
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrameOnWideSelfie:Z

    .line 179
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    .line 180
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    .line 181
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    .line 182
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    .line 183
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailWidth:F

    .line 184
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailHeight:F

    .line 185
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    .line 186
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    .line 187
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    .line 188
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    .line 189
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    .line 190
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterX:F

    .line 191
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterY:F

    .line 192
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    .line 193
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    .line 194
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    .line 195
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    .line 196
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    .line 197
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    .line 198
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    .line 199
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    .line 200
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    .line 201
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    .line 202
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 203
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 204
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 205
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 206
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z

    .line 207
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    .line 208
    new-array v0, v4, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    .line 209
    new-array v0, v4, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    .line 210
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningBox:Lcom/samsung/android/glview/GLImage;

    .line 211
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z

    .line 212
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    .line 213
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mChanged:Z

    .line 214
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    .line 215
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    .line 216
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideBlinkingAnimation:Landroid/view/animation/Animation;

    .line 217
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    .line 218
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideState:I

    .line 219
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 220
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 222
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPostProgress:I

    .line 224
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 225
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 226
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 227
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 228
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 229
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 230
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 232
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 233
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 234
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 235
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 236
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 238
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 239
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    .line 240
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    .line 241
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    .line 243
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectLeft:F

    .line 244
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectTop:F

    .line 245
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterX:F

    .line 246
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterY:F

    .line 248
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    .line 249
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    .line 250
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentDirection:I

    .line 252
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewRealThumbnailHeight:F

    .line 253
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewPortraitHeightMargin:F

    .line 255
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEncodingProgress:Z

    .line 257
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMovingDetection:Z

    .line 258
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    .line 332
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 355
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieLowResolutionBitmap:Landroid/graphics/Bitmap;

    .line 358
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 359
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 360
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setPostCaptureProgress(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/Engine;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHRMsensor(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setCaptureError(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideStopButton()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 72
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->cancelWideSelfieCapture()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideGuideText()V

    return-void
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCapture:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setSkipCheckWarning(Z)V

    return-void
.end method

.method private calcLivePreviewSize(FFFF)F
    .locals 4
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1155
    const/4 v0, 0x0

    .line 1156
    .local v0, "result":F
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 1169
    :goto_0
    return v0

    .line 1159
    :pswitch_0
    mul-float v1, v2, p1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, v2

    sub-float v2, p3, p1

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 1160
    goto :goto_0

    .line 1163
    :pswitch_1
    mul-float v1, v2, p2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, v2

    sub-float v2, p4, p2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 1164
    goto :goto_0

    .line 1156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private cancelWideSelfieCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1173
    const-string v0, "WideSelfie"

    const-string v1, "cancelCaptureForWideSelfie"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->waitForWideSelfieStartThreadComplete()V

    .line 1176
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-nez v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCurrentStateId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopPreview()V

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelWideSelfie()V

    .line 1186
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->unlockAEAWB()V

    .line 1188
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_1

    .line 1189
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 1191
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    .line 1193
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->startFaceDetection()V

    .line 1194
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartPreview()V

    .line 1196
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1197
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    .line 1199
    :cond_2
    return-void
.end method

.method private checkWarningDirection()I
    .locals 6

    .prologue
    const/4 v0, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 1202
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-nez v5, :cond_1

    .line 1271
    :cond_0
    :goto_0
    return v0

    .line 1205
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->getSkipCheckWarning()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1209
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne v5, v3, :cond_a

    .line 1210
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v3, :cond_6

    .line 1211
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-ne v2, v1, :cond_4

    .line 1212
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentDirection:I

    if-eq v1, v2, :cond_3

    move v0, v3

    .line 1213
    goto :goto_0

    .line 1214
    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterX:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    move v0, v4

    .line 1215
    goto :goto_0

    .line 1218
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    move v0, v4

    .line 1219
    goto :goto_0

    .line 1220
    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterX:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    move v0, v3

    .line 1221
    goto :goto_0

    .line 1225
    :cond_6
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-ne v2, v1, :cond_8

    .line 1226
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentDirection:I

    if-eq v1, v2, :cond_7

    move v0, v4

    .line 1227
    goto :goto_0

    .line 1228
    :cond_7
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterX:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    move v0, v3

    .line 1229
    goto :goto_0

    .line 1232
    :cond_8
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    move v0, v3

    .line 1233
    goto :goto_0

    .line 1234
    :cond_9
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterX:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    move v0, v4

    .line 1235
    goto :goto_0

    .line 1240
    :cond_a
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v4, v3, :cond_e

    .line 1241
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-ne v3, v1, :cond_c

    .line 1242
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentDirection:I

    if-eq v3, v4, :cond_b

    move v0, v1

    .line 1243
    goto :goto_0

    .line 1244
    :cond_b
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterY:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    move v0, v2

    .line 1245
    goto :goto_0

    .line 1248
    :cond_c
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_d

    move v0, v2

    .line 1249
    goto/16 :goto_0

    .line 1250
    :cond_d
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterY:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    .line 1251
    goto/16 :goto_0

    .line 1255
    :cond_e
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-ne v3, v1, :cond_10

    .line 1256
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentDirection:I

    if-eq v3, v4, :cond_f

    move v0, v2

    .line 1257
    goto/16 :goto_0

    .line 1258
    :cond_f
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterY:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    .line 1259
    goto/16 :goto_0

    .line 1262
    :cond_10
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_11

    move v0, v1

    .line 1263
    goto/16 :goto_0

    .line 1264
    :cond_11
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterY:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    move v0, v2

    .line 1265
    goto/16 :goto_0
.end method

.method private clearWideSelfieRect()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1275
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 1276
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1277
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1279
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLBitmapTexture;->clear()V

    .line 1280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 1283
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1286
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    .line 1287
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    .line 1288
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->resetTranslate()V

    .line 1289
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1291
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    .line 1292
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1294
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    .line 1295
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1297
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_5

    .line 1298
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1301
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_6

    .line 1302
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1305
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_7

    .line 1306
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1308
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarning()V

    .line 1309
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    .line 1310
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 1311
    return-void
.end method

.method private decodeRgbaBitmap([B)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "data"    # [B

    .prologue
    const/16 v8, 0x10

    const/4 v1, 0x0

    .line 1321
    if-eqz p1, :cond_0

    array-length v6, p1

    if-ge v6, v8, :cond_1

    .line 1322
    :cond_0
    const-string v6, "WideSelfie"

    const-string v7, "Util.decodeRgbaBitmap: Received null or invalid data"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :goto_0
    return-object v1

    .line 1327
    :cond_1
    const/4 v6, 0x0

    aget-byte v6, p1, v6

    const/16 v7, 0x52

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    aget-byte v6, p1, v6

    const/16 v7, 0x47

    if-ne v6, v7, :cond_2

    const/4 v6, 0x2

    aget-byte v6, p1, v6

    const/16 v7, 0x42

    if-ne v6, v7, :cond_2

    const/4 v6, 0x3

    aget-byte v6, p1, v6

    const/16 v7, 0x41

    if-eq v6, v7, :cond_3

    .line 1328
    :cond_2
    const-string v6, "WideSelfie"

    const-string v7, "Util.decodeRgbaBitmap: Data is invalid (RGBA tag not found)"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1334
    :cond_3
    const/4 v6, 0x4

    :try_start_0
    invoke-static {p1, v6}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v5

    .line 1335
    .local v5, "width":I
    const/16 v6, 0x8

    invoke-static {p1, v6}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1341
    .local v3, "height":I
    array-length v6, p1

    mul-int v7, v5, v3

    mul-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, 0x10

    if-ge v6, v7, :cond_4

    .line 1342
    const-string v6, "WideSelfie"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Util.decodeRgbaBitmap: The buffer is too small to contain a image of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1336
    .end local v3    # "height":I
    .end local v5    # "width":I
    :catch_0
    move-exception v2

    .line 1337
    .local v2, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v6, "WideSelfie"

    const-string v7, "Util.decodeRgbaBitmap: Could not parse panorama bitmap header"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1348
    .end local v2    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v3    # "height":I
    .restart local v5    # "width":I
    :cond_4
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1356
    .local v1, "bmp":Landroid/graphics/Bitmap;
    array-length v6, p1

    add-int/lit8 v6, v6, -0x10

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1357
    .local v0, "bbuf":Ljava/nio/ByteBuffer;
    array-length v6, p1

    add-int/lit8 v6, v6, -0x10

    invoke-virtual {v0, p1, v8, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1358
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1359
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 1360
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 1349
    .end local v0    # "bbuf":Ljava/nio/ByteBuffer;
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v4

    .line 1350
    .local v4, "oom":Ljava/lang/OutOfMemoryError;
    const-string v6, "WideSelfie"

    const-string v7, "Util.decodeRgbaBitmap: Out of memory [1]"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getCaptureError()Z
    .locals 1

    .prologue
    .line 1366
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureError:Z

    return v0
.end method

.method private declared-synchronized getCaptureProgressIncreased()I
    .locals 1

    .prologue
    .line 1374
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getFocusRectDistance()F
    .locals 3

    .prologue
    .line 1378
    const/4 v0, 0x0

    .line 1379
    .local v0, "distance":F
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 1389
    :goto_0
    return v0

    .line 1382
    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1383
    goto :goto_0

    .line 1386
    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterY:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    .line 1379
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getGuideDirection(I)I
    .locals 3
    .param p1, "step"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1393
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v0, :cond_2

    .line 1394
    if-ne p1, v1, :cond_1

    .line 1406
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1397
    goto :goto_0

    .line 1399
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v1, :cond_3

    .line 1400
    if-ne p1, v1, :cond_0

    move v0, v1

    .line 1401
    goto :goto_0

    .line 1406
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getNextFocusRectDistance()F
    .locals 2

    .prologue
    .line 1411
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1412
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterX:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    sub-float/2addr v0, v1

    .line 1414
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterY:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method private getSkipCheckWarning()Z
    .locals 1

    .prologue
    .line 1419
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCheckWarning:Z

    return v0
.end method

.method private hideCropArea()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1428
    const-string v0, "WideSelfie"

    const-string v1, "hideCropArea"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    if-nez v0, :cond_1

    .line 1436
    :cond_0
    :goto_0
    return-void

    .line 1432
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1433
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1434
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1435
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideGuideRect()V
    .locals 3

    .prologue
    .line 1439
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 1440
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1442
    :cond_0
    return-void
.end method

.method private hideGuideText()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1445
    const-string v0, "WideSelfie"

    const-string v1, "hideGuideText"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1448
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1452
    :cond_0
    return-void
.end method

.method private hideStopButton()V
    .locals 2

    .prologue
    .line 1455
    const-string v0, "WideSelfie"

    const-string v1, "hideStopButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1457
    return-void
.end method

.method private hideWarning()V
    .locals 2

    .prologue
    .line 1460
    const-string v0, "WideSelfie"

    const-string v1, "hideWarning"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningBox:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1462
    return-void
.end method

.method private hideWarningArrow()V
    .locals 5

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x4

    .line 1465
    const-string v1, "WideSelfie"

    const-string v2, "hideWarningArrow"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1467
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 1468
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1470
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 1471
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 1472
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1470
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1474
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_2

    .line 1475
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1474
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1477
    :cond_2
    return-void
.end method

.method private hideWarningText()V
    .locals 2

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1483
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    if-eqz v0, :cond_1

    .line 1484
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->changeColor(Z)V

    .line 1486
    :cond_1
    return-void
.end method

.method private isMaxPositionReached(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1489
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 1537
    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    move v0, v1

    .line 1538
    :goto_0
    return v0

    .line 1492
    :pswitch_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v3, :cond_2

    .line 1493
    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 1494
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    if-nez v2, :cond_1

    .line 1495
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1498
    goto :goto_0

    .line 1501
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v0, :cond_0

    .line 1502
    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v2, p1

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 1503
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    if-nez v2, :cond_3

    .line 1504
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1507
    goto :goto_0

    .line 1514
    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v3, :cond_5

    .line 1515
    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    add-float/2addr v2, p2

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 1516
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    if-nez v2, :cond_4

    .line 1517
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1520
    goto :goto_0

    .line 1523
    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v0, :cond_0

    .line 1524
    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    .line 1525
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    if-nez v2, :cond_6

    .line 1526
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    goto :goto_0

    :cond_6
    move v0, v1

    .line 1529
    goto :goto_0

    .line 1489
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isMenuOpened()Z
    .locals 2

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1543
    :cond_0
    const/4 v0, 0x1

    .line 1545
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNextFocusRectBoundary()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1549
    const/high16 v0, 0x40000000    # 2.0f

    .line 1550
    .local v0, "BOUNDARY":F
    const/4 v1, 0x0

    .line 1551
    .local v1, "gap":F
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v3, :pswitch_data_0

    .line 1567
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1554
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getCurrentLeft()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1555
    cmpg-float v3, v1, v0

    if-gtz v3, :cond_0

    goto :goto_0

    .line 1561
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentTop()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getCurrentTop()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1562
    cmpg-float v3, v1, v0

    if-gtz v3, :cond_0

    goto :goto_0

    .line 1551
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized isReadyToCapture()Z
    .locals 1

    .prologue
    .line 1578
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;
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

.method private isRectGuideVisible()Z
    .locals 2

    .prologue
    .line 1582
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 1583
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v1

    if-nez v1, :cond_0

    .line 1584
    const/4 v1, 0x1

    .line 1586
    :goto_1
    return v1

    .line 1582
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1586
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private declared-synchronized onLivePreviewData([B)V
    .locals 14
    .param p1, "data"    # [B

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 1590
    monitor-enter p0

    const/4 v6, 0x0

    .line 1591
    .local v6, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->decodeRgbaBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1592
    if-nez v6, :cond_1

    .line 1593
    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to RGBA Data Creation Failed. mCaptureCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1719
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1597
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrameOnWideSelfie:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrame:I

    if-ge v0, v1, :cond_2

    .line 1598
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    .line 1599
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrame:I

    .line 1600
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrame:I

    if-ne v0, v1, :cond_0

    .line 1601
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    .line 1602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrameOnWideSelfie:Z

    .line 1603
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrame:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1590
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1608
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-nez v0, :cond_5

    .line 1609
    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v6, v0, v1}, Lcom/sec/android/app/camera/util/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z

    .line 1619
    :cond_4
    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailWidth:F

    .line 1620
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailHeight:F

    .line 1622
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setPreviewThumbnailSize(II)V

    .line 1624
    const/4 v8, 0x0

    .local v8, "left":F
    const/4 v10, 0x0

    .local v10, "top":F
    const/4 v11, 0x0

    .local v11, "width":F
    const/4 v7, 0x0

    .line 1626
    .local v7, "height":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 1674
    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLivePreviewData : invalid orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1612
    .end local v7    # "height":F
    .end local v8    # "left":F
    .end local v10    # "top":F
    .end local v11    # "width":F
    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-eqz v0, :cond_4

    .line 1613
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eq v0, v2, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    if-eq v0, v2, :cond_6

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 1615
    :cond_6
    const/16 v0, 0xb4

    const/4 v1, 0x0

    invoke-static {v6, v0, v1}, Lcom/sec/android/app/camera/util/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1

    .line 1629
    .restart local v7    # "height":F
    .restart local v8    # "left":F
    .restart local v10    # "top":F
    .restart local v11    # "width":F
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-gt v0, v2, :cond_d

    .line 1630
    sget v11, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1631
    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1632
    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    .line 1633
    const/4 v10, 0x0

    .line 1678
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1679
    iget-object v12, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    monitor-enter v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1680
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_8

    .line 1681
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1682
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLBitmapTexture;->clear()V

    .line 1684
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_9

    .line 1685
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1686
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->clear()V

    .line 1688
    :cond_9
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v2, v8

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v3, v10

    const/high16 v4, 0x40000000    # 2.0f

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v4, v5

    sub-float v4, v11, v4

    const/high16 v5, 0x40000000    # 2.0f

    sget v13, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v5, v13

    sub-float v5, v7, v5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 1690
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1692
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v0, :cond_12

    .line 1693
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 1694
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1696
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isRectGuideVisible()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1697
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieCapturing:Z

    if-eqz v0, :cond_11

    .line 1698
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1699
    const/16 v0, 0x8

    new-array v9, v0, [F

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    aput v1, v9, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    aput v1, v9, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    aput v1, v9, v0

    const/4 v0, 0x3

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    aput v1, v9, v0

    const/4 v0, 0x4

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    aput v1, v9, v0

    const/4 v0, 0x5

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    aput v1, v9, v0

    const/4 v0, 0x6

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    aput v1, v9, v0

    const/4 v0, 0x7

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    aput v1, v9, v0

    .line 1700
    .local v9, "point":[F
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    invoke-virtual {v0, v1, v2, v9}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setRect(FF[F)V

    .line 1701
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 1714
    .end local v9    # "point":[F
    :cond_b
    :goto_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mChanged:Z

    if-eqz v0, :cond_c

    .line 1715
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->refreshBackgroundRect()V

    .line 1717
    :cond_c
    monitor-exit v12

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 1635
    :cond_d
    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    .line 1636
    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1637
    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    .line 1638
    const/4 v10, 0x0

    .line 1639
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v0, v3, :cond_e

    .line 1640
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 1641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z

    goto/16 :goto_2

    .line 1643
    :cond_e
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v0, v2, :cond_7

    .line 1644
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 1645
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z

    goto/16 :goto_2

    .line 1652
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-gt v0, v2, :cond_f

    .line 1653
    sget v11, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 1654
    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    .line 1655
    const/4 v8, 0x0

    .line 1656
    sget v10, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    goto/16 :goto_2

    .line 1658
    :cond_f
    sget v11, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 1659
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    .line 1660
    const/4 v8, 0x0

    .line 1661
    iget v10, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    .line 1662
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v0, v3, :cond_10

    .line 1663
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 1664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z

    goto/16 :goto_2

    .line 1666
    :cond_10
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v0, v2, :cond_7

    .line 1667
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 1668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 1703
    :cond_11
    :try_start_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_3

    .line 1707
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_13

    .line 1708
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1710
    :cond_13
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v2, 0x7f02012b

    invoke-direct {v0, v1, v8, v10, v2}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 1711
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v11, v7}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1712
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_3

    .line 1626
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onWideDirectionChanged(I)V
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1722
    const-string v2, "WideSelfie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWideDirectionChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentDirection:I

    .line 1725
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-nez v2, :cond_1

    .line 1778
    :cond_0
    :goto_0
    return-void

    .line 1727
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mChanged:Z

    if-nez v2, :cond_2

    .line 1728
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-eq v2, p1, :cond_2

    .line 1729
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mChanged:Z

    .line 1731
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    .line 1735
    :cond_2
    if-eqz p1, :cond_0

    .line 1736
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-nez v2, :cond_0

    .line 1737
    const/4 v1, 0x0

    .local v1, "width":F
    const/4 v0, 0x0

    .line 1738
    .local v0, "height":F
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 1750
    :goto_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-eq v2, p1, :cond_4

    .line 1751
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    .line 1752
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    .line 1754
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 1755
    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v6, :cond_5

    .line 1756
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 1757
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    .line 1772
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningBox:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1773
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1774
    const-string v2, "WideSelfie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWideDirectionChanged: mDetectedDirection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showStopButton()V

    goto :goto_0

    .line 1741
    :pswitch_0
    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1742
    sget v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1743
    goto :goto_1

    .line 1746
    :pswitch_1
    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 1747
    sget v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    goto :goto_1

    .line 1758
    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v5, :cond_4

    .line 1759
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 1760
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_2

    .line 1763
    :cond_6
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v6, :cond_7

    .line 1764
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 1765
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_2

    .line 1766
    :cond_7
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v5, :cond_4

    .line 1767
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 1768
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_2

    .line 1738
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private prepareWarningArrow(I)V
    .locals 8
    .param p1, "warningLevel"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 1781
    if-ne p1, v6, :cond_3

    .line 1782
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1784
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    .line 1787
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_1

    .line 1788
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1789
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1790
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 1791
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 1794
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    if-nez v0, :cond_2

    .line 1795
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1796
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1797
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1798
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1799
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1800
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1801
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1802
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1803
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1804
    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    .line 1828
    :cond_2
    :goto_0
    return-void

    .line 1806
    :cond_3
    if-ne p1, v4, :cond_5

    .line 1807
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1808
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1809
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    .line 1812
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    if-nez v0, :cond_2

    .line 1813
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1814
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1815
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1816
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1817
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1818
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1819
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1820
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1821
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1822
    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    goto :goto_0

    .line 1825
    :cond_5
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    .line 1826
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfieSound()V

    goto :goto_0
.end method

.method private refreshBackgroundRect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1831
    const/4 v0, 0x0

    .line 1832
    .local v0, "mAmountDelta":F
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-nez v1, :cond_2

    .line 1833
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 1834
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v3, :cond_1

    .line 1835
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLBitmapTexture;->getRight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getCurrentLeft()F

    move-result v3

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    .line 1875
    :cond_0
    :goto_0
    return-void

    .line 1836
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    .line 1837
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLBitmapTexture;->getCurrentLeft()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getCurrentLeft()F

    move-result v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v0, v1, v2

    .line 1838
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    .line 1839
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    goto :goto_0

    .line 1842
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne v1, v4, :cond_4

    .line 1843
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 1844
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v3, :cond_3

    .line 1845
    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    add-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1846
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    .line 1847
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    goto :goto_0

    .line 1848
    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    .line 1849
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getCurrentRight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLBitmapTexture;->getCurrentLeft()F

    move-result v3

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    goto :goto_0

    .line 1852
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne v1, v3, :cond_6

    .line 1853
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailHeight:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 1854
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v3, :cond_5

    .line 1855
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    .line 1856
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    .line 1857
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 1858
    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    .line 1859
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    add-float v0, v1, v2

    .line 1860
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    goto/16 :goto_0

    .line 1863
    :cond_6
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1864
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailHeight:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 1865
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v3, :cond_7

    .line 1866
    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    sub-float v0, v1, v2

    .line 1867
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    goto/16 :goto_0

    .line 1868
    :cond_7
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    .line 1869
    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    add-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1870
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    .line 1871
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    goto/16 :goto_0
.end method

.method private refreshLivePreviewPosition()V
    .locals 14

    .prologue
    const/4 v13, 0x7

    const/4 v12, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    .line 1878
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-nez v7, :cond_1

    .line 1971
    :cond_0
    :goto_0
    return-void

    .line 1882
    :cond_1
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v7, :cond_3

    .line 1883
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPlayHaptic:Z

    if-eqz v7, :cond_2

    .line 1884
    const/16 v7, 0x8

    new-array v5, v7, [F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    aput v7, v5, v10

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    aput v7, v5, v12

    const/4 v7, 0x2

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    aput v8, v5, v7

    const/4 v7, 0x3

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    aput v8, v5, v7

    const/4 v7, 0x4

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    aput v8, v5, v7

    const/4 v7, 0x5

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    aput v8, v5, v7

    const/4 v7, 0x6

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    aput v8, v5, v7

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    aput v7, v5, v13

    .line 1885
    .local v5, "point":[F
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    invoke-virtual {v7, v8, v9, v5}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setRect(FF[F)V

    .line 1886
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v7, v10}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 1888
    .end local v5    # "point":[F
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 1889
    invoke-direct {p0, v10}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    .line 1892
    :cond_3
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 1895
    :pswitch_0
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v7, :cond_4

    move v3, v6

    .line 1896
    .local v3, "TOP_MARGIN":F
    :goto_1
    const/4 v0, 0x0

    .line 1898
    .local v0, "LEFT_MARGIN":F
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-ne v7, v12, :cond_7

    .line 1899
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v13, :cond_5

    .line 1900
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v7, v7, v4

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    sget v9, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8, v6}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1899
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1895
    .end local v0    # "LEFT_MARGIN":F
    .end local v3    # "TOP_MARGIN":F
    .end local v4    # "i":I
    :cond_4
    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_TOP_MARGIN:F

    goto :goto_1

    .line 1902
    .restart local v0    # "LEFT_MARGIN":F
    .restart local v3    # "TOP_MARGIN":F
    .restart local v4    # "i":I
    :cond_5
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    mul-float/2addr v6, v11

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    add-float/2addr v6, v7

    sput v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    .line 1903
    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v11

    sput v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    .line 1904
    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v6, v7

    sput v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    .line 1911
    .end local v4    # "i":I
    :cond_6
    :goto_3
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1912
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    add-float/2addr v7, v0

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    add-float/2addr v8, v3

    invoke-virtual {v6, v10, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1913
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6, v10}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 1915
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1916
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    add-float/2addr v7, v0

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    add-float/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 1917
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1919
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1920
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    add-float/2addr v7, v0

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    add-float/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    .line 1922
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1923
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_POS_X:F

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    .line 1925
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1926
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_POS_X:F

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 1905
    :cond_7
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-nez v6, :cond_6

    .line 1906
    const v6, 0x7f090296

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    sput v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    .line 1907
    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v11

    sput v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    .line 1908
    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v6, v7

    sput v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    goto/16 :goto_3

    .line 1930
    .end local v0    # "LEFT_MARGIN":F
    .end local v3    # "TOP_MARGIN":F
    :pswitch_1
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v7, :cond_8

    move v1, v6

    .line 1931
    .local v1, "PORT_MARGIN":F
    :goto_4
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v7, :cond_9

    move v2, v6

    .line 1933
    .local v2, "PORT_RIGHT_MARGIN":F
    :goto_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setPortraitModePosition()V

    .line 1935
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-ne v7, v12, :cond_c

    .line 1936
    const/4 v4, 0x7

    .restart local v4    # "i":I
    :goto_6
    const/16 v7, 0xe

    if-ge v4, v7, :cond_a

    .line 1937
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v7, v7, v4

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    sget v9, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v6, v8}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1936
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1930
    .end local v1    # "PORT_MARGIN":F
    .end local v2    # "PORT_RIGHT_MARGIN":F
    .end local v4    # "i":I
    :cond_8
    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_PORTRAIT_MARGIN:F

    goto :goto_4

    .line 1931
    .restart local v1    # "PORT_MARGIN":F
    :cond_9
    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_PORTRAIT_RIGHT_MARGIN:F

    goto :goto_5

    .line 1939
    .restart local v2    # "PORT_RIGHT_MARGIN":F
    .restart local v4    # "i":I
    :cond_a
    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    mul-float/2addr v8, v11

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewPortraitHeightMargin:F

    .line 1940
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    mul-float/2addr v7, v11

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    add-float/2addr v7, v8

    sput v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 1941
    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v11

    sput v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .line 1942
    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v7, v8

    sput v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_Y:F

    .line 1950
    .end local v4    # "i":I
    :cond_b
    :goto_7
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1951
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    add-float/2addr v8, v1

    sget v9, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v9, v2

    invoke-virtual {v7, v10, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1952
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7, v10}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 1954
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v9, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1955
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->BACKGROUND_RECT_PORTRAIT_X:F

    add-float/2addr v8, v1

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewPortraitHeightMargin:F

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->BACKGROUND_RECT_PORTRAIT_Y:F

    add-float/2addr v9, v2

    iget v10, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewPortraitHeightMargin:F

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 1958
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v9, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1960
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1961
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    add-float/2addr v8, v1

    sget v9, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_Y:F

    add-float/2addr v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    .line 1963
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_HEIGHT:F

    sget v9, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1964
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_X:F

    sub-float v8, v6, v8

    sget v9, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_Y:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    .line 1966
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_HEIGHT:F

    sget v9, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1967
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_X:F

    sub-float/2addr v6, v8

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_Y:F

    invoke-virtual {v7, v6, v8}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 1943
    :cond_c
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-nez v7, :cond_b

    .line 1944
    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewPortraitHeightMargin:F

    .line 1945
    const v7, 0x7f090299

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    sput v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 1946
    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v11

    sput v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .line 1947
    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v7, v8

    sput v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_Y:F

    goto/16 :goto_7

    .line 1892
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1974
    const-string v0, "WideSelfie"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    .line 1978
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieCapturing:Z

    .line 1979
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    .line 1980
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCapture:Z

    .line 1981
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCheckWarning:Z

    .line 1982
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mChanged:Z

    .line 1983
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPostProgress:I

    .line 1984
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    .line 1985
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentDirection:I

    .line 1986
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    .line 1987
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailWidth:F

    .line 1988
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailHeight:F

    .line 1989
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEncodingProgress:Z

    .line 1990
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMovingDetection:Z

    .line 1991
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsCapturePreparing:Z

    .line 1993
    monitor-enter p0

    .line 1994
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    .line 1995
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1997
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    .line 1998
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopCancelTimer()V

    .line 1999
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfieSound()V

    .line 2001
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2002
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2005
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_1

    .line 2006
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 2007
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 2008
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 2010
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideState:I

    .line 2011
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideStopButton()V

    .line 2012
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setPreviewThumbnailSizeToDefault()V

    .line 2014
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->resetTrapezoid()V

    .line 2015
    return-void

    .line 1995
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private resetTrapezoid()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2018
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    .line 2019
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    .line 2020
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    .line 2021
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    .line 2022
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    .line 2023
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    .line 2024
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    .line 2025
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    .line 2026
    return-void
.end method

.method private restartCancelTimer()V
    .locals 2

    .prologue
    .line 2029
    const-string v0, "WideSelfie"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopCancelTimer()V

    .line 2031
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->startCancelTimer()V

    .line 2032
    return-void
.end method

.method private setCaptureError(Z)V
    .locals 0
    .param p1, "error"    # Z

    .prologue
    .line 1370
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureError:Z

    .line 1371
    return-void
.end method

.method private setDelayedSkipCapture()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    .line 2035
    const-string v0, "WideSelfie"

    const-string v1, "setDelayedSkipCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2037
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCapture:Z

    .line 2038
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2039
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2041
    :cond_0
    return-void
.end method

.method private setEncodingProgress(Z)V
    .locals 0
    .param p1, "bEncoding"    # Z

    .prologue
    .line 2044
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEncodingProgress:Z

    .line 2045
    return-void
.end method

.method private setFocusRectLeftTop(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 2048
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterX:F

    .line 2049
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterY:F

    .line 2050
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v4, p1

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    .line 2051
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    .line 2053
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v4, :pswitch_data_0

    .line 2069
    :goto_0
    return-void

    .line 2056
    :pswitch_0
    iget-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v4, :cond_0

    .line 2057
    .local v3, "TOP_MARGIN":F
    :goto_1
    const/4 v0, 0x0

    .line 2058
    .local v0, "LEFT_MARGIN":F
    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    add-float/2addr v4, v5

    add-float/2addr v4, v0

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    .line 2059
    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    add-float/2addr v4, v5

    add-float/2addr v4, v3

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    goto :goto_0

    .line 2056
    .end local v0    # "LEFT_MARGIN":F
    .end local v3    # "TOP_MARGIN":F
    :cond_0
    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_TOP_MARGIN:F

    goto :goto_1

    .line 2063
    :pswitch_1
    iget-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v4, :cond_1

    move v1, v3

    .line 2064
    .local v1, "PORT_MARGIN":F
    :goto_2
    iget-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v4, :cond_2

    move v2, v3

    .line 2065
    .local v2, "PORT_RIGHT_MARGIN":F
    :goto_3
    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    add-float/2addr v4, v5

    add-float/2addr v4, v1

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    .line 2066
    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    goto :goto_0

    .line 2063
    .end local v1    # "PORT_MARGIN":F
    .end local v2    # "PORT_RIGHT_MARGIN":F
    :cond_1
    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_PORTRAIT_MARGIN:F

    goto :goto_2

    .line 2064
    .restart local v1    # "PORT_MARGIN":F
    :cond_2
    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_PORTRAIT_RIGHT_MARGIN:F

    goto :goto_3

    .line 2053
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setHRMsensor(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 2072
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Z

    if-eqz v0, :cond_0

    .line 2073
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2074
    if-eqz p1, :cond_1

    .line 2075
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V

    .line 2081
    :cond_0
    :goto_0
    return-void

    .line 2077
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHRMShutterListener()V

    goto :goto_0
.end method

.method private setHapticEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2084
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPlayHaptic:Z

    .line 2085
    return-void
.end method

.method private setPortraitModePosition()V
    .locals 2

    .prologue
    .line 2088
    const v0, 0x7f090299

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 2089
    sget v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .line 2090
    sget v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_Y:F

    .line 2091
    const v0, 0x7f090290

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_HEIGHT:F

    .line 2092
    return-void
.end method

.method private declared-synchronized setPostCaptureProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 2095
    monitor-enter p0

    :try_start_0
    const-string v0, "WideSelfie"

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

    .line 2096
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPostProgress:I

    .line 2097
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2098
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideStopButton()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2100
    :cond_0
    monitor-exit p0

    return-void

    .line 2095
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setPreviewThumbnailLeftTop(FFFF)V
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/4 v1, 0x0

    .line 2103
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 2119
    :goto_0
    return-void

    .line 2106
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    .line 2107
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    goto :goto_0

    .line 2111
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewRealThumbnailHeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->calcLivePreviewSize(FFFF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewRealThumbnailHeight:F

    .line 2114
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewRealThumbnailHeight:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, p4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    goto :goto_0

    .line 2103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setPreviewThumbnailSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2122
    int-to-float v0, p1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    .line 2123
    int-to-float v0, p2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    .line 2124
    return-void
.end method

.method private setPreviewThumbnailSizeToDefault()V
    .locals 1

    .prologue
    .line 2127
    sget v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    .line 2128
    sget v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    .line 2129
    return-void
.end method

.method private setSkipCheckWarning(Z)V
    .locals 0
    .param p1, "isSkip"    # Z

    .prologue
    .line 1423
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCheckWarning:Z

    .line 1424
    return-void
.end method

.method private setStartCapture(Z)V
    .locals 2
    .param p1, "isStart"    # Z

    .prologue
    .line 2132
    const-string v0, "WideSelfie"

    const-string v1, "setStartCapture()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    .line 2134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsCapturePreparing:Z

    .line 2135
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v0, :cond_0

    .line 2136
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    .line 2137
    :cond_0
    return-void
.end method

.method private setTrapezoidPosition(FFFFFFFF)V
    .locals 6
    .param p1, "leftTopX"    # F
    .param p2, "leftTopY"    # F
    .param p3, "rightTopX"    # F
    .param p4, "rightTopY"    # F
    .param p5, "rightBottomX"    # F
    .param p6, "rightBottomY"    # F
    .param p7, "leftBottomX"    # F
    .param p8, "leftBottomY"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 2140
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 2173
    :goto_0
    return-void

    .line 2143
    :pswitch_0
    const-string v2, "WideSelfie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFocusRectCenterX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mFocusRectCenterY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    div-float/2addr v3, v5

    add-float v0, v2, v3

    .line 2145
    .local v0, "centerX":F
    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    div-float/2addr v3, v5

    add-float v1, v2, v3

    .line 2146
    .local v1, "centerY":F
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    .line 2147
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    .line 2148
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p3

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    .line 2149
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p4

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    .line 2150
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p5

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    .line 2151
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p6

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    .line 2152
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p7

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    .line 2153
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p8

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    .line 2154
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_1
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    .line 2155
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_2
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    goto/16 :goto_0

    .line 2154
    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_1

    .line 2155
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_2

    .line 2159
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    :pswitch_1
    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    div-float/2addr v3, v5

    add-float v0, v2, v3

    .line 2160
    .restart local v0    # "centerX":F
    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    div-float/2addr v3, v5

    add-float v1, v2, v3

    .line 2161
    .restart local v1    # "centerY":F
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    .line 2162
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    .line 2163
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p3

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    .line 2164
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p4

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    .line 2165
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p5

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    .line 2166
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p6

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    .line 2167
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p7

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    .line 2168
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p8

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    .line 2169
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_3
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    .line 2170
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_4
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    goto/16 :goto_0

    .line 2169
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_3

    .line 2170
    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_4

    .line 2140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showCropArea(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 2177
    const-string v0, "WideSelfie"

    const-string v1, "showCropArea"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    if-nez v0, :cond_1

    .line 2179
    :cond_0
    const-string v0, "WideSelfie"

    const-string v1, "return, because some cropArea is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    :goto_0
    return-void

    .line 2182
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2185
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2186
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2187
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2188
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_0

    .line 2192
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2193
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2194
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2195
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_0

    .line 2182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showGuideArrow(I)V
    .locals 11
    .param p1, "state"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 2201
    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-nez v3, :cond_1

    .line 2498
    :cond_0
    :goto_0
    return-void

    .line 2204
    :cond_1
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideState:I

    if-eq v3, p1, :cond_0

    .line 2207
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideState:I

    .line 2208
    const/4 v0, 0x0

    .line 2209
    .local v0, "arrow_x":F
    const/4 v1, 0x0

    .line 2210
    .local v1, "arrow_y":F
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v3, :cond_2

    .line 2211
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 2212
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2213
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 2214
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v9}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 2217
    :cond_2
    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v3, :cond_3

    .line 2218
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 2219
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x46

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2220
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v8}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 2221
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v9}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 2222
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$4;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2395
    :cond_3
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2398
    :pswitch_0
    if-ne p1, v8, :cond_4

    .line 2399
    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    div-float/2addr v4, v10

    sub-float v0, v3, v4

    .line 2400
    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v1, v3, v4

    .line 2401
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    .line 2403
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2405
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2406
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2407
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2408
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2409
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2410
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2412
    :cond_4
    if-ne p1, v9, :cond_5

    .line 2413
    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    div-float/2addr v4, v10

    sub-float v0, v3, v4

    .line 2414
    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v1, v3, v4

    .line 2415
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    .line 2417
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2419
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2420
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2421
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2422
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2423
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2424
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2425
    :cond_5
    if-nez p1, :cond_0

    .line 2426
    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    div-float/2addr v4, v10

    sub-float v0, v3, v4

    .line 2427
    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v1, v3, v4

    .line 2428
    iput-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z

    .line 2429
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    .line 2430
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v3, :cond_6

    .line 2431
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2432
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2434
    :cond_6
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V

    .line 2435
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x7

    if-ge v2, v3, :cond_7

    .line 2436
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2435
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2438
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2440
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2441
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2446
    .end local v2    # "i":I
    :pswitch_1
    if-ne p1, v8, :cond_8

    .line 2447
    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_MARGIN:F

    add-float v0, v3, v4

    .line 2448
    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v10

    add-float v1, v3, v4

    .line 2449
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    .line 2451
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2453
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2454
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2455
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2456
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2457
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2458
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2459
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2461
    :cond_8
    if-ne p1, v9, :cond_9

    .line 2462
    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_MARGIN:F

    add-float v0, v3, v4

    .line 2463
    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v10

    add-float v1, v3, v4

    .line 2464
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    .line 2466
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2468
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2469
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2470
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2471
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2472
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2473
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2474
    :cond_9
    if-nez p1, :cond_0

    .line 2475
    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_MARGIN:F

    add-float v0, v3, v4

    .line 2476
    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v10

    add-float v1, v3, v4

    .line 2477
    iput-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z

    .line 2478
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    .line 2479
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v3, :cond_a

    .line 2480
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2481
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2482
    const-string v3, "WideSelfie"

    const-string v4, "mCaptureFocusRect is INVISIBLE 1"

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    :cond_a
    const/4 v2, 0x7

    .restart local v2    # "i":I
    :goto_2
    const/16 v3, 0xe

    if-ge v2, v3, :cond_b

    .line 2485
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2484
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2487
    :cond_b
    const/4 v2, 0x7

    :goto_3
    const/16 v3, 0xe

    if-ge v2, v3, :cond_c

    .line 2488
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewPortraitHeightMargin:F

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2487
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2490
    :cond_c
    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V

    .line 2491
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2492
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2493
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2395
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showGuideRect(I)V
    .locals 3
    .param p1, "num"    # I

    .prologue
    .line 2501
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMovingDetection:Z

    if-eqz v1, :cond_0

    .line 2508
    :goto_0
    return-void

    .line 2504
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 2505
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2504
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2507
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private showGuideText(I)V
    .locals 5
    .param p1, "guideType"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 2511
    const-string v0, "WideSelfie"

    const-string v1, "showGuideText"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPostProgress:I

    if-nez v0, :cond_1

    .line 2513
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2514
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2516
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2532
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 2533
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2534
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2535
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2538
    :cond_1
    return-void

    .line 2518
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    .line 2519
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080213

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2522
    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    .line 2523
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080214

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2526
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    .line 2527
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080215

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2516
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showNextCaptureFocusRect()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 2541
    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showNextCaptureFocusRect left : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectLeft:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectTop:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-nez v0, :cond_0

    .line 2564
    :goto_0
    return-void

    .line 2545
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 2546
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 2548
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2551
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2552
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectLeft:F

    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2553
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0

    .line 2557
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2558
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_PORTRAIT_X:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectTop:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2559
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0

    .line 2548
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showPreviewGroup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2567
    const-string v0, "WideSelfie"

    const-string v1, "showPreviewGroup"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2570
    const-string v0, "WideSelfie"

    const-string v1, "showPreviewGroup, isMenuOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    :cond_0
    :goto_0
    return-void

    .line 2574
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->refreshLivePreviewPosition()V

    .line 2575
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    .line 2576
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2578
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 2579
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private showStopButton()V
    .locals 2

    .prologue
    .line 2584
    const-string v0, "WideSelfie"

    const-string v1, "showStopButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 2586
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2587
    return-void
.end method

.method private showWarningArrow(FFI)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "direction"    # I

    .prologue
    const/16 v2, 0xe

    const/4 v3, 0x4

    .line 2591
    if-ne p3, v3, :cond_0

    .line 2612
    :goto_0
    return-void

    .line 2594
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, p3

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2595
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 2596
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2595
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2598
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    .line 2599
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 2600
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2598
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2603
    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_4

    .line 2604
    if-ne v0, p3, :cond_3

    .line 2605
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2603
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2607
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_4

    .line 2610
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideGuideText()V

    .line 2611
    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningText(I)V

    goto :goto_0
.end method

.method private showWarningText(I)V
    .locals 6
    .param p1, "warningType"    # I

    .prologue
    const v5, 0x7f08021c

    const v4, 0x7f08021a

    const v3, 0x7f080219

    const v2, 0x7f080218

    const/4 v1, 0x2

    .line 2615
    packed-switch p1, :pswitch_data_0

    .line 2646
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2647
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->changeColor(Z)V

    .line 2648
    return-void

    .line 2617
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne v0, v1, :cond_1

    .line 2618
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2620
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2623
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne v0, v1, :cond_3

    .line 2624
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2626
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2629
    :pswitch_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne v0, v1, :cond_5

    .line 2630
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2632
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2635
    :pswitch_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne v0, v1, :cond_7

    .line 2636
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2638
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2641
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08021b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2615
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private showWideSelfieToastPopup(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    const/4 v2, 0x1

    .line 2652
    packed-switch p1, :pswitch_data_0

    .line 2666
    :goto_0
    :pswitch_0
    return-void

    .line 2654
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f08015e

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2657
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f080216

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2660
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f080212

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2663
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f080211

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2652
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private startCancelTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2669
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2670
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2672
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2673
    return-void
.end method

.method private stopCancelTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2676
    const-string v0, "WideSelfie"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2678
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2680
    :cond_0
    return-void
.end method

.method private stopWideSelfie()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2683
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsCapturePreparing:Z

    if-eqz v2, :cond_1

    .line 2711
    :cond_0
    :goto_0
    return v0

    .line 2685
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setCaptureError(Z)V

    .line 2686
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    .line 2689
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->getCaptureProgressIncreased()I

    move-result v2

    if-lez v2, :cond_2

    .line 2690
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfieCapture()V

    .line 2691
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showCropArea(I)V

    goto :goto_0

    .line 2693
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-nez v2, :cond_6

    .line 2694
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2695
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShutterTimer()V

    .line 2696
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->startFaceDetection()V

    .line 2697
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 2698
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    .line 2708
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    goto :goto_0

    .line 2701
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    .line 2702
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    .line 2703
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchToCaptureStarted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2704
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setTouchToCaptureStarted(Z)V

    .line 2706
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->cancelWideSelfieCapture()V

    goto :goto_1

    :cond_6
    move v0, v1

    .line 2711
    goto :goto_0
.end method

.method private stopWideSelfieCapture()V
    .locals 1

    .prologue
    .line 2719
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    .line 2720
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    .line 2721
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_0

    .line 2722
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopWideSelfie()V

    .line 2723
    :cond_0
    return-void
.end method

.method private stopWideSelfieSound()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 2726
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2728
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2729
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2732
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_2

    .line 2733
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(I)V

    .line 2735
    :cond_2
    return-void
.end method

.method private wideSelfieRectChanged([B)V
    .locals 40
    .param p1, "data"    # [B

    .prologue
    .line 2738
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v17

    .line 2739
    .local v17, "nLeft":I
    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v29

    .line 2740
    .local v29, "nTop":I
    const/16 v4, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v24

    .line 2741
    .local v24, "nRight":I
    const/16 v4, 0xc

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v16

    .line 2742
    .local v16, "nBottom":I
    const/16 v4, 0x10

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v22

    .line 2743
    .local v22, "nOffsetX":I
    const/16 v4, 0x14

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v23

    .line 2744
    .local v23, "nOffsetY":I
    const/16 v4, 0x18

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v20

    .line 2745
    .local v20, "nLeftTopX":I
    const/16 v4, 0x1c

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v21

    .line 2746
    .local v21, "nLeftTopY":I
    const/16 v4, 0x20

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v27

    .line 2747
    .local v27, "nRightTopX":I
    const/16 v4, 0x24

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v28

    .line 2748
    .local v28, "nRightTopY":I
    const/16 v4, 0x28

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v18

    .line 2749
    .local v18, "nLeftBottomX":I
    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v19

    .line 2750
    .local v19, "nLeftBottomY":I
    const/16 v4, 0x30

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v25

    .line 2751
    .local v25, "nRightBottomX":I
    const/16 v4, 0x34

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v26

    .line 2752
    .local v26, "nRightBottomY":I
    const/16 v31, 0x0

    .line 2753
    .local v31, "rect_x":F
    const/16 v32, 0x0

    .line 2755
    .local v32, "rect_y":F
    const/4 v14, 0x0

    .line 2756
    .local v14, "arrow_x":F
    const/4 v15, 0x0

    .line 2758
    .local v15, "arrow_y":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-nez v4, :cond_1

    .line 2980
    :cond_0
    :goto_0
    return-void

    .line 2761
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 2764
    move/from16 v0, v22

    int-to-float v4, v0

    move/from16 v0, v23

    int-to-float v5, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setFocusRectLeftTop(FF)V

    .line 2765
    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v29

    int-to-float v5, v0

    move/from16 v0, v24

    int-to-float v6, v0

    move/from16 v0, v16

    int-to-float v7, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setPreviewThumbnailLeftTop(FFFF)V

    .line 2767
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2768
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->refreshLivePreviewPosition()V

    .line 2771
    :cond_2
    move/from16 v0, v20

    int-to-float v5, v0

    move/from16 v0, v21

    int-to-float v6, v0

    move/from16 v0, v27

    int-to-float v7, v0

    move/from16 v0, v28

    int-to-float v8, v0

    move/from16 v0, v25

    int-to-float v9, v0

    move/from16 v0, v26

    int-to-float v10, v0

    move/from16 v0, v18

    int-to-float v11, v0

    move/from16 v0, v19

    int-to-float v12, v0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setTrapezoidPosition(FFFFFFFF)V

    .line 2773
    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideSelfieRectChanged: mDetectedDirection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideSelfieRectChanged: mFocusRectCenterX :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mFocusRectCenterY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideSelfieRectChanged: mFocusRectLeft :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mFocusRectTop : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    move/from16 v31, v0

    .line 2778
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    move/from16 v32, v0

    .line 2780
    const/4 v13, 0x0

    .line 2782
    .local v13, "WarningLevel":I
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v0, v4

    move-wide/from16 v36, v0

    .line 2783
    .local v36, "xDistance":D
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v0, v4

    move-wide/from16 v38, v0

    .line 2784
    .local v38, "yDistance":D
    const/16 v33, 0x0

    .line 2786
    .local v33, "warningDistance":F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMovingDetection:Z

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    :cond_3
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v4, v38, v4

    if-gtz v4, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    :cond_5
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v4, v36, v4

    if-lez v4, :cond_7

    .line 2788
    :cond_6
    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xDistance : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v36

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , yDistance : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v38

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideGuideRect()V

    .line 2790
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMovingDetection:Z

    .line 2791
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z

    .line 2794
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    .line 2795
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z

    if-eqz v4, :cond_d

    .line 2796
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 2797
    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v36, v0

    .line 2808
    :goto_1
    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v33, v4, v5

    .line 2827
    :goto_2
    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->max(DD)D

    move-result-wide v34

    .line 2829
    .local v34, "totalDistance":D
    move/from16 v0, v33

    float-to-double v4, v0

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    cmpg-double v4, v34, v4

    if-gez v4, :cond_15

    .line 2830
    const/4 v13, 0x0

    .line 2838
    :goto_3
    if-nez v13, :cond_9

    .line 2839
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->restartCancelTimer()V

    .line 2841
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->prepareWarningArrow(I)V

    .line 2843
    const/4 v4, 0x1

    if-lt v13, v4, :cond_20

    .line 2844
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v4, :pswitch_data_0

    .line 2925
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2926
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isRectGuideVisible()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->getFocusRectDistance()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b

    .line 2927
    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideRectChanged  Warning mLeftTopX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLeftTopY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRightTopX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRightTopY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRightBottomX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLeftBottomX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLeftBottomY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideRectChanged Warning mWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    const/16 v4, 0x8

    new-array v0, v4, [F

    move-object/from16 v30, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    aput v5, v30, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    aput v5, v30, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    aput v5, v30, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    aput v5, v30, v4

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    aput v5, v30, v4

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    aput v5, v30, v4

    const/4 v4, 0x6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    aput v5, v30, v4

    const/4 v4, 0x7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    aput v5, v30, v4

    .line 2931
    .local v30, "point":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    move-object/from16 v0, v30

    invoke-virtual {v4, v5, v6, v0}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setRect(FF[F)V

    .line 2932
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 2934
    .end local v30    # "point":[F
    :cond_b
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    .line 2969
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarning()V

    .line 2971
    const/4 v4, 0x3

    if-ne v13, v4, :cond_0

    .line 2972
    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideRectChanged: Stop case - totalDistance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v34

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    .line 2974
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarning()V

    .line 2975
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    .line 2976
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfieSound()V

    .line 2977
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setCaptureError(Z)V

    .line 2978
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopWideSelfie()V

    goto/16 :goto_0

    .line 2799
    .end local v34    # "totalDistance":D
    :cond_c
    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v36, v0

    goto/16 :goto_1

    .line 2801
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_e

    .line 2802
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v36, v0

    goto/16 :goto_1

    .line 2803
    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f

    .line 2804
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v36, v0

    goto/16 :goto_1

    .line 2806
    :cond_f
    const-wide/16 v36, 0x0

    goto/16 :goto_1

    .line 2810
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z

    if-eqz v4, :cond_12

    .line 2811
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    .line 2812
    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v38, v0

    .line 2824
    :goto_6
    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    const/high16 v5, 0x40400000    # 3.0f

    div-float v33, v4, v5

    goto/16 :goto_2

    .line 2814
    :cond_11
    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v38, v0

    goto :goto_6

    .line 2816
    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_13

    .line 2817
    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v38, v0

    goto :goto_6

    .line 2818
    :cond_13
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_14

    .line 2820
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v38, v0

    goto :goto_6

    .line 2822
    :cond_14
    const-wide/16 v38, 0x0

    goto :goto_6

    .line 2831
    .restart local v34    # "totalDistance":D
    :cond_15
    move/from16 v0, v33

    float-to-double v4, v0

    const-wide v6, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v4, v6

    cmpg-double v4, v34, v4

    if-gez v4, :cond_16

    .line 2832
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 2833
    :cond_16
    move/from16 v0, v33

    float-to-double v4, v0

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    cmpg-double v4, v34, v4

    if-gez v4, :cond_17

    .line 2834
    const/4 v13, 0x2

    goto/16 :goto_3

    .line 2836
    :cond_17
    const/4 v13, 0x3

    goto/16 :goto_3

    .line 2846
    :pswitch_0
    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v14, v4, v5

    .line 2847
    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v15, v4, v5

    .line 2848
    cmpl-double v4, v36, v38

    if-lez v4, :cond_18

    .line 2849
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_4

    .line 2854
    :pswitch_1
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2851
    :pswitch_2
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2857
    :cond_18
    if-lez v23, :cond_19

    .line 2858
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2859
    :cond_19
    if-gez v23, :cond_a

    .line 2860
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2864
    :pswitch_3
    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v14, v4, v5

    .line 2865
    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v15, v4, v5

    .line 2866
    cmpl-double v4, v36, v38

    if-lez v4, :cond_1a

    .line 2867
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    packed-switch v4, :pswitch_data_2

    goto/16 :goto_4

    .line 2869
    :pswitch_4
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2872
    :pswitch_5
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2877
    :cond_1a
    if-lez v23, :cond_1b

    .line 2878
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2879
    :cond_1b
    if-gez v23, :cond_a

    .line 2880
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2884
    :pswitch_6
    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_MARGIN:F

    add-float v14, v4, v5

    .line 2885
    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v15, v4, v5

    .line 2886
    cmpl-double v4, v38, v36

    if-lez v4, :cond_1c

    .line 2887
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    packed-switch v4, :pswitch_data_3

    goto/16 :goto_4

    .line 2892
    :pswitch_7
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2889
    :pswitch_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2897
    :cond_1c
    if-gez v22, :cond_1d

    .line 2898
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2899
    :cond_1d
    if-lez v22, :cond_a

    .line 2900
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2904
    :pswitch_9
    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_MARGIN:F

    add-float v14, v4, v5

    .line 2905
    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v15, v4, v5

    .line 2906
    cmpl-double v4, v38, v36

    if-lez v4, :cond_1e

    .line 2907
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    packed-switch v4, :pswitch_data_4

    goto/16 :goto_4

    .line 2912
    :pswitch_a
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2909
    :pswitch_b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2917
    :cond_1e
    if-gez v22, :cond_1f

    .line 2918
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2919
    :cond_1f
    if-lez v22, :cond_a

    .line 2920
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2936
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isRectGuideVisible()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->getFocusRectDistance()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_21

    .line 2937
    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideRectChanged not Warning mLeftTopX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLeftTopY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRightTopX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRightTopY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRightBottomX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLeftBottomX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLeftBottomY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideRectChanged not Warning mWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    const/16 v4, 0x8

    new-array v0, v4, [F

    move-object/from16 v30, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    aput v5, v30, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    aput v5, v30, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    aput v5, v30, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    aput v5, v30, v4

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    aput v5, v30, v4

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    aput v5, v30, v4

    const/4 v4, 0x6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    aput v5, v30, v4

    const/4 v4, 0x7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    aput v5, v30, v4

    .line 2941
    .restart local v30    # "point":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    move-object/from16 v0, v30

    invoke-virtual {v4, v5, v6, v0}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setRect(FF[F)V

    .line 2942
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 2945
    .end local v30    # "point":[F
    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isMaxPositionReached(FF)Z

    move-result v4

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    if-eqz v4, :cond_24

    .line 2946
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_26

    .line 2947
    :cond_22
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_25

    .line 2948
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 2949
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    .line 2963
    :cond_23
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 2964
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/haptic/HapticFeedback;->playHaptic(Landroid/content/Context;I)V

    .line 2966
    :cond_24
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentDirection:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    .line 2967
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    goto/16 :goto_5

    .line 2950
    :cond_25
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    .line 2951
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 2952
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_7

    .line 2955
    :cond_26
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_27

    .line 2956
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 2957
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_7

    .line 2958
    :cond_27
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    .line 2959
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 2960
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_7

    .line 2844
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_9
    .end packed-switch

    .line 2849
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2867
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2887
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 2907
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public getMaxFileSizeOfImage()J
    .locals 2

    .prologue
    .line 365
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieCapturing:Z

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
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 7
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 380
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 381
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v5, [I

    const/4 v3, 0x0

    const/4 v4, 0x6

    aput v4, v2, v3

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    .line 382
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 384
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 385
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "camera.action.COVER_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    const-string v1, "camera.action.COVER_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 389
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    .line 390
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    .line 392
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Z

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 395
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V

    .line 400
    :cond_0
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showCropArea(I)V

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    .line 403
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setWideSelfieListener(Lcom/sec/android/seccamera/SecCamera$WideSelfieEventListener;)V

    .line 404
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 405
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->sendOrientationInfotoHAL()V

    .line 407
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-lez v1, :cond_2

    .line 417
    :cond_1
    :goto_0
    return-void

    .line 410
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEncodingProgress:Z

    if-nez v1, :cond_1

    .line 411
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showCropArea(I)V

    .line 412
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 414
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public onChangeShootingModeParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    .line 426
    const-string v0, "picture-size"

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->WIDE_SELFIE_RESOLUTION:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const/16 v0, 0x1f40

    const/16 v1, 0x7530

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 428
    const-string v0, "effect_hint"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 429
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 13
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 434
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 435
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 437
    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SCREEN_WIDTH:I

    int-to-float v2, v2

    const v3, 0x3faaaaab

    div-float/2addr v2, v3

    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->WIDE_SELFIE_RESOLUTION:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3fb6a7f0    # 1.427f

    mul-float/2addr v2, v3

    const v3, 0x3f9d70a4    # 1.23f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    .line 439
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    .line 441
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 442
    new-instance v2, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f02012b

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 443
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 445
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 446
    new-instance v2, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f02012a

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 447
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 448
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setCenterPivot(Z)V

    .line 449
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 450
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, p0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 451
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 452
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setBypassTouch(Z)V

    .line 454
    new-instance v2, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const v8, 0x7f02012b

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 455
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 456
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLNinePatch;->setBypassTouch(Z)V

    .line 457
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    .line 458
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 459
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setBypassTouch(Z)V

    .line 461
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0201fd

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    .line 462
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0201fe

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    .line 463
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 464
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 466
    new-instance v2, Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_HEIGHT:F

    const-string v8, ""

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_SIZE:F

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v9, v3

    sget v10, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_FONT_COLOR:I

    const/4 v11, 0x0

    move-object v3, p1

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    .line 467
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 468
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 469
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 470
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 471
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 472
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 474
    new-instance v2, Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_HEIGHT:F

    const-string v8, ""

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_SIZE:F

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v9, v3

    sget v10, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_FONT_COLOR:I

    const/4 v11, 0x0

    move-object v3, p1

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    .line 475
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 476
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 477
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 478
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 479
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 480
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 482
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0202a8

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 483
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x1

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0202a5

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 484
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x2

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0202a6

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 485
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x3

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0202a7

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 486
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0201f5

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 487
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x1

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0201f3

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 488
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x2

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0201f1

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 489
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x3

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0201ff

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 490
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0201f7

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 491
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x5

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0201f9

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 492
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x6

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0201fb

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 493
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x7

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0201f6

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 494
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v3, 0x8

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0201f4

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 495
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v3, 0x9

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0201f2

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 496
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v3, 0xa

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f020200

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 497
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v3, 0xb

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0201f8

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 498
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v3, 0xc

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0201fa

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 499
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v3, 0xd

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0201fc

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 501
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v6, v7

    const v7, 0x7f0200d2

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 503
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x1

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v6, v7

    const v7, 0x7f0200d0

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 505
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x2

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v6, v7

    const v7, 0x7f0200ce

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 507
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x3

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v6, v7

    const v7, 0x7f0200cc

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 509
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v6, v7

    const v7, 0x7f0200d4

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 511
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x5

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v6, v7

    const v7, 0x7f0200d6

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 513
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x6

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v6, v7

    const v7, 0x7f0200d8

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 515
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x7

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v7, 0x7f090299

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v6, v7

    const v7, 0x7f0200d3

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 518
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v3, 0x8

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v7, 0x7f090299

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v6, v7

    const v7, 0x7f0200d1

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 521
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v3, 0x9

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v7, 0x7f090299

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v6, v7

    const v7, 0x7f0200cf

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 524
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v3, 0xa

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v7, 0x7f090299

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v6, v7

    const v7, 0x7f0200cd

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 527
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v3, 0xb

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v7, 0x7f090299

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v6, v7

    const v7, 0x7f0200d5

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 530
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v3, 0xc

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v7, 0x7f090299

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v6, v7

    const v7, 0x7f0200d7

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 533
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v3, 0xd

    new-instance v4, Lcom/samsung/android/glview/GLImage;

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v7, 0x7f090299

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v6, v7

    const v7, 0x7f0200d9

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v4, v2, v3

    .line 537
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f020130

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningBox:Lcom/samsung/android/glview/GLImage;

    .line 538
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningBox:Lcom/samsung/android/glview/GLImage;

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 539
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningBox:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 541
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->STOP_BUTTON_POS_X:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->STOP_BUTTON_POS_Y:I

    int-to-float v5, v3

    const v6, 0x7f020109

    const v7, 0x7f02010a

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    .line 542
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 543
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080142

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 544
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 545
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 546
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 557
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    .line 558
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->STOP_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 559
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 561
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideBlinkingAnimation:Landroid/view/animation/Animation;

    .line 562
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideBlinkingAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x2bc

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 563
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideBlinkingAnimation:Landroid/view/animation/Animation;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 565
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 567
    new-instance v2, Lcom/samsung/android/glview/GLNinePatch;

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

    int-to-float v4, v3

    const/4 v5, 0x0

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    int-to-float v6, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_LANDSCAPE_HEIGHT:I

    int-to-float v7, v3

    const v8, 0x7f0202a4

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 568
    new-instance v2, Lcom/samsung/android/glview/GLNinePatch;

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_LANDSCAPE_HEIGHT:I

    sub-int/2addr v3, v5

    int-to-float v5, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    int-to-float v6, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_LANDSCAPE_HEIGHT:I

    int-to-float v7, v3

    const v8, 0x7f0202a4

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 571
    new-instance v2, Lcom/samsung/android/glview/GLNinePatch;

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

    int-to-float v4, v3

    const/4 v5, 0x0

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

    int-to-float v6, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_HEIGHT:I

    int-to-float v7, v3

    const v8, 0x7f0202a4

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 573
    new-instance v2, Lcom/samsung/android/glview/GLNinePatch;

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_BOTTOM_OFFSET_NORMAL:I

    sub-int/2addr v3, v4

    int-to-float v4, v3

    const/4 v5, 0x0

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

    int-to-float v6, v3

    sget v3, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_HEIGHT:I

    int-to-float v7, v3

    const v8, 0x7f0202a4

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 576
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 577
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 578
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 579
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 581
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 582
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 583
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 584
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 585
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p2, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 586
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p2, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 587
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 588
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 589
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 590
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {p2, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 591
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningBox:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p2, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 593
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v12, v2, :cond_0

    .line 594
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 595
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    invoke-virtual {p2, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 593
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 597
    :cond_0
    const/4 v12, 0x0

    :goto_1
    const/16 v2, 0xe

    if-ge v12, v2, :cond_1

    .line 598
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 599
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    invoke-virtual {p2, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 597
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 601
    :cond_1
    const/4 v12, 0x0

    :goto_2
    const/16 v2, 0xe

    if-ge v12, v2, :cond_2

    .line 602
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 603
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v12

    invoke-virtual {p2, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 601
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 605
    :cond_2
    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 609
    const-string v0, "sef_file_type"

    const/16 v1, 0x970

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 610
    const/4 v0, 0x0

    return v0
.end method

.method public onHRMShutterDetected()V
    .locals 1

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCapture:Z

    if-eqz v0, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-eqz v0, :cond_2

    .line 619
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    .line 620
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfieCapture()V

    goto :goto_0

    .line 623
    :cond_2
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->onShutterKeyReleased(I)Z

    goto :goto_0
.end method

.method public onImageStoringCompleted()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 629
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-nez v5, :cond_0

    .line 647
    :goto_0
    return v3

    .line 632
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    .line 633
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    .line 635
    const-string v1, "Wide_Selfie_Info"

    .line 636
    .local v1, "keyName":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/16 v7, 0x970

    invoke-static {v5, v1, v6, v7, v4}, Lcom/sec/android/secvision/sef/SEF;->addSEFData(Ljava/lang/String;Ljava/lang/String;[BII)I

    .line 638
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 639
    .local v0, "density":F
    const/high16 v5, 0x40000000    # 2.0f

    cmpg-float v5, v0, v5

    if-gez v5, :cond_1

    .line 640
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v6

    mul-int/2addr v5, v6

    int-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderWidth()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderHeight()I

    move-result v7

    mul-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v5, v6}, Lcom/samsung/android/glview/GLUtil;->calculateSampleSize(II)I

    move-result v2

    .line 643
    .local v2, "sampleSize":I
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/util/ContentData;->getCaptureData()[B

    move-result-object v6

    div-int/lit8 v7, v2, 0x4

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/camera/util/ContentData;->setCaptureData([BI)V

    .line 645
    .end local v2    # "sampleSize":I
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/util/ContentData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/util/ContentData;->getOrientation()I

    move-result v7

    invoke-interface {v5, v6, v7, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    move v3, v4

    .line 647
    goto/16 :goto_0
.end method

.method public onInactivate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 652
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->clearSideQuickSetting()V

    .line 654
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 658
    :cond_0
    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInactivate - capture count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->getCaptureProgressIncreased()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_2

    .line 660
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    .line 661
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    .line 662
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchToCaptureStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setTouchToCaptureStarted(Z)V

    .line 665
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->cancelWideSelfieCapture()V

    .line 668
    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    .line 669
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    .line 670
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopCancelTimer()V

    .line 671
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideStopButton()V

    .line 672
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideCropArea()V

    .line 674
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Z

    if-eqz v0, :cond_3

    .line 675
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 676
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHRMShutterListener()V

    .line 680
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 681
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    .line 684
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->setWideSelfieListener(Lcom/sec/android/seccamera/SecCamera$WideSelfieEventListener;)V

    .line 685
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 687
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    .line 688
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfieSound()V

    .line 689
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setPreviewThumbnailSizeToDefault()V

    .line 690
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 694
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 699
    sparse-switch p1, :sswitch_data_0

    .line 735
    :cond_0
    :goto_0
    return v0

    .line 701
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 702
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    .line 703
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    .line 704
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    .line 705
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    goto :goto_0

    .line 708
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPostProgress:I

    if-lez v2, :cond_2

    move v0, v1

    .line 709
    goto :goto_0

    .line 711
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 712
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 714
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfie()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 715
    goto :goto_0

    .line 721
    :sswitch_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieCapturing:Z

    if-eqz v2, :cond_0

    .line 722
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v0

    if-nez v0, :cond_4

    .line 723
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setCaptureError(Z)V

    .line 724
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopWideSelfie()V

    .line 726
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_5

    .line 727
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideStopButton()V

    :cond_5
    move v0, v1

    .line 729
    goto :goto_0

    .line 699
    nop

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
    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 746
    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged - mCurrentOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-nez v0, :cond_2

    .line 749
    :cond_0
    const-string v0, "WideSelfie"

    const-string v1, "onOrientationChanged - Already mCameraContext or mEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    .line 807
    :cond_1
    :goto_0
    return-void

    .line 754
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    .line 756
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-eqz v0, :cond_8

    .line 757
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-nez v0, :cond_6

    .line 758
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eq v0, p1, :cond_5

    .line 759
    const-string v0, "WideSelfie"

    const-string v1, "onOrientationChanged Stop case - orientation changed"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    .line 761
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    .line 762
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    .line 763
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 764
    const-string v0, "WideSelfie"

    const-string v1, "onOrientationChanged isTimerCounting return"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShutterTimer()V

    .line 766
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x3d

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    .line 767
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    .line 768
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showCropArea(I)V

    goto :goto_0

    .line 771
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    .line 772
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchToCaptureStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 774
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setTouchToCaptureStarted(Z)V

    .line 776
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->cancelWideSelfieCapture()V

    .line 777
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWideSelfieToastPopup(I)V

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 779
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 780
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 800
    :cond_5
    :goto_1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    .line 802
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->refreshLivePreviewPosition()V

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 805
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showCropArea(I)V

    goto :goto_0

    .line 784
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isWideSelfieStopping()Z

    move-result v0

    if-nez v0, :cond_7

    .line 785
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setCaptureError(Z)V

    .line 786
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopWideSelfie()V

    .line 788
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideStopButton()V

    goto :goto_1

    .line 791
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 792
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCapture:Z

    .line 793
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 794
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 795
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 796
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 812
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 817
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 822
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 5
    .param p1, "captureMethod"    # I

    .prologue
    const/4 v1, 0x5

    const/4 v4, 0x1

    .line 827
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 828
    const-string v0, "WideSelfie"

    const-string v1, "onShutterKeyReleased- Preview is not started yet"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_0
    :goto_0
    return v4

    .line 831
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 832
    const-string v0, "WideSelfie"

    const-string v1, "Return, isCapturing"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 835
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-eqz v0, :cond_3

    .line 836
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfie()Z

    .line 837
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    goto :goto_0

    .line 840
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 857
    :goto_1
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPostProgress:I

    if-gtz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 861
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 864
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-eqz v0, :cond_5

    .line 865
    const-string v0, "WideSelfie"

    const-string v1, "Drop Wide Selfie capture start, because it\'s capturing..."

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 844
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 847
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 850
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2af8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 868
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isReadyToCapture()Z

    move-result v0

    if-nez v0, :cond_6

    .line 869
    const-string v0, "WideSelfie"

    const-string v1, "Drop Wide Selfie capture start, because it\'s not ready."

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 873
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb8

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFS(I)V

    .line 874
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestTransientAudioFocus()V

    .line 876
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleTimer(I)Z

    .line 877
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x40

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 878
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x181

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 879
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setStartCapture(Z)V

    .line 880
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setCaptureError(Z)V

    .line 881
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    .line 883
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopFaceDetection()V

    .line 884
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartWideSelfie()V

    .line 886
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 888
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    goto/16 :goto_0

    .line 840
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSingleCaptureEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 894
    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleCaptureEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    packed-switch p1, :pswitch_data_0

    .line 903
    :goto_0
    return-void

    .line 897
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    .line 898
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    goto :goto_0

    .line 895
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 907
    const-string v0, "WideSelfie"

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

    .line 908
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 912
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 914
    :cond_1
    if-nez p1, :cond_3

    .line 915
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    .line 916
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 917
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x40

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 918
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    .line 920
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 921
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 923
    :cond_3
    return-void
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x0

    return v0
.end method

.method public onWideSelfieCaptured()V
    .locals 3

    .prologue
    .line 932
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v0, :cond_1

    .line 933
    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureProgressIncreased mCaptureCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsCapturePreparing:Z

    .line 936
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-eqz v0, :cond_0

    .line 937
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    .line 940
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieCapturing:Z

    .line 942
    :cond_1
    return-void
.end method

.method public onWideSelfieCapturedMaxFrames()V
    .locals 0

    .prologue
    .line 946
    return-void
.end method

.method public onWideSelfieCapturedNew()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 950
    const-string v0, "WideSelfie"

    const-string v1, "onWideSelfieCapturedNew"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-nez v0, :cond_1

    .line 976
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-nez v0, :cond_3

    .line 956
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setStartCapture(Z)V

    .line 957
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v0

    if-nez v0, :cond_2

    .line 958
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->refreshLivePreviewPosition()V

    .line 961
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startShutterAnimation()V

    .line 962
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 963
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/haptic/HapticFeedback;->playHaptic(Landroid/content/Context;I)V

    .line 966
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 970
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 971
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setSkipCheckWarning(Z)V

    .line 972
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 974
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startShutterAnimation()V

    .line 975
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    goto :goto_0
.end method

.method public onWideSelfieDirectionChanged(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 980
    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWideSelfieDirectionChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->onWideDirectionChanged(I)V

    .line 982
    return-void
.end method

.method public onWideSelfieError(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    const/4 v0, 0x1

    .line 986
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setCaptureError(Z)V

    .line 988
    packed-switch p1, :pswitch_data_0

    .line 998
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrameOnWideSelfie:Z

    .line 999
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->cancelWideSelfieCapture()V

    .line 1003
    :goto_0
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWideSelfieToastPopup(I)V

    .line 1004
    return-void

    .line 993
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopWideSelfie()V

    goto :goto_0

    .line 988
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onWideSelfieImageSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1008
    return-void
.end method

.method public onWideSelfieLivePreviewData([B)V
    .locals 2
    .param p1, "arg0"    # [B

    .prologue
    .line 1012
    const-string v0, "WideSelfie"

    const-string v1, "onWideSelfieLivePreviewData"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->onLivePreviewData([B)V

    .line 1015
    return-void
.end method

.method public onWideSelfieLowResolutionData([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 1019
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/Util;->decodeRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieLowResolutionBitmap:Landroid/graphics/Bitmap;

    .line 1020
    return-void
.end method

.method public onWideSelfieMoveSlowly()V
    .locals 1

    .prologue
    .line 1024
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieCapturing:Z

    if-eqz v0, :cond_0

    .line 1025
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideGuideText()V

    .line 1026
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningText(I)V

    .line 1028
    :cond_0
    return-void
.end method

.method public onWideSelfieNextCapturePosition(II)V
    .locals 4
    .param p1, "posX"    # I
    .param p2, "posY"    # I

    .prologue
    .line 1032
    int-to-float v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterX:F

    .line 1033
    int-to-float v1, p2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterY:F

    .line 1034
    const-string v1, "WideSelfie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWideSelfieNextCapturePosition : posX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", posY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    const-string v1, "WideSelfie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWideSelfieNextCapturePosition : mNextCaptureFocusRectCenterX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNextCaptureFocusRectCenterY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 1060
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showNextCaptureFocusRect()V

    .line 1061
    return-void

    .line 1041
    :pswitch_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1042
    .local v0, "TOP_MARGIN":F
    :goto_1
    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterY:F

    add-float/2addr v1, v2

    add-float/2addr v1, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectTop:F

    .line 1043
    if-lez p1, :cond_1

    .line 1044
    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectLeft:F

    goto :goto_0

    .line 1041
    .end local v0    # "TOP_MARGIN":F
    :cond_0
    sget v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_TOP_MARGIN:F

    goto :goto_1

    .line 1046
    .restart local v0    # "TOP_MARGIN":F
    :cond_1
    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectLeft:F

    goto :goto_0

    .line 1051
    .end local v0    # "TOP_MARGIN":F
    :pswitch_1
    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterX:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectLeft:F

    .line 1052
    if-lez p2, :cond_2

    .line 1053
    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectTop:F

    goto :goto_0

    .line 1055
    :cond_2
    sget v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectTop:F

    goto :goto_0

    .line 1038
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWideSelfieProgressStitching(I)V
    .locals 5
    .param p1, "progress"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1065
    if-nez p1, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xfa0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFS(I)V

    .line 1067
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/haptic/HapticFeedback;->playHaptic(Landroid/content/Context;I)V

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1071
    const-string v0, "WideSelfie"

    const-string v1, "onWideSelfieProgressStitching - CE_STATE_SHUTDOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    .line 1073
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    .line 1097
    :goto_0
    return-void

    .line 1075
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopCancelTimer()V

    .line 1076
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setPostCaptureProgress(I)V

    .line 1077
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfieSound()V

    .line 1078
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    .line 1079
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    .line 1081
    if-nez p1, :cond_2

    .line 1082
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1083
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 1085
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x3

    invoke-interface {v0, v1, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 1086
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    goto :goto_0

    .line 1087
    :cond_2
    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    .line 1088
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    .line 1089
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1091
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setDelayedSkipCapture()V

    .line 1092
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setEncodingProgress(Z)V

    goto :goto_0

    .line 1094
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0
.end method

.method public onWideSelfieRectChanged([B)V
    .locals 0
    .param p1, "arg0"    # [B

    .prologue
    .line 1101
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->wideSelfieRectChanged([B)V

    .line 1102
    return-void
.end method

.method public onWideSelfieSingleCaptureDone()V
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 1106
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-nez v0, :cond_0

    .line 1152
    :goto_0
    return-void

    .line 1109
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-nez v0, :cond_1

    .line 1110
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 1111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    .line 1114
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    .line 1115
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 1127
    :cond_2
    :goto_1
    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWideSelfieSingleCaptureDone invisible next capture mDetectedDirection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNextCaptureFocusStep:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-ne v0, v4, :cond_4

    .line 1129
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showStopButton()V

    goto :goto_0

    .line 1118
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-le v0, v3, :cond_2

    .line 1119
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    goto :goto_1

    .line 1123
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-le v0, v1, :cond_2

    .line 1124
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    goto :goto_1

    .line 1132
    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-ne v0, v3, :cond_7

    .line 1133
    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 1134
    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v0, v3, :cond_8

    .line 1135
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 1136
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    .line 1151
    :cond_7
    :goto_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->getGuideDirection(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    goto/16 :goto_0

    .line 1137
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v0, v4, :cond_7

    .line 1138
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 1139
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_2

    .line 1142
    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v0, v3, :cond_a

    .line 1143
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 1144
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_2

    .line 1145
    :cond_a
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v0, v4, :cond_7

    .line 1146
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 1147
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_2

    .line 1115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
