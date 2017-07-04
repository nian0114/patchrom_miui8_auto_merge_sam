.class public Lcom/sec/android/app/camera/menu/OverlayLayout;
.super Ljava/lang/Object;
.source "OverlayLayout.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$PhaseAFListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$MultiAFListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$FocusStateListener;


# static fields
.field private static final COVER_SCREEN_WINDOW_HEIGHT:I

.field private static final COVER_SCREEN_WINDOW_WIDTH:I

.field private static final FACE_CIRCLE_DEFAULT_THICKNESS:I

.field private static final FACE_COLOR:I

.field private static final FACE_IS_CENTER:I = 0x0

.field public static final FACE_IS_CENTER_BOTTOM:I = 0x8

.field public static final FACE_IS_CENTER_MIDDLE:I = 0x5

.field public static final FACE_IS_CENTER_TOP:I = 0x2

.field private static final FACE_IS_LEFT:I = 0x1

.field public static final FACE_IS_LEFT_BOTTOM:I = 0x7

.field public static final FACE_IS_LEFT_MIDDLE:I = 0x4

.field public static final FACE_IS_LEFT_TOP:I = 0x1

.field private static final FACE_IS_RIGHT:I = 0x2

.field public static final FACE_IS_RIGHT_BOTTOM:I = 0x9

.field public static final FACE_IS_RIGHT_MIDDLE:I = 0x6

.field public static final FACE_IS_RIGHT_TOP:I = 0x3

.field private static final HELPTEXT_TIMEOUT:I = 0x1b58

.field private static final HELP_TEXT_BOTTOM_MARGIN:F

.field private static final HELP_TEXT_FOOD_BOTTOM_MARGIN:F

.field private static final HELP_TEXT_FOOD_BOTTOM_MARGIN_PORTRAIT:F

.field private static final HELP_TEXT_HEIGHT:I

.field private static final HELP_TEXT_HEIGHT_VERTICAL:I

.field private static final HELP_TEXT_LINE_SPACING:F

.field private static final HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN:F

.field private static final HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN_PORTRAIT:F

.field private static final HELP_TEXT_POS_X:F

.field private static final HELP_TEXT_POS_Y:F

.field private static final HELP_TEXT_REAR_CAM_SELFIE_BOTTOM_MARGIN_PORTRAIT:F

.field private static final HELP_TEXT_SET_SHADOW:Z

.field private static final HELP_TEXT_SIDE_MARGIN:F

.field private static final HELP_TEXT_SIZE:F

.field private static final HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

.field private static final HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN_PORTRAIT:F

.field private static final HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_BOTTOM_MARGIN_PORTRAIT:F

.field private static final HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_HEIGHT:F

.field private static final HELP_TEXT_STROKE_WIDTH:I

.field private static final HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN:F

.field private static final HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN_PORTRAIT:F

.field private static final HELP_TEXT_WIDTH:F

.field private static final HELP_TEXT_WIDTH_VERTICAL:F

.field private static final MAX_FACE_COUNT:I = 0xa

.field private static final OVERLAYLAYOUT_EFFECT_EDIT_X:I

.field private static final OVERLAYLAYOUT_EFFECT_EDIT_Y:I

.field private static final PALM_COLOR:I

.field private static final PALM_ID:I = 0x3e7

.field private static final PALM_RECT_DEFAULT_THICKNESS:I

.field private static final RATIO_1_1_MARGIN:I

.field private static final RATIO_4_3_MARGIN:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SHOOTINGMODE_HEIGHT:I

.field private static final SHOOTINGMODE_PORTRAIT_TOP_MARGIN:I

.field private static final SHOOTINGMODE_TEXT_STROKE_COLOR:I

.field private static final SHOOTINGMODE_TEXT_STROKE_WIDTH:I

.field private static final SHOOTINGMODE_TOP_MARGIN:I

.field private static final SHOOTINGMODE_WIDTH:I

.field protected static final TAG:Ljava/lang/String; = "OverlayLayout"

.field private static final TEXT_COLOR:I

.field private static final TEXT_SIZE:F

.field private static final TEXT_STROKE_COLOR:I


# instance fields
.field private mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

.field private mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mDetectedFaceCount:I

.field private mEffectEditButton:Lcom/samsung/android/glview/GLButton;

.field private mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

.field private mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

.field private mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

.field private mHelpText:Lcom/samsung/android/glview/GLText;

.field private mHelpTextHeight:I

.field private mHelpTextHeightVertical:I

.field private final mHideShootingModeText:Ljava/lang/Runnable;

.field private mIsShootingModeTextHidedByTimeOut:Z

.field private final mMatrixForFace:Landroid/graphics/Matrix;

.field private final mMatrixForObjectTracking:Landroid/graphics/Matrix;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

.field private final mObjectTrackingRect:Landroid/graphics/RectF;

.field private mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

.field private mOldDetectedFaceCount:I

.field private mOrientation:I

.field private mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

.field private mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private final mRect:Landroid/graphics/RectF;

.field private mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mShootingModeText:Lcom/samsung/android/glview/GLText;

.field private mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x7f0a0023

    const v2, 0x7f0901bf

    const v3, 0x7f0901be

    const/4 v0, 0x1

    .line 75
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    .line 76
    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    .line 77
    const v1, 0x7f09008c

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->COVER_SCREEN_WINDOW_WIDTH:I

    .line 78
    const v1, 0x7f09008b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->COVER_SCREEN_WINDOW_HEIGHT:I

    .line 79
    const v1, 0x7f0902db

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_SIZE:F

    .line 80
    const v1, 0x7f0c000f

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_COLOR:I

    .line 81
    const v1, 0x7f0c0010

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_STROKE_COLOR:I

    .line 82
    const v1, 0x7f090158

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->RATIO_4_3_MARGIN:I

    .line 83
    const v1, 0x7f090157

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->RATIO_1_1_MARGIN:I

    .line 84
    const v1, 0x7f0902d4

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TOP_MARGIN:I

    .line 85
    const v1, 0x7f0902da

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_PORTRAIT_TOP_MARGIN:I

    .line 86
    const v1, 0x7f09033b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    .line 87
    const v1, 0x7f09033a

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_HEIGHT:I

    .line 88
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_STROKE_WIDTH:I

    .line 89
    const v1, 0x7f0c0027

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_STROKE_COLOR:I

    .line 90
    const v1, 0x7f0901e6

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    .line 91
    const v1, 0x7f0901e7

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    .line 92
    const v1, 0x7f0901e3

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    .line 93
    const v1, 0x7f0901e4

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT_VERTICAL:I

    .line 94
    const v1, 0x7f0901da

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN:F

    .line 95
    const v1, 0x7f0901de

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN_PORTRAIT:F

    .line 97
    const v1, 0x7f0901dc

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

    .line 98
    const v1, 0x7f0901e1

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN_PORTRAIT:F

    .line 99
    const v1, 0x7f090246

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_HEIGHT:F

    .line 100
    const v1, 0x7f090248

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_BOTTOM_MARGIN_PORTRAIT:F

    .line 101
    const v1, 0x7f0901dd

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN:F

    .line 102
    const v1, 0x7f0901db

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_FOOD_BOTTOM_MARGIN:F

    .line 103
    const v1, 0x7f0901df

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_FOOD_BOTTOM_MARGIN_PORTRAIT:F

    .line 104
    const v1, 0x7f0901e2

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN_PORTRAIT:F

    .line 105
    const v1, 0x7f0901e0

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_REAR_CAM_SELFIE_BOTTOM_MARGIN_PORTRAIT:F

    .line 106
    const v1, 0x7f0901e5

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    .line 107
    const v1, 0x7f0901d9

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN:F

    .line 108
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    .line 109
    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    .line 110
    const v1, 0x7f0902ea

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIZE:F

    .line 111
    const v1, 0x7f090314

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_LINE_SPACING:F

    .line 112
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_STROKE_WIDTH:I

    .line 113
    const v1, 0x7f0a002f

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SET_SHADOW:Z

    .line 114
    const v0, 0x7f0c0014

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->FACE_COLOR:I

    .line 115
    const v0, 0x7f0a0008

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->FACE_CIRCLE_DEFAULT_THICKNESS:I

    .line 116
    const v0, 0x7f0c0028

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->PALM_COLOR:I

    .line 117
    const v0, 0x7f0a0009

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->PALM_RECT_DEFAULT_THICKNESS:I

    .line 118
    const v0, 0x7f090321

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->OVERLAYLAYOUT_EFFECT_EDIT_X:I

    .line 119
    const v0, 0x7f090322

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->OVERLAYLAYOUT_EFFECT_EDIT_Y:I

    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 6
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingRect:Landroid/graphics/RectF;

    .line 128
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForObjectTracking:Landroid/graphics/Matrix;

    .line 129
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForFace:Landroid/graphics/Matrix;

    .line 130
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    .line 136
    iput-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    .line 144
    iput-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    .line 150
    iput-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    .line 153
    sget v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    .line 154
    sget v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT_VERTICAL:I

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    .line 155
    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mIsShootingModeTextHidedByTimeOut:Z

    .line 156
    new-instance v0, Lcom/sec/android/app/camera/menu/OverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$1;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideShootingModeText:Ljava/lang/Runnable;

    .line 163
    iput v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    .line 164
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sec/android/seccamera/SecCamera$Face;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    .line 165
    iput v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    .line 166
    iput v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOldDetectedFaceCount:I

    .line 180
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 181
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 183
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 184
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 186
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->init()V

    .line 187
    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 6
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingRect:Landroid/graphics/RectF;

    .line 128
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForObjectTracking:Landroid/graphics/Matrix;

    .line 129
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForFace:Landroid/graphics/Matrix;

    .line 130
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    .line 136
    iput-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    .line 144
    iput-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    .line 150
    iput-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    .line 153
    sget v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    .line 154
    sget v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT_VERTICAL:I

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    .line 155
    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mIsShootingModeTextHidedByTimeOut:Z

    .line 156
    new-instance v0, Lcom/sec/android/app/camera/menu/OverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$1;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideShootingModeText:Ljava/lang/Runnable;

    .line 163
    iput v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    .line 164
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sec/android/seccamera/SecCamera$Face;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    .line 165
    iput v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    .line 166
    iput v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOldDetectedFaceCount:I

    .line 169
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 170
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 172
    iput-object p3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 173
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 174
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 176
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->init()V

    .line 177
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/menu/OverlayLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mIsShootingModeTextHidedByTimeOut:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/OverlayLayout;)[Lcom/samsung/android/glview/GLCircle;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/samsung/android/glview/GLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/camera/menu/OverlayLayout;Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;)Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;
    .param p1, "x1"    # Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/sec/android/app/camera/interfaces/MenuManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    return-object v0
.end method

.method private getBigRect(I)I
    .locals 6
    .param p1, "max"    # I

    .prologue
    .line 741
    const/4 v1, 0x0

    .line 742
    .local v1, "MaxValue":F
    const/4 v0, 0x0

    .line 744
    .local v0, "BigRectIndex":I
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v1, v3

    .line 746
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 747
    const-string v3, "OverlayLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rect i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    add-int/lit8 v3, v2, 0x1

    if-lt v3, p1, :cond_1

    .line 758
    :cond_0
    return v0

    .line 752
    :cond_1
    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_2

    .line 753
    add-int/lit8 v0, v2, 0x1

    .line 754
    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v1, v3

    .line 746
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getDownRect(II)I
    .locals 4
    .param p1, "max"    # I
    .param p2, "BigRectIndex"    # I

    .prologue
    .line 763
    const/4 v0, 0x0

    .line 765
    .local v0, "Index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 766
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 767
    add-int/lit8 v0, v0, 0x1

    .line 765
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 769
    :cond_1
    return v0
.end method

.method private getFaceRect(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 773
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 774
    const/4 v0, 0x0

    .line 775
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private getLeftRect(II)I
    .locals 4
    .param p1, "max"    # I
    .param p2, "BigRectIndex"    # I

    .prologue
    .line 779
    const/4 v0, 0x0

    .line 781
    .local v0, "Index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 782
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_0

    .line 783
    add-int/lit8 v0, v0, 0x1

    .line 781
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 785
    :cond_1
    return v0
.end method

.method private getRectPosition(II)I
    .locals 7
    .param p1, "max"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 789
    const/4 v0, 0x0

    .line 790
    .local v0, "BigRectIndex":I
    const/4 v1, 0x0

    .line 792
    .local v1, "CountIndex":I
    if-nez p2, :cond_2

    .line 793
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getBigRect(I)I

    move-result v0

    .line 794
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getLeftRect(II)I

    move-result v1

    .line 806
    :cond_0
    :goto_0
    const-string v4, "OverlayLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BigRectIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   CountIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    if-ne p1, v3, :cond_6

    .line 809
    if-nez v1, :cond_5

    .line 819
    :cond_1
    :goto_1
    return v2

    .line 795
    :cond_2
    const/4 v4, 0x3

    if-ne p2, v4, :cond_3

    .line 796
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getBigRect(I)I

    move-result v0

    .line 797
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getDownRect(II)I

    move-result v1

    goto :goto_0

    .line 798
    :cond_3
    if-ne p2, v3, :cond_4

    .line 799
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getBigRect(I)I

    move-result v0

    .line 800
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getRightRect(II)I

    move-result v1

    goto :goto_0

    .line 801
    :cond_4
    if-ne p2, v2, :cond_0

    .line 802
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getBigRect(I)I

    move-result v0

    .line 803
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getUpRect(II)I

    move-result v1

    goto :goto_0

    :cond_5
    move v2, v3

    .line 812
    goto :goto_1

    .line 814
    :cond_6
    if-eqz v1, :cond_1

    .line 816
    if-ne v1, v2, :cond_7

    .line 817
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    move v2, v3

    .line 819
    goto :goto_1
.end method

.method private getRectPositionBasedScreenForVoiceGuide(ILandroid/graphics/RectF;)I
    .locals 11
    .param p1, "orientation"    # I
    .param p2, "faceRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v5, 0x3

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v10, 0x40400000    # 3.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v4, 0x1

    .line 833
    const/4 v1, 0x0

    .line 834
    .local v1, "bound_row":F
    const/4 v0, 0x0

    .line 835
    .local v0, "bound_col":F
    const/4 v3, 0x0

    .line 836
    .local v3, "rectCenter_row":F
    const/4 v2, 0x0

    .line 838
    .local v2, "rectCenter_col":F
    if-nez p1, :cond_2

    .line 839
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v7

    .line 840
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v7

    .line 841
    iget v6, p2, Landroid/graphics/RectF;->left:F

    iget v7, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    div-float v2, v6, v9

    .line 842
    iget v6, p2, Landroid/graphics/RectF;->top:F

    iget v7, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    div-float v3, v6, v9

    .line 860
    :goto_0
    mul-float v6, v0, v10

    cmpg-float v6, v2, v6

    if-gez v6, :cond_7

    .line 861
    mul-float v6, v1, v10

    cmpg-float v6, v3, v6

    if-gez v6, :cond_5

    .line 862
    if-eq p1, v4, :cond_0

    if-ne p1, v5, :cond_1

    .line 863
    :cond_0
    const/4 v4, 0x7

    .line 900
    :cond_1
    :goto_1
    return v4

    .line 843
    :cond_2
    if-ne p1, v4, :cond_3

    .line 844
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v7

    .line 845
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v7

    .line 846
    iget v6, p2, Landroid/graphics/RectF;->top:F

    iget v7, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    div-float v2, v6, v9

    .line 847
    iget v6, p2, Landroid/graphics/RectF;->left:F

    iget v7, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    div-float v3, v6, v9

    goto :goto_0

    .line 848
    :cond_3
    const/4 v6, 0x2

    if-ne p1, v6, :cond_4

    .line 849
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v7

    .line 850
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v7

    .line 851
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float v2, v6, v9

    .line 852
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float v3, v6, v9

    goto/16 :goto_0

    .line 854
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v7

    .line 855
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v7

    .line 856
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float v2, v6, v9

    .line 857
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float v3, v6, v9

    goto/16 :goto_0

    .line 866
    :cond_5
    mul-float v6, v1, v10

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_6

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v1

    cmpg-float v6, v3, v6

    if-gez v6, :cond_6

    .line 867
    const/4 v4, 0x4

    goto/16 :goto_1

    .line 869
    :cond_6
    if-eq p1, v4, :cond_1

    if-eq p1, v5, :cond_1

    .line 872
    const/4 v4, 0x7

    goto/16 :goto_1

    .line 874
    :cond_7
    mul-float v6, v0, v10

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_e

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v0

    cmpg-float v6, v2, v6

    if-gez v6, :cond_e

    .line 875
    mul-float v6, v1, v10

    cmpg-float v6, v3, v6

    if-gez v6, :cond_a

    .line 876
    if-eq p1, v4, :cond_8

    if-ne p1, v5, :cond_9

    .line 877
    :cond_8
    const/16 v4, 0x8

    goto/16 :goto_1

    .line 879
    :cond_9
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 880
    :cond_a
    mul-float v6, v1, v10

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_b

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v1

    cmpg-float v6, v3, v6

    if-gez v6, :cond_b

    .line 881
    const/4 v4, 0x5

    goto/16 :goto_1

    .line 883
    :cond_b
    if-eq p1, v4, :cond_c

    if-ne p1, v5, :cond_d

    .line 884
    :cond_c
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 886
    :cond_d
    const/16 v4, 0x8

    goto/16 :goto_1

    .line 889
    :cond_e
    mul-float v6, v1, v10

    cmpg-float v6, v3, v6

    if-gez v6, :cond_11

    .line 890
    if-eq p1, v4, :cond_f

    if-ne p1, v5, :cond_10

    .line 891
    :cond_f
    const/16 v4, 0x9

    goto/16 :goto_1

    :cond_10
    move v4, v5

    .line 893
    goto/16 :goto_1

    .line 894
    :cond_11
    mul-float v6, v1, v10

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_12

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v1

    cmpg-float v6, v3, v6

    if-gez v6, :cond_12

    .line 895
    const/4 v4, 0x6

    goto/16 :goto_1

    .line 897
    :cond_12
    if-eq p1, v4, :cond_13

    if-ne p1, v5, :cond_14

    :cond_13
    move v4, v5

    .line 898
    goto/16 :goto_1

    .line 900
    :cond_14
    const/16 v4, 0x9

    goto/16 :goto_1
.end method

.method private getRightRect(II)I
    .locals 4
    .param p1, "max"    # I
    .param p2, "BigRectIndex"    # I

    .prologue
    .line 906
    const/4 v0, 0x0

    .line 908
    .local v0, "Index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 909
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_0

    .line 910
    add-int/lit8 v0, v0, 0x1

    .line 908
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 912
    :cond_1
    return v0
.end method

.method private getShootingmodeHelpTextResIdByCommandId(I)I
    .locals 3
    .param p1, "commandId"    # I

    .prologue
    .line 916
    const/4 v0, -0x1

    .line 917
    .local v0, "helpTextResId":I
    sparse-switch p1, :sswitch_data_0

    .line 954
    :cond_0
    :goto_0
    return v0

    .line 922
    :sswitch_0
    const v0, 0x7f080057

    .line 923
    goto :goto_0

    .line 925
    :sswitch_1
    const v0, 0x7f080016

    .line 926
    goto :goto_0

    .line 928
    :sswitch_2
    const v0, 0x7f080164

    .line 929
    goto :goto_0

    .line 931
    :sswitch_3
    const v0, 0x7f08009c

    .line 932
    goto :goto_0

    .line 935
    :sswitch_4
    const v0, 0x7f080157

    .line 936
    goto :goto_0

    .line 938
    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSoundAndShotMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 939
    const v0, 0x7f0801d4

    goto :goto_0

    .line 940
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSoundAndShotMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 941
    const v0, 0x7f0801d3

    goto :goto_0

    .line 945
    :sswitch_6
    const v0, 0x7f0801c9

    .line 946
    goto :goto_0

    .line 948
    :sswitch_7
    const v0, 0x7f080158

    .line 949
    goto :goto_0

    .line 951
    :sswitch_8
    const v0, 0x7f080156

    goto :goto_0

    .line 917
    :sswitch_data_0
    .sparse-switch
        0x12e -> :sswitch_4
        0x13a -> :sswitch_0
        0x13f -> :sswitch_0
        0x149 -> :sswitch_5
        0x14d -> :sswitch_0
        0x151 -> :sswitch_3
        0x152 -> :sswitch_0
        0x156 -> :sswitch_7
        0x157 -> :sswitch_6
        0x15b -> :sswitch_2
        0x15d -> :sswitch_1
        0x161 -> :sswitch_8
        0x162 -> :sswitch_4
    .end sparse-switch
.end method

.method private getUpRect(II)I
    .locals 4
    .param p1, "max"    # I
    .param p2, "BigRectIndex"    # I

    .prologue
    .line 958
    const/4 v0, 0x0

    .line 960
    .local v0, "Index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 961
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_0

    .line 962
    add-int/lit8 v0, v0, 0x1

    .line 960
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 964
    :cond_1
    return v0
.end method

.method private hideAfButton()V
    .locals 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/AfButton;->setVisibility(I)V

    .line 971
    :cond_0
    return-void
.end method

.method private hideMultiAFView()V
    .locals 3

    .prologue
    .line 974
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 975
    const-string v0, "OverlayLayout"

    const-string v1, "hideMultiAFView"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->setVisibility(IZ)V

    .line 977
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->hideMultiAFLayout()V

    .line 979
    :cond_0
    return-void
.end method

.method private init()V
    .locals 21

    .prologue
    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v17

    .line 984
    .local v17, "glContext":Lcom/samsung/android/glview/GLContext;
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    .line 986
    const/16 v19, 0x0

    .line 987
    .local v19, "viewCenterX":I
    const/16 v20, 0x0

    .line 989
    .local v20, "viewCenterY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 990
    sget v2, Lcom/sec/android/app/camera/menu/OverlayLayout;->COVER_SCREEN_WINDOW_WIDTH:I

    div-int/lit8 v19, v2, 0x2

    .line 991
    sget v2, Lcom/sec/android/app/camera/menu/OverlayLayout;->COVER_SCREEN_WINDOW_HEIGHT:I

    div-int/lit8 v20, v2, 0x2

    .line 997
    :goto_0
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/AfButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int v4, v4, v19

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v5, v5, v20

    int-to-float v5, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/AfButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    .line 998
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_TOUCH_AE:Z

    if-eqz v2, :cond_0

    .line 999
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/AfAeButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    .line 1002
    :cond_0
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGuideline()I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;-><init>(Lcom/samsung/android/glview/GLContext;IILandroid/graphics/Rect;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    .line 1003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGuideline()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1004
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setVisibility(I)V

    .line 1009
    :goto_1
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TOP_MARGIN:I

    int-to-float v4, v4

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeResourceString()Ljava/lang/String;

    move-result-object v8

    .line 1012
    .local v8, "mode":Ljava/lang/String;
    new-instance v2, Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    int-to-float v6, v3

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_HEIGHT:I

    int-to-float v7, v3

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v9, v3

    sget v10, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_COLOR:I

    const/4 v11, 0x0

    move-object/from16 v3, v17

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    .line 1013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1021
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1023
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->RATIO_4_3_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TOP_MARGIN:I

    sget v6, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_HEIGHT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->RATIO_4_3_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TOP_MARGIN:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1029
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_PORTRAIT_TOP_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_PORTRAIT_TOP_MARGIN:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    if-eqz v2, :cond_1

    .line 1037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1039
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1041
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1044
    :cond_2
    const/16 v2, 0xa

    new-array v2, v2, [Lcom/samsung/android/glview/GLCircle;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    .line 1046
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_3
    const/16 v2, 0xa

    move/from16 v0, v18

    if-ge v0, v2, :cond_6

    .line 1047
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    new-instance v9, Lcom/samsung/android/glview/GLCircle;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x42700000    # 60.0f

    const/high16 v14, 0x42700000    # 60.0f

    sget v15, Lcom/sec/android/app/camera/menu/OverlayLayout;->FACE_COLOR:I

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->FACE_CIRCLE_DEFAULT_THICKNESS:I

    int-to-float v0, v3

    move/from16 v16, v0

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLCircle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    aput-object v9, v2, v18

    .line 1048
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v2, v2, v18

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLCircle;->setVisibility(I)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v3, v3, v18

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1046
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 993
    .end local v8    # "mode":Ljava/lang/String;
    .end local v18    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v19, v2, 0x2

    .line 994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v20, v2, 0x2

    goto/16 :goto_0

    .line 1006
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1026
    .restart local v8    # "mode":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TOP_MARGIN:I

    sget v6, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_HEIGHT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TOP_MARGIN:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_2

    .line 1052
    .restart local v18    # "i":I
    :cond_6
    new-instance v9, Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x42700000    # 60.0f

    const/high16 v14, 0x42700000    # 60.0f

    sget v15, Lcom/sec/android/app/camera/menu/OverlayLayout;->PALM_COLOR:I

    sget v2, Lcom/sec/android/app/camera/menu/OverlayLayout;->PALM_RECT_DEFAULT_THICKNESS:I

    int-to-float v0, v2

    move/from16 v16, v0

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    .line 1053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1056
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_OBJECT_TRACKING_AF:Z

    if-eqz v2, :cond_7

    .line 1057
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const v4, 0x7f02000c

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;-><init>(Lcom/samsung/android/glview/GLContext;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->setVisibility(I)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1062
    :cond_7
    new-instance v9, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    sget v11, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    sget v12, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    sget v13, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    int-to-float v14, v2

    const-string v15, ""

    sget v2, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v16, v2, v3

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    .line 1063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget-boolean v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SET_SHADOW:Z

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT_VERTICAL:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setOrientation(I)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1075
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v2, :cond_8

    .line 1076
    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    sget v2, Lcom/sec/android/app/camera/menu/OverlayLayout;->OVERLAYLAYOUT_EFFECT_EDIT_X:I

    int-to-float v11, v2

    sget v2, Lcom/sec/android/app/camera/menu/OverlayLayout;->OVERLAYLAYOUT_EFFECT_EDIT_Y:I

    int-to-float v12, v2

    const v13, 0x7f0200b4

    const v14, 0x7f0200b5

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    .line 1079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/menu/OverlayLayout$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/OverlayLayout$4;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    const/16 v3, 0x232f

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    const v4, 0x7f0802eb

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    const v4, 0x7f0802ec

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1096
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideShootingModeText:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1b58

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerPhaseAFListener(Lcom/sec/android/app/camera/interfaces/CameraContext$PhaseAFListener;)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerMultiAFListener(Lcom/sec/android/app/camera/interfaces/CameraContext$MultiAFListener;)V

    .line 1106
    return-void
.end method

.method private needToSetShootingModeText()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1113
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCommandIdByCurrentShootingMode()I

    move-result v0

    .line 1115
    .local v0, "commandId":I
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-nez v2, :cond_1

    .line 1123
    :cond_0
    :goto_0
    return v1

    .line 1119
    :cond_1
    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1120
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private playFaceCount(I)V
    .locals 6
    .param p1, "faceCount"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1127
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1130
    if-nez p1, :cond_1

    .line 1131
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08020b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1142
    .local v0, "text":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1143
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v5, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1145
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 1132
    :cond_1
    if-ne p1, v3, :cond_2

    .line 1133
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080149

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1135
    .end local v0    # "text":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x3

    if-lt p1, v1, :cond_3

    .line 1136
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080207

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1138
    .end local v0    # "text":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080150

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0
.end method

.method private playFacePosition(II)V
    .locals 6
    .param p1, "faceCount"    # I
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1148
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1151
    if-nez p2, :cond_1

    .line 1152
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080208

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1158
    .local v0, "text":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1159
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v5, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1162
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 1153
    :cond_1
    if-ne p2, v3, :cond_2

    .line 1154
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080209

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1156
    .end local v0    # "text":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08020a

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0
.end method

.method private playFacePositionBasedScreenForVoiceGuide(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1170
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1171
    const-string v0, ""

    .line 1173
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1174
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08014c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1194
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1195
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1198
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 1175
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1176
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08014b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1177
    :cond_2
    const/4 v1, 0x7

    if-ne p1, v1, :cond_3

    .line 1178
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08014a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1180
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 1181
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080148

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1182
    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    .line 1183
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080147

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1184
    :cond_5
    const/16 v1, 0x8

    if-ne p1, v1, :cond_6

    .line 1185
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1187
    :cond_6
    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    .line 1188
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08014f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1189
    :cond_7
    const/4 v1, 0x6

    if-ne p1, v1, :cond_8

    .line 1190
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08014e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1192
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V
    .locals 7
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v0, 0x1

    const/high16 v6, 0x44fa0000    # 2000.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    .line 1201
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 1204
    .local v0, "mirror":Z
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1205
    .local v2, "previewWidth":I
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1207
    .local v1, "previewHeight":I
    if-eqz v0, :cond_2

    const/high16 v3, -0x40800000    # -1.0f

    :goto_1
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1209
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getDisplayOrientation()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1212
    int-to-float v3, v2

    div-float/2addr v3, v6

    int-to-float v4, v1

    div-float/2addr v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1213
    int-to-float v3, v2

    div-float/2addr v3, v5

    int-to-float v4, v1

    div-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1216
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isWidePreviewAspectRatio()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1217
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getViewMode()I

    move-result v3

    if-nez v3, :cond_0

    .line 1218
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FULL_SCREEN_PREVIEW_HEIGHT:I

    .line 1222
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1223
    return-void

    .line 1201
    .end local v0    # "mirror":Z
    .end local v1    # "previewHeight":I
    .end local v2    # "previewWidth":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "mirror":Z
    .restart local v1    # "previewHeight":I
    .restart local v2    # "previewWidth":I
    :cond_2
    move v3, v4

    .line 1207
    goto :goto_1
.end method

.method private resetFaceInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 1227
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aput-object v2, v1, v0

    .line 1226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1229
    :cond_0
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    .line 1230
    return-void
.end method

.method private setAlignForOrientation()V
    .locals 3

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1245
    :goto_0
    return-void

    .line 1236
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    goto :goto_0

    .line 1240
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v1, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    goto :goto_0

    .line 1233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setCoverCamera(Z)V
    .locals 2
    .param p1, "coverCamera"    # Z

    .prologue
    .line 1248
    if-nez p1, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1251
    :cond_0
    return-void
.end method

.method private showAfProgress()V
    .locals 2

    .prologue
    .line 1254
    const-string v0, "OverlayLayout"

    const-string v1, "showAfProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->showAfProgress()V

    .line 1258
    :cond_0
    return-void
.end method

.method private showMultiAFView()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1261
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    if-nez v0, :cond_0

    .line 1262
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;-><init>(Lcom/samsung/android/glview/GLContext;IILandroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    .line 1263
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    invoke-virtual {v0, v6, v5}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->setVisibility(IZ)V

    .line 1264
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getTouchAeLockState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isObjectTrackingAFStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 1268
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->getVisibility()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 1269
    const-string v0, "OverlayLayout"

    const-string v1, "showMultiAFView"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->setVisibility(IZ)V

    .line 1273
    :cond_1
    return-void
.end method

.method private updateFaceRect()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1276
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForFace:Landroid/graphics/Matrix;

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/OverlayLayout;->prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V

    .line 1278
    const/4 v0, 0x0

    .line 1280
    .local v0, "bUpdate":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v4, 0xa

    if-ge v2, v4, :cond_2

    .line 1281
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1282
    .local v1, "faceRect":Landroid/graphics/Rect;
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    add-int/lit8 v4, v4, -0x1

    if-gt v2, v4, :cond_0

    if-nez v1, :cond_1

    .line 1283
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v4, v4, v2

    invoke-virtual {v4, v11, v9}, Lcom/samsung/android/glview/GLCircle;->setVisibility(IZ)V

    .line 1284
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLCircle;->resetTranslate()V

    .line 1280
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1287
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1289
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForFace:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1291
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/samsung/android/glview/GLCircle;->setCircle(FFFF)V

    .line 1292
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v4, v4, v2

    invoke-virtual {v4, v9, v9}, Lcom/samsung/android/glview/GLCircle;->setVisibility(IZ)V

    .line 1294
    const/4 v0, 0x1

    goto :goto_1

    .line 1298
    .end local v1    # "faceRect":Landroid/graphics/Rect;
    :cond_2
    if-eqz v0, :cond_6

    .line 1299
    const/4 v3, 0x0

    .line 1301
    .local v3, "minFaceCount":I
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOldDetectedFaceCount:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    if-lt v4, v3, :cond_4

    .line 1302
    const-string v4, "OverlayLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateFaceRect: Face Detected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    .line 1305
    :cond_3
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLText;->getOrientation()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getRectPosition(II)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/menu/OverlayLayout;->playFacePosition(II)V

    .line 1312
    :cond_4
    :goto_2
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    iput v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOldDetectedFaceCount:I

    .line 1314
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/AfButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    .line 1315
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v4, v11, v9}, Lcom/sec/android/app/camera/widget/gl/AfButton;->setVisibility(IZ)V

    .line 1318
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v4

    if-ne v4, v10, :cond_6

    .line 1319
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideMultiAFView()V

    .line 1322
    .end local v3    # "minFaceCount":I
    :cond_6
    return-void

    .line 1306
    .restart local v3    # "minFaceCount":I
    :cond_7
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    if-ne v4, v10, :cond_8

    .line 1307
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLText;->getOrientation()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getRectPositionBasedScreenForVoiceGuide(ILandroid/graphics/RectF;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/OverlayLayout;->playFacePositionBasedScreenForVoiceGuide(I)V

    goto :goto_2

    .line 1309
    :cond_8
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/OverlayLayout;->playFaceCount(I)V

    goto :goto_2
.end method

.method private updatePalmRect()V
    .locals 10

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 1331
    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 1333
    .local v2, "faceRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideFaceRect(Z)V

    .line 1334
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForFace:Landroid/graphics/Matrix;

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/OverlayLayout;->prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V

    .line 1335
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1336
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForFace:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1338
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v7

    add-float v0, v5, v6

    .line 1339
    .local v0, "centerX":F
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v7

    add-float v1, v5, v6

    .line 1340
    .local v1, "centerY":F
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v3

    .local v3, "height":F
    :goto_0
    move v4, v3

    .line 1341
    .local v4, "width":F
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    div-float v6, v4, v7

    sub-float v6, v0, v6

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 1342
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    div-float v6, v3, v7

    sub-float v6, v1, v6

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 1344
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6, v7, v4, v3}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    .line 1345
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v5, v8, v8}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(IZ)V

    .line 1346
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5, v8}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    .line 1347
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x23

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1348
    return-void

    .line 1340
    .end local v3    # "height":F
    .end local v4    # "width":F
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideShootingModeText:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterPhaseAFListener()V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterMultiAFListener()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    if-eqz v0, :cond_1

    .line 197
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->resetFaceInfo()V

    .line 199
    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    .line 200
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 203
    return-void
.end method

.method public getFaceCount()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    return v0
.end method

.method public getPreviewOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method public getShootingModeOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method public hideDivideAFButton()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->hideDivideAFButton()V

    .line 222
    :cond_0
    return-void
.end method

.method public hideEffectEditButton()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 229
    :cond_0
    return-void
.end method

.method public hideFaceRect(Z)V
    .locals 5
    .param p1, "bAnimation"    # Z

    .prologue
    const/16 v4, 0xa

    .line 233
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    .line 266
    :cond_0
    return-void

    .line 236
    :cond_1
    if-eqz p1, :cond_2

    .line 237
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 238
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    new-instance v2, Lcom/sec/android/app/camera/menu/OverlayLayout$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$2;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 255
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 256
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 257
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLCircle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 258
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLCircle;->startAnimation()V

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    .end local v0    # "anim":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 262
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v2, v2, v1

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLCircle;->setVisibility(I)V

    .line 263
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLCircle;->resetTranslate()V

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public hideObjectTrackingView()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    if-nez v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->resetTranslate()V

    goto :goto_0
.end method

.method public hidePalmRect()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->resetTranslate()V

    goto :goto_0
.end method

.method public hideShootingModeText()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 290
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mIsShootingModeTextHidedByTimeOut:Z

    if-eqz v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideTouchAEButton()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->hideTouchAEButton()V

    .line 306
    :cond_0
    return-void
.end method

.method public hideTouchEVSlider()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->hideTouchEVSlider()V

    .line 313
    :cond_0
    return-void
.end method

.method public onCameraSettingChanged(II)V
    .locals 9
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x4

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 317
    const/4 v0, 0x0

    .line 319
    .local v0, "ratio_margin":I
    sparse-switch p1, :sswitch_data_0

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 322
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->showShootingModeText()V

    goto :goto_0

    .line 325
    :sswitch_1
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 326
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 327
    sget v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->RATIO_1_1_MARGIN:I

    .line 333
    :cond_1
    :goto_1
    if-nez p2, :cond_4

    .line 334
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v2, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_HEIGHT:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v6, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 336
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v2, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    invoke-virtual {v1, v7, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 338
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v2, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    add-float/2addr v2, v3

    int-to-float v3, v0

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_HEIGHT:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v5, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 340
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT_VERTICAL:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 342
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v7}, Lcom/samsung/android/glview/GLText;->updateLayout(Z)V

    .line 343
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0801d4

    new-array v4, v7, [Ljava/lang/Object;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 355
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v6}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 357
    iput-boolean v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mIsShootingModeTextHidedByTimeOut:Z

    .line 359
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideShootingModeText:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 361
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideShootingModeText:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1b58

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 329
    :cond_3
    sget v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->RATIO_4_3_MARGIN:I

    goto/16 :goto_1

    .line 344
    :cond_4
    if-ne p2, v7, :cond_2

    .line 345
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v2, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v6, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 346
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v2, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    invoke-virtual {v1, v7, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 348
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v2, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    add-float/2addr v2, v3

    int-to-float v3, v0

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v5, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 350
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT_VERTICAL:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 352
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v7}, Lcom/samsung/android/glview/GLText;->updateLayout(Z)V

    .line 353
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0801d3

    new-array v4, v7, [Ljava/lang/Object;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 365
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->resetFaceRect()V

    goto/16 :goto_0

    .line 370
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    if-eqz v1, :cond_0

    .line 371
    if-eqz p2, :cond_5

    .line 372
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setVisibility(I)V

    goto/16 :goto_0

    .line 374
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setVisibility(I)V

    goto/16 :goto_0

    .line 379
    :sswitch_4
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 380
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 381
    sget v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->RATIO_1_1_MARGIN:I

    .line 386
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v2, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TOP_MARGIN:I

    sget v4, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v6, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 387
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v2, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TOP_MARGIN:I

    int-to-float v3, v3

    invoke-virtual {v1, v5, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 388
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v7}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 383
    :cond_7
    sget v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->RATIO_4_3_MARGIN:I

    goto :goto_3

    .line 392
    :sswitch_5
    if-ne p2, v7, :cond_8

    .line 393
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setCoverCamera(Z)V

    goto/16 :goto_0

    .line 395
    :cond_8
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setCoverCamera(Z)V

    goto/16 :goto_0

    .line 399
    :sswitch_6
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v1

    if-eqz v1, :cond_9

    .line 401
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x232f

    invoke-interface {v1, v2, v6}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(IZ)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    .line 403
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    new-instance v2, Lcom/sec/android/app/camera/menu/OverlayLayout$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$3;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 410
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 319
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_4
        0x5 -> :sswitch_2
        0x8 -> :sswitch_6
        0x13 -> :sswitch_3
        0x4d -> :sswitch_1
        0x137 -> :sswitch_5
    .end sparse-switch
.end method

.method public onFocusStateChanged(I)V
    .locals 3
    .param p1, "focusState"    # I

    .prologue
    .line 420
    const-string v0, "OverlayLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusStateChanged:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    packed-switch p1, :pswitch_data_0

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 423
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 424
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideAfButton()V

    .line 428
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->showMultiAFView()V

    goto :goto_0

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideObjectTrackingView()V

    goto :goto_1

    .line 433
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideMultiAFView()V

    .line 434
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->showAfProgress()V

    goto :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMultiAFChanged([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 443
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->onMultiAFChanged([B)V

    .line 446
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 450
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 451
    iput p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    .line 454
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setAlignForOrientation()V

    .line 455
    return-void
.end method

.method public onPhaseAFChanged(II)V
    .locals 1
    .param p1, "positionGap"    # I
    .param p2, "reliability"    # I

    .prologue
    .line 459
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/AfButton;->setPositionGap(I)V

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/widget/gl/AfButton;->setReliability(I)V

    .line 465
    :cond_0
    return-void
.end method

.method public onTouchEVSliderTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->onTouchEVSliderTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 472
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshOverlayLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 478
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 486
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGuideline()I

    move-result v0

    if-eqz v0, :cond_3

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setVisibility(I)V

    .line 492
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getObjectTrackingAF()I

    move-result v0

    if-eqz v0, :cond_4

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isObjectTrackingAFStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->setVisibility(I)V

    .line 499
    :cond_1
    :goto_2
    return-void

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0

    .line 489
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setVisibility(I)V

    goto :goto_1

    .line 497
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideObjectTrackingView()V

    goto :goto_2
.end method

.method public resetFaceRect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideFaceRect(Z)V

    .line 508
    iput v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOldDetectedFaceCount:I

    .line 509
    iput v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    goto :goto_0
.end method

.method public setDivideAfPosition(II)V
    .locals 1
    .param p1, "afPosX"    # I
    .param p2, "afPosY"    # I

    .prologue
    .line 514
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->setDivideAfPosition(II)V

    .line 517
    :cond_0
    return-void
.end method

.method public setTouchAePosition(II)V
    .locals 1
    .param p1, "aePosX"    # I
    .param p2, "aePosY"    # I

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->setTouchAePosition(II)V

    .line 524
    :cond_0
    return-void
.end method

.method public setTouchAfPosition(II)V
    .locals 2
    .param p1, "afPosX"    # I
    .param p2, "afPosY"    # I

    .prologue
    .line 528
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/AfButton;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/AfButton;->setTouchAfPosition(II)V

    .line 532
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 535
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 537
    return-void
.end method

.method public showEffectEditButton()V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 544
    :cond_0
    return-void
.end method

.method public showShootingModeText()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x0

    .line 548
    const/4 v2, 0x0

    .line 550
    .local v2, "ratio_margin":I
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCommandIdByCurrentShootingMode()I

    move-result v4

    .line 551
    .local v4, "shootingModeCommandId":I
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getShootingmodeHelpTextResIdByCommandId(I)I

    move-result v0

    .line 552
    .local v0, "helpTextResId":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_4

    .line 553
    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIZE:F

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v7, v8

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v5

    .line 554
    .local v5, "stringHeight":F
    sget v6, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIZE:F

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v6

    int-to-float v3, v6

    .line 555
    .local v3, "rows":F
    sget v6, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIZE:F

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v6

    int-to-float v1, v6

    .line 556
    .local v1, "landscapeRows":F
    mul-float v6, v5, v3

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_LINE_SPACING:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v8, v3, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    .line 557
    mul-float v6, v5, v1

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_LINE_SPACING:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v8, v1, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    .line 563
    .end local v1    # "landscapeRows":F
    .end local v3    # "rows":F
    .end local v5    # "stringHeight":F
    :goto_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 564
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 565
    sget v2, Lcom/sec/android/app/camera/menu/OverlayLayout;->RATIO_1_1_MARGIN:I

    .line 571
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideShootingModeText()V

    .line 573
    sparse-switch v4, :sswitch_data_0

    .line 641
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 644
    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLText;->getOrientation()I

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLText;->getOrientation()I

    move-result v6

    if-ne v6, v13, :cond_8

    .line 645
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 649
    :goto_3
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v12}, Lcom/samsung/android/glview/GLText;->updateLayout(Z)V

    .line 651
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->needToSetShootingModeText()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 652
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeResourceString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 654
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v7, v2

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TOP_MARGIN:I

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_HEIGHT:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v6, v11, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 655
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v7, v2

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TOP_MARGIN:I

    int-to-float v8, v8

    invoke-virtual {v6, v13, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 656
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6, v11}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 658
    iput-boolean v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mIsShootingModeTextHidedByTimeOut:Z

    .line 660
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v6, :cond_3

    .line 661
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideShootingModeText:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 662
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideShootingModeText:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1b58

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 664
    :cond_3
    return-void

    .line 559
    :cond_4
    sget v6, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    iput v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    .line 560
    sget v6, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT_VERTICAL:I

    iput v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    goto/16 :goto_0

    .line 567
    :cond_5
    sget v2, Lcom/sec/android/app/camera/menu/OverlayLayout;->RATIO_4_3_MARGIN:I

    goto/16 :goto_1

    .line 581
    :sswitch_0
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    int-to-float v8, v2

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    invoke-virtual {v6, v11, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 582
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v6, v12, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 583
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    add-float/2addr v7, v8

    int-to-float v8, v2

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v6, v13, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 584
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v6, v14, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 585
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 586
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v11}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_2

    .line 590
    :sswitch_1
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN:F

    sub-float/2addr v8, v9

    invoke-virtual {v6, v11, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 591
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v6, v12, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 592
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v6, v13, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 593
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v6, v14, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 594
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 595
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v11}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_2

    .line 598
    :sswitch_2
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSoundAndShotMode()I

    move-result v6

    if-nez v6, :cond_7

    .line 599
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    int-to-float v8, v2

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

    sub-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_HEIGHT:F

    sub-float/2addr v8, v9

    invoke-virtual {v6, v11, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 600
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v6, v12, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 601
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    add-float/2addr v7, v8

    int-to-float v8, v2

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

    sub-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_HEIGHT:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v6, v13, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 602
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v6, v14, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 603
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0801d4

    new-array v9, v12, [Ljava/lang/Object;

    const/16 v10, 0x9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 611
    :cond_6
    :goto_4
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v11}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_2

    .line 604
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSoundAndShotMode()I

    move-result v6

    if-ne v6, v12, :cond_6

    .line 605
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    int-to-float v8, v2

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

    sub-float/2addr v8, v9

    invoke-virtual {v6, v11, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 606
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v6, v12, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 607
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    add-float/2addr v7, v8

    int-to-float v8, v2

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v6, v13, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 608
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v6, v14, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 609
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0801d3

    new-array v9, v12, [Ljava/lang/Object;

    const/16 v10, 0x9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_4

    .line 614
    :sswitch_3
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_REAR_CAM_SELFIE_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v6, v14, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 615
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v7, v0, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 616
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v11}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_2

    .line 619
    :sswitch_4
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    int-to-float v8, v2

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN:F

    sub-float/2addr v8, v9

    invoke-virtual {v6, v11, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 620
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    add-float/2addr v7, v8

    int-to-float v8, v2

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v6, v13, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 621
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v6, v12, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 622
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v6, v14, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 623
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 624
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v11}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_2

    .line 627
    :sswitch_5
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 630
    :sswitch_6
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    int-to-float v8, v2

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_FOOD_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v8, v9

    invoke-virtual {v6, v11, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 631
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    add-float/2addr v7, v8

    int-to-float v8, v2

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_FOOD_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v6, v13, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 633
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_FOOD_BOTTOM_MARGIN:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v6, v12, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 635
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_FOOD_BOTTOM_MARGIN:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v6, v14, v7, v8}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 637
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 638
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v11}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_2

    .line 647
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    sget v7, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    goto/16 :goto_3

    .line 573
    :sswitch_data_0
    .sparse-switch
        0x12e -> :sswitch_1
        0x13a -> :sswitch_0
        0x13f -> :sswitch_0
        0x149 -> :sswitch_2
        0x14d -> :sswitch_0
        0x151 -> :sswitch_0
        0x152 -> :sswitch_0
        0x154 -> :sswitch_5
        0x156 -> :sswitch_4
        0x157 -> :sswitch_3
        0x15b -> :sswitch_0
        0x15d -> :sswitch_0
        0x161 -> :sswitch_6
        0x162 -> :sswitch_1
    .end sparse-switch
.end method

.method public showTouchEVSlider()V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    if-nez v0, :cond_0

    .line 669
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    .line 670
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->setTouchEVSliderChangeListener(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;)V

    .line 671
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->showTouchEVSlider()V

    .line 674
    return-void
.end method

.method public updateFaceRect([Lcom/sec/android/seccamera/SecCamera$Face;)V
    .locals 6
    .param p1, "faces"    # [Lcom/sec/android/seccamera/SecCamera$Face;

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 678
    if-nez p1, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    aget-object v1, p1, v3

    iget v1, v1, Lcom/sec/android/seccamera/SecCamera$Face;->id:I

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_2

    .line 683
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->isVisible()I

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    iput v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    .line 688
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v2, p1, v3

    aput-object v2, v1, v3

    .line 690
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->updatePalmRect()V

    .line 692
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFaceRectVisibility(Z)V

    goto :goto_0

    .line 694
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isFaceRectVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 697
    array-length v1, p1

    iput v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    .line 699
    iget v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    if-le v1, v4, :cond_3

    .line 700
    iput v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    .line 703
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_5

    .line 704
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_4

    .line 705
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 703
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 707
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Lcom/sec/android/seccamera/SecCamera$Face;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    goto :goto_2

    .line 711
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->updateFaceRect()V

    goto :goto_0
.end method

.method public updateGuideLineSize()V
    .locals 3

    .prologue
    .line 717
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 718
    .local v0, "previewRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    if-eqz v1, :cond_0

    .line 719
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGuideline()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setGuideLineSize(Landroid/graphics/Rect;I)V

    .line 721
    :cond_0
    return-void
.end method

.method public updateMultiAFLayout()V
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->updateMultiAFLayout(Landroid/graphics/Rect;)V

    .line 728
    :cond_0
    return-void
.end method

.method public updateObjectTrackingRect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 732
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideObjectTrackingView()V

    .line 733
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForObjectTracking:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V

    .line 734
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getObjectTrackingRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 735
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForObjectTracking:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 736
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->setRect(FFFF)V

    .line 737
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->setVisibility(IZ)V

    .line 738
    return-void
.end method
