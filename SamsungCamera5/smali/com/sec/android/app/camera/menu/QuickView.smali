.class public Lcom/sec/android/app/camera/menu/QuickView;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "QuickView.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;
    }
.end annotation


# static fields
.field private static final KEYBOARD_COVER_OFFSET_POS_X:F

.field private static final MIN_SCALE_ALPHA_FACTOR:F = 0.4f

.field private static final QUICKVIEW_START_THRESHOLD_LANDSCAPE:F = 0.084375f

.field private static final QUICKVIEW_START_THRESHOLD_PORTRAIT:F = 0.15f

.field public static final REVIEW_ALPHA_VALUE:F = 0.45f

.field private static final REVIEW_ANIMATION_DURATION:I

.field private static final REVIEW_BUTTON_SIZE:F

.field private static REVIEW_DISPLAY_TIMEOUT:I = 0x0

.field private static final REVIEW_GROUP_GAP:F

.field private static final REVIEW_GROUP_HEIGHT:F

.field private static final REVIEW_GROUP_WIDTH:F

.field private static final REVIEW_NORMAL_HEIGHT:F

.field private static final REVIEW_NORMAL_POS_X:F

.field private static final REVIEW_NORMAL_WIDTH:F

.field private static final REVIEW_SQUARE_POS_X:F

.field private static final REVIEW_SQUARE_WIDTH:F

.field private static final REVIEW_TEXT_FONT_SIZE:F

.field private static final REVIEW_TEXT_STROKE_COLOR:I

.field private static final REVIEW_TEXT_STROKE_WIDTH:I

.field private static final REVIEW_WIDE_HEIGHT:F

.field private static final REVIEW_WIDE_POS_X:F

.field private static final REVIEW_WIDE_POS_Y:F

.field private static final REVIEW_WIDE_WIDTH:F

.field private static final SCREEN_HEIGHT:F

.field private static final SCREEN_WIDE_HEIGHT:F

.field private static final SCREEN_WIDE_WIDTH:F

.field private static final SCREEN_WIDTH:F

.field private static final TAG:Ljava/lang/String; = "QuickView"


# instance fields
.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCaptureFileName:Ljava/lang/String;

.field private mContentUri:Landroid/net/Uri;

.field private mCoverCamera:Z

.field private mCurrentType:I

.field private mDeleteButton:Lcom/samsung/android/glview/GLButton;

.field private mFitToScreen:Z

.field private mImageOrientation:I

.field private mInitQuickViewRunnable:Ljava/lang/Runnable;

.field private mLaunchChooserRunnable:Ljava/lang/Runnable;

.field private mLaunchGalleryRunnable:Ljava/lang/Runnable;

.field private mLaunchGalleryType:Ljava/lang/String;

.field private mNeedToRotateReviewImage:Z

.field private mQuickViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mQuickViewImage:Lcom/samsung/android/glview/GLImage;

.field private mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mQuickViewImageHeight:F

.field private mQuickViewImagePosX:F

.field private mQuickViewImagePosY:F

.field private mQuickViewImageWidth:F

.field private mQuickViewUpdating:Z

.field private mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

.field protected mReviewButtonListener:Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;

.field private mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mReviewImage:Lcom/samsung/android/glview/GLImage;

.field private mReviewImageHeight:F

.field private mReviewImagePosX:F

.field private mReviewImagePosY:F

.field private mReviewImageWidth:F

.field private final mReviewTimeOutCallback:Ljava/lang/Runnable;

.field private mScreenOrientation:I

.field private mShadowPadding:Landroid/graphics/Rect;

.field private mShareButton:Lcom/samsung/android/glview/GLButton;

.field private mShareViaImageHeight:F

.field private mShareViaImageWidth:F

.field private mShareViaWorking:Z

.field private mTouchStartX:F

.field private mTouchStartY:F

.field private overlapRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    .line 53
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    .line 54
    const v0, 0x7f0901bd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDE_WIDTH:F

    .line 55
    const v0, 0x7f0901bc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDE_HEIGHT:F

    .line 56
    const v0, 0x7f0901bb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_WIDTH:F

    .line 57
    const v0, 0x7f0901ba

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_HEIGHT:F

    .line 58
    const v0, 0x7f0901b9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_SQUARE_WIDTH:F

    .line 59
    const v0, 0x7f0901b6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_NORMAL_WIDTH:F

    .line 60
    const v0, 0x7f0901b4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_NORMAL_HEIGHT:F

    .line 61
    const v0, 0x7f0901b7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_POS_X:F

    .line 62
    const v0, 0x7f0901b5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_NORMAL_POS_X:F

    .line 63
    const v0, 0x7f0901b8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_SQUARE_POS_X:F

    .line 64
    sget v0, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_HEIGHT:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_POS_Y:F

    .line 65
    const v0, 0x7f090348

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    .line 66
    const v0, 0x7f090347

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    .line 67
    const v0, 0x7f090346

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_GAP:F

    .line 68
    const v0, 0x7f090345

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_BUTTON_SIZE:F

    .line 69
    const v0, 0x7f090349

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_TEXT_FONT_SIZE:F

    .line 70
    const v0, 0x7f09010a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->KEYBOARD_COVER_OFFSET_POS_X:F

    .line 71
    const v0, 0x7f0a0014

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_ANIMATION_DURATION:I

    .line 72
    const v0, 0x7f0a0053

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_TEXT_STROKE_WIDTH:I

    .line 73
    const v0, 0x7f0c003a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_TEXT_STROKE_COLOR:I

    .line 77
    const/16 v0, 0x7d0

    sput v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_DISPLAY_TIMEOUT:I

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/BaseMenuController;)V
    .locals 10
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "baseMenu"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 166
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v4, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 79
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;

    .line 80
    iput-boolean v8, p0, Lcom/sec/android/app/camera/menu/QuickView;->mFitToScreen:Z

    .line 81
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 82
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    .line 84
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 85
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    .line 87
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 88
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    .line 89
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    .line 90
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    .line 91
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    .line 93
    iput v7, p0, Lcom/sec/android/app/camera/menu/QuickView;->mImageOrientation:I

    .line 96
    iput v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    .line 97
    iput v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    .line 98
    iput v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImagePosX:F

    .line 99
    iput v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImagePosY:F

    .line 100
    iput v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaImageWidth:F

    .line 101
    iput v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaImageHeight:F

    .line 102
    iput-boolean v7, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaWorking:Z

    .line 103
    iput-boolean v7, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCoverCamera:Z

    .line 104
    iput v7, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCurrentType:I

    .line 107
    new-instance v0, Lcom/sec/android/app/camera/menu/QuickView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/QuickView$1;-><init>(Lcom/sec/android/app/camera/menu/QuickView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewTimeOutCallback:Ljava/lang/Runnable;

    .line 113
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCaptureFileName:Ljava/lang/String;

    .line 114
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mContentUri:Landroid/net/Uri;

    .line 115
    iput v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    .line 116
    iput v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    .line 117
    iput v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImagePosX:F

    .line 118
    iput v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImagePosY:F

    .line 122
    iput-boolean v7, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewUpdating:Z

    .line 123
    const-string v0, "quickview"

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchGalleryType:Ljava/lang/String;

    .line 125
    new-instance v0, Lcom/sec/android/app/camera/menu/QuickView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/QuickView$2;-><init>(Lcom/sec/android/app/camera/menu/QuickView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchGalleryRunnable:Ljava/lang/Runnable;

    .line 144
    new-instance v0, Lcom/sec/android/app/camera/menu/QuickView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/QuickView$3;-><init>(Lcom/sec/android/app/camera/menu/QuickView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchChooserRunnable:Ljava/lang/Runnable;

    .line 151
    new-instance v0, Lcom/sec/android/app/camera/menu/QuickView$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/QuickView$4;-><init>(Lcom/sec/android/app/camera/menu/QuickView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mInitQuickViewRunnable:Ljava/lang/Runnable;

    .line 168
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 169
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 171
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v4, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/QuickView;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 175
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v4, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    const v3, 0x7f0c000c

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 180
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/QuickView;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/QuickView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/QuickView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/QuickView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchGalleryType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/menu/QuickView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/QuickView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchGalleryType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/QuickView;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/QuickView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/QuickView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/QuickView;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCurrentType:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/QuickView;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/QuickView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/QuickView;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/QuickView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/QuickView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/QuickView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewTimeOutCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_DISPLAY_TIMEOUT:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/menu/QuickView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/QuickView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mInitQuickViewRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private addDeleteButton()V
    .locals 13

    .prologue
    .line 704
    const-string v0, "QuickView"

    const-string v1, "addDeleteButton"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    sget v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_BUTTON_SIZE:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v11, v0, v1

    .line 707
    .local v11, "image_x":F
    sget v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_BUTTON_SIZE:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v12, v0, v1

    .line 716
    .local v12, "image_y":F
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/QuickView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    const v6, 0x7f0201ce

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    .line 717
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v11, v12}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 718
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08013c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_TEXT_FONT_SIZE:F

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    const v3, 0x7f0c0039

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setText(Ljava/lang/String;FIZ)V

    .line 720
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    .line 721
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_BUTTON_SIZE:F

    add-float/2addr v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setTextPosition(FF)V

    .line 722
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setStroke(ZFI)V

    .line 723
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 724
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 725
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 726
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 728
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 729
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 732
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_GAP:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 733
    .local v9, "button_x":F
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 734
    .local v10, "button_y":F
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 737
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_GAP:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 738
    sget v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 739
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 742
    sget v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 743
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_GAP:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 744
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 747
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_GAP:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 749
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 752
    return-void
.end method

.method private addShareButton()V
    .locals 13

    .prologue
    .line 755
    const-string v0, "QuickView"

    const-string v1, "addShareButton"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    sget v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_BUTTON_SIZE:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v11, v0, v1

    .line 758
    .local v11, "image_x":F
    sget v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_BUTTON_SIZE:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v12, v0, v1

    .line 767
    .local v12, "image_y":F
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/QuickView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    const v6, 0x7f0201cf

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    .line 768
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v11, v12}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 769
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801d0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_TEXT_FONT_SIZE:F

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    const v3, 0x7f0c0039

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setText(Ljava/lang/String;FIZ)V

    .line 771
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    .line 772
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_BUTTON_SIZE:F

    add-float/2addr v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setTextPosition(FF)V

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setStroke(ZFI)V

    .line 774
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 775
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 776
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 777
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 779
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 780
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 783
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_GAP:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 784
    .local v9, "button_x":F
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 785
    .local v10, "button_y":F
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 788
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_GAP:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 789
    sget v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 790
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 793
    sget v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 794
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_GAP:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 795
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 798
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v9, v0, v1

    .line 799
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_GAP:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_GROUP_WIDTH:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v9, v10}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 803
    return-void
.end method

.method private adjustQuickViewSize(I)V
    .locals 8
    .param p1, "orientation"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 806
    iget-boolean v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewUpdating:Z

    if-eqz v4, :cond_1

    .line 807
    const-string v4, "QuickView"

    const-string v5, "adjustQuickViewSize : ignore this time. it will be adjust after updateQuickView"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v4

    if-nez v4, :cond_0

    .line 812
    const/4 v0, 0x0

    .line 813
    .local v0, "bFixedScale":Z
    sget v4, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    div-float v3, v4, v5

    .line 814
    .local v3, "screenRatio":F
    const-string v4, "QuickView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustQuickViewSize : mImageWidth width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    float-to-int v5, v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->isRegularResolution(II)Z

    move-result v4

    if-nez v4, :cond_a

    .line 816
    const/4 v2, 0x0

    .line 817
    .local v2, "newWidth":F
    const/4 v1, 0x0

    .line 818
    .local v1, "newHeight":F
    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mImageOrientation:I

    div-int/lit8 v4, v4, 0x5a

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_7

    .line 819
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    .line 820
    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    sget v5, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    div-float v1, v4, v5

    .line 821
    const-string v4, "QuickView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustQuickViewSize : landscape case, width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    rem-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_6

    .line 825
    div-float v4, v2, v3

    cmpl-float v4, v1, v4

    if-lez v4, :cond_2

    .line 826
    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    .line 827
    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    sget v5, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    div-float v2, v4, v5

    .line 828
    const/4 v0, 0x1

    .line 829
    const-string v4, "QuickView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustQuickViewSize : new scaled image for landscape. width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_2
    :goto_1
    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mImageOrientation:I

    div-int/lit8 v4, v4, 0x5a

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    rem-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_5

    :cond_3
    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mImageOrientation:I

    div-int/lit8 v4, v4, 0x5a

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_4

    rem-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_5

    :cond_4
    if-eqz v0, :cond_9

    .line 863
    :cond_5
    const-string v4, "QuickView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustQuickViewSize : set scaled image. width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v4, :cond_0

    .line 865
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4, v2, v1}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 866
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    sget v5, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    sub-float/2addr v5, v2

    div-float/2addr v5, v7

    sget v6, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    sub-float/2addr v6, v1

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    goto/16 :goto_0

    .line 832
    :cond_6
    sget v4, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_2

    .line 833
    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    .line 834
    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    sget v5, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    div-float v2, v4, v5

    .line 835
    const/4 v0, 0x1

    .line 836
    const-string v4, "QuickView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustQuickViewSize : new scaled image for portrait. width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 840
    :cond_7
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    .line 841
    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    sget v5, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    div-float v1, v4, v5

    .line 842
    const-string v4, "QuickView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustQuickViewSize : portrait case, width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    rem-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_8

    .line 846
    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    div-float/2addr v5, v3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 847
    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    .line 848
    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    sget v5, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    div-float v2, v4, v5

    .line 849
    const/4 v0, 0x1

    .line 850
    const-string v4, "QuickView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustQuickViewSize : new scaled image for landscape. width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 853
    :cond_8
    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    div-float/2addr v5, v3

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 854
    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    .line 855
    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    sget v5, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    div-float v2, v4, v5

    .line 856
    const/4 v0, 0x1

    .line 857
    const-string v4, "QuickView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustQuickViewSize : new scaled image for portrait. width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 869
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v4, :cond_0

    .line 870
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    iget v5, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    iget v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 871
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    iget v5, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImagePosX:F

    iget v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImagePosY:F

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    goto/16 :goto_0

    .line 875
    .end local v1    # "newHeight":F
    .end local v2    # "newWidth":F
    :cond_a
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    .line 876
    .restart local v2    # "newWidth":F
    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    sget v5, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    div-float v1, v4, v5

    .line 878
    .restart local v1    # "newHeight":F
    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mImageOrientation:I

    div-int/lit8 v4, v4, 0x5a

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_b

    rem-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_c

    :cond_b
    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mImageOrientation:I

    div-int/lit8 v4, v4, 0x5a

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_d

    rem-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_d

    .line 879
    :cond_c
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v4, :cond_0

    .line 880
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4, v2, v1}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 881
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    sget v5, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    sub-float/2addr v5, v2

    div-float/2addr v5, v7

    sget v6, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    sub-float/2addr v6, v1

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    goto/16 :goto_0

    .line 884
    :cond_d
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v4, :cond_0

    .line 885
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    iget v5, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    iget v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 886
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    iget v5, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImagePosX:F

    iget v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImagePosY:F

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    goto/16 :goto_0
.end method

.method private moveTransitionRatio(FF)V
    .locals 5
    .param p1, "size"    # F
    .param p2, "ratio"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 940
    iget-boolean v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewUpdating:Z

    if-eqz v1, :cond_1

    .line 941
    const-string v1, "QuickView"

    const-string v2, "moveTransitionRatio : ignore this time. QuickView image will be updated"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_0

    .line 949
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 950
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 954
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 955
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    sub-float v2, v4, p2

    mul-float/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    .line 962
    :goto_1
    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v2, p2

    add-float v0, v1, v2

    .line 963
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    goto :goto_0

    .line 958
    .end local v0    # "alpha":F
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    sub-float v2, p2, v4

    mul-float/2addr v2, p1

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    goto :goto_1
.end method

.method private resizeReviewImageWithAnimation()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 967
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    if-nez v1, :cond_1

    .line 968
    :cond_0
    const-string v1, "QuickView"

    const-string v2, "resizeReviewImageWithAnimation : did not updated review image"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :goto_0
    return-void

    .line 973
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 974
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 975
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 976
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 977
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 978
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 980
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/QuickView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v4, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDE_HEIGHT:F

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 981
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 982
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/QuickView;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 984
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    iget v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaImageWidth:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaImageHeight:F

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 985
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 986
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    sget v3, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/menu/QuickView;->KEYBOARD_COVER_OFFSET_POS_X:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaImageWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    sget v4, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaImageHeight:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 990
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 991
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v3, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/menu/QuickView;->KEYBOARD_COVER_OFFSET_POS_X:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 995
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2, v2}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    .line 997
    iput-boolean v13, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaWorking:Z

    .line 999
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_2

    .line 1000
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3ee66666    # 0.45f

    invoke-direct {v8, v1, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1001
    .local v8, "alphaAnim":Landroid/view/animation/Animation;
    invoke-virtual {v8, v13}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1002
    sget v1, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_ANIMATION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1004
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v8}, Lcom/samsung/android/glview/GLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1005
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->startAnimation()V

    .line 1008
    .end local v8    # "alphaAnim":Landroid/view/animation/Animation;
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDE_WIDTH:F

    div-float v11, v1, v2

    .line 1009
    .local v11, "reviewScaleWidth":F
    iget v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    div-float v10, v1, v2

    .line 1010
    .local v10, "reviewScaleHeight":F
    cmpl-float v1, v11, v10

    if-lez v1, :cond_5

    move v0, v11

    .line 1012
    .local v0, "aniScale":F
    :goto_3
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1013
    .local v9, "reviewAnimationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1014
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v5, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    sget v6, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_ANIMATION_DURATION:I

    move v1, v12

    move v2, v0

    move v3, v12

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1015
    new-instance v1, Lcom/sec/android/app/camera/menu/QuickView$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/QuickView$6;-><init>(Lcom/sec/android/app/camera/menu/QuickView;)V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1029
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v9}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1030
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 1031
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v7, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    goto/16 :goto_0

    .line 988
    .end local v0    # "aniScale":F
    .end local v9    # "reviewAnimationSet":Landroid/view/animation/AnimationSet;
    .end local v10    # "reviewScaleHeight":F
    .end local v11    # "reviewScaleWidth":F
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    sget v3, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaImageWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    sget v4, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaImageHeight:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    goto/16 :goto_1

    .line 993
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    sget v3, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    goto/16 :goto_2

    .restart local v10    # "reviewScaleHeight":F
    .restart local v11    # "reviewScaleWidth":F
    :cond_5
    move v0, v10

    .line 1010
    goto :goto_3
.end method

.method private setQuickViewAlpha(F)V
    .locals 6
    .param p1, "ratio"    # F

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1035
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_0

    .line 1036
    cmpl-float v1, p1, v0

    if-nez v1, :cond_2

    .line 1037
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 1038
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v5}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1053
    :cond_0
    :goto_0
    mul-float v1, p1, v4

    sub-float v1, v2, v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_7

    .line 1054
    .local v0, "alpha":F
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    if-eqz v1, :cond_1

    .line 1055
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setBaseMenuAlpha(F)V

    .line 1057
    :cond_1
    return-void

    .line 1040
    .end local v0    # "alpha":F
    :cond_2
    cmpl-float v1, p1, v2

    if-ltz v1, :cond_4

    .line 1041
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1042
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1044
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    goto :goto_0

    .line 1046
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    .line 1047
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1049
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    mul-float v1, p1, v4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    goto :goto_0

    :cond_6
    mul-float v1, p1, v4

    goto :goto_2

    .line 1053
    :cond_7
    mul-float v1, p1, v4

    sub-float v0, v2, v1

    goto :goto_1
.end method

.method private startHideQuickViewAnimation()V
    .locals 14

    .prologue
    .line 1060
    const-string v0, "QuickView"

    const-string v2, "startHideQuickViewAnimation"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->overlapRatio:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 1062
    const-string v0, "QuickView"

    const-string v2, "startHideQuickViewAnimation : ignore animation because move position is 0"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :goto_0
    return-void

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v0, :cond_1

    .line 1067
    const-string v0, "QuickView"

    const-string v2, "startHideQuickViewAnimation : did not updated mQuickViewImageGroup"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1072
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 1073
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v13

    .line 1077
    .local v13, "size":F
    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->overlapRatio:F

    mul-float v1, v0, v13

    .line 1079
    .local v1, "deltaY":F
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v12, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1080
    .local v12, "hideQuickViewAnimation":Landroid/view/animation/AnimationSet;
    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 1081
    :cond_3
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    float-to-int v5, v13

    float-to-int v6, v13

    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    sget v8, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1088
    :goto_2
    const v0, 0x3ecccccd    # 0.4f

    const v2, 0x3f19999a    # 0.6f

    iget v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->overlapRatio:F

    mul-float/2addr v2, v3

    add-float v11, v0, v2

    .line 1089
    .local v11, "alpha":F
    const v0, 0x3ecccccd    # 0.4f

    sget v2, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    invoke-static {v11, v0, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaAnimation(FFI)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1092
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1094
    new-instance v0, Lcom/sec/android/app/camera/menu/QuickView$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/QuickView$7;-><init>(Lcom/sec/android/app/camera/menu/QuickView;)V

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1110
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1111
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 1113
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    goto :goto_0

    .line 1075
    .end local v1    # "deltaY":F
    .end local v11    # "alpha":F
    .end local v12    # "hideQuickViewAnimation":Landroid/view/animation/AnimationSet;
    .end local v13    # "size":F
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v13

    .restart local v13    # "size":F
    goto :goto_1

    .line 1084
    .restart local v1    # "deltaY":F
    .restart local v12    # "hideQuickViewAnimation":Landroid/view/animation/AnimationSet;
    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    neg-float v5, v1

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    float-to-int v7, v13

    float-to-int v8, v13

    new-instance v9, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v9}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    sget v10, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    invoke-static/range {v2 .. v10}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2
.end method

.method private startShowQuickViewAnimation()V
    .locals 14

    .prologue
    .line 1117
    const-string v0, "QuickView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startShowQuickViewAnimation : from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->overlapRatio:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% to 100%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v0, :cond_0

    .line 1120
    const-string v0, "QuickView"

    const-string v1, "startShowQuickViewAnimation : did not updated mQuickViewImageGroup"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :goto_0
    return-void

    .line 1127
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1128
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v13

    .line 1132
    .local v13, "size":F
    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->overlapRatio:F

    mul-float v11, v0, v13

    .line 1134
    .local v11, "deltaY":F
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v12, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1135
    .local v12, "showQuickViewAnimation":Landroid/view/animation/AnimationSet;
    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1136
    :cond_2
    const/4 v0, 0x0

    sub-float v1, v13, v11

    neg-float v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    float-to-int v5, v13

    float-to-int v6, v13

    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    sget v8, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1143
    :goto_2
    const v0, 0x3ecccccd    # 0.4f

    const v1, 0x3f19999a    # 0.6f

    iget v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->overlapRatio:F

    mul-float/2addr v1, v2

    add-float v9, v0, v1

    .line 1144
    .local v9, "alpha":F
    const/high16 v0, 0x3f800000    # 1.0f

    sget v1, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    invoke-static {v9, v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaAnimation(FFI)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1147
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1149
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->overlapRatio:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_3
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v10, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1150
    .local v10, "alphaAnim":Landroid/view/animation/Animation;
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1151
    sget v0, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v0, v0

    invoke-virtual {v10, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1153
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v10}, Lcom/samsung/android/glview/GLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1154
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->startAnimation()V

    .line 1155
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(IZ)V

    .line 1157
    new-instance v0, Lcom/sec/android/app/camera/menu/QuickView$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/QuickView$8;-><init>(Lcom/sec/android/app/camera/menu/QuickView;)V

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1172
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1173
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 1175
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 1176
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchGalleryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1177
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchGalleryRunnable:Ljava/lang/Runnable;

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/sec/android/app/camera/menu/QuickView;->overlapRatio:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1130
    .end local v9    # "alpha":F
    .end local v10    # "alphaAnim":Landroid/view/animation/Animation;
    .end local v11    # "deltaY":F
    .end local v12    # "showQuickViewAnimation":Landroid/view/animation/AnimationSet;
    .end local v13    # "size":F
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v13

    .restart local v13    # "size":F
    goto/16 :goto_1

    .line 1139
    .restart local v11    # "deltaY":F
    .restart local v12    # "showQuickViewAnimation":Landroid/view/animation/AnimationSet;
    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    sub-float v3, v13, v11

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    float-to-int v5, v13

    float-to-int v6, v13

    new-instance v7, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v7}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    sget v8, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_2

    .line 1149
    .restart local v9    # "alpha":F
    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->overlapRatio:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    goto/16 :goto_3
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    const-string v0, "QuickView"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewTimeOutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchChooserRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchGalleryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mInitQuickViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/QuickView;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 196
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/QuickView;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    .line 202
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    .line 205
    :cond_2
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 206
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 207
    return-void
.end method

.method public clearQuickViewImage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    const-string v0, "QuickView"

    const-string v1, "clearQuickViewImage"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 214
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 218
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 220
    :cond_0
    return-void
.end method

.method public getCaptureFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCaptureFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCurrentType:I

    return v0
.end method

.method public hideQuickView()V
    .locals 2

    .prologue
    .line 235
    const-string v0, "QuickView"

    const-string v1, "hideQuickView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 240
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/QuickView;->setQuickViewAlpha(F)V

    .line 241
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/QuickView;->initQuickViewDragging()V

    .line 242
    return-void
.end method

.method public hideReview()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 245
    const-string v0, "QuickView"

    const-string v1, "hideReview"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 253
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaWorking:Z

    .line 254
    return-void
.end method

.method protected initQuickViewDragging()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x4

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 894
    const-string v0, "QuickView"

    const-string v1, "initQuickViewDragging"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iput v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mTouchStartX:F

    .line 896
    iput v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mTouchStartY:F

    .line 900
    iput v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->overlapRatio:F

    .line 902
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 904
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    .line 905
    iput-object v11, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    .line 907
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v4, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    const v3, 0x7f0c000c

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    const/4 v8, 0x1

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    .line 909
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLRectangle;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 910
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 911
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v10}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    .line 915
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v10}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 916
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 917
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    .line 918
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    .line 919
    const/4 v9, 0x0

    .line 920
    .local v9, "size":F
    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v0

    int-to-float v9, v0

    .line 922
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v9, v2}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    .line 928
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->bringToFront()V

    .line 929
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    .line 931
    .end local v9    # "size":F
    :cond_2
    return-void

    .line 924
    .restart local v9    # "size":F
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v0

    int-to-float v9, v0

    .line 925
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    neg-float v1, v9

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    goto :goto_0
.end method

.method public isQuickViewImageUpdated()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isShareViaWorking()Z
    .locals 1

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaWorking:Z

    return v0
.end method

.method protected launchGallery()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchGalleryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 699
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchGalleryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 701
    :cond_0
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;->onDeleteClicked()V

    .line 271
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;->onShareClicked()V

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 276
    iget v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    if-eq v0, p1, :cond_0

    .line 277
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/QuickView;->adjustQuickViewSize(I)V

    .line 278
    iput p1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideQuickView()V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideReview(Z)V

    .line 285
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    .line 286
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->isAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v2

    .line 294
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideReview(Z)V

    goto :goto_0

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const-string v0, "reviewon"

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchGalleryType:Ljava/lang/String;

    .line 300
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/QuickView;->launchGallery()V

    goto :goto_0
.end method

.method public quickViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    move v4, v6

    .line 377
    :goto_0
    return v4

    :pswitch_0
    move v4, v5

    .line 311
    goto :goto_0

    .line 313
    :pswitch_1
    iput v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->overlapRatio:F

    .line 314
    const/4 v2, 0x0

    .line 315
    .local v2, "scale":F
    const/4 v0, 0x0

    .line 316
    .local v0, "move":F
    const/4 v3, 0x0

    .line 317
    .local v3, "size":F
    const/4 v1, 0x0

    .line 319
    .local v1, "movePoint":F
    iget v7, p0, Lcom/sec/android/app/camera/menu/QuickView;->mTouchStartX:F

    cmpl-float v7, v7, v4

    if-nez v7, :cond_0

    iget v7, p0, Lcom/sec/android/app/camera/menu/QuickView;->mTouchStartY:F

    cmpl-float v7, v7, v4

    if-nez v7, :cond_0

    .line 320
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mTouchStartX:F

    .line 321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mTouchStartY:F

    move v4, v5

    .line 322
    goto :goto_0

    .line 325
    :cond_0
    iget v7, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    if-ne v7, v8, :cond_2

    .line 326
    :cond_1
    iget v7, p0, Lcom/sec/android/app/camera/menu/QuickView;->mTouchStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    sub-float v1, v7, v8

    .line 327
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v7

    int-to-float v3, v7

    .line 332
    :goto_1
    cmpl-float v7, v1, v3

    if-ltz v7, :cond_3

    move v0, v4

    .line 333
    :goto_2
    const/high16 v4, 0x3f800000    # 1.0f

    div-float v7, v0, v3

    sub-float/2addr v4, v7

    iput v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->overlapRatio:F

    .line 335
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    if-nez v4, :cond_4

    move v4, v5

    .line 336
    goto :goto_0

    .line 329
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/menu/QuickView;->mTouchStartY:F

    sub-float v1, v7, v8

    .line 330
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v7

    int-to-float v3, v7

    goto :goto_1

    .line 332
    :cond_3
    sub-float v0, v3, v1

    goto :goto_2

    .line 339
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_5

    .line 340
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 343
    :cond_5
    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->overlapRatio:F

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/camera/menu/QuickView;->moveTransitionRatio(FF)V

    .line 344
    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->overlapRatio:F

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/QuickView;->setQuickViewAlpha(F)V

    move v4, v5

    .line 346
    goto/16 :goto_0

    .line 350
    .end local v0    # "move":F
    .end local v1    # "movePoint":F
    .end local v2    # "scale":F
    .end local v3    # "size":F
    :pswitch_2
    iget v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    if-ne v6, v8, :cond_7

    :cond_6
    iget v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->overlapRatio:F

    const v7, 0x3daccccd

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    .line 351
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/QuickView;->startShowQuickViewAnimation()V

    move v4, v5

    .line 352
    goto/16 :goto_0

    .line 353
    :cond_7
    iget v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->overlapRatio:F

    const v7, 0x3e19999a    # 0.15f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_8

    .line 354
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/QuickView;->startShowQuickViewAnimation()V

    move v4, v5

    .line 355
    goto/16 :goto_0

    .line 357
    :cond_8
    iget v6, p0, Lcom/sec/android/app/camera/menu/QuickView;->overlapRatio:F

    invoke-static {v6, v4}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    if-eqz v4, :cond_b

    .line 358
    const/4 v3, 0x0

    .line 359
    .restart local v3    # "size":F
    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    if-ne v4, v8, :cond_a

    .line 360
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v4

    int-to-float v3, v4

    .line 364
    :goto_3
    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->overlapRatio:F

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/camera/menu/QuickView;->moveTransitionRatio(FF)V

    .line 365
    iget v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->overlapRatio:F

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/QuickView;->setQuickViewAlpha(F)V

    .line 367
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideQuickView()V

    .end local v3    # "size":F
    :goto_4
    move v4, v5

    .line 371
    goto/16 :goto_0

    .line 362
    .restart local v3    # "size":F
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v4

    int-to-float v3, v4

    goto :goto_3

    .line 369
    .end local v3    # "size":F
    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/QuickView;->startHideQuickViewAnimation()V

    goto :goto_4

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeReviewTimeOutCallback()V
    .locals 2

    .prologue
    .line 381
    const-string v0, "QuickView"

    const-string v1, "removeReviewTimeOutCallback"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewTimeOutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 383
    return-void
.end method

.method public setCoverCamera(Z)V
    .locals 1
    .param p1, "coverCamera"    # Z

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCoverCamera:Z

    if-eq v0, p1, :cond_0

    .line 387
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCoverCamera:Z

    .line 389
    :cond_0
    return-void
.end method

.method public setReviewButtonListener(Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewButtonListener:Lcom/sec/android/app/camera/menu/QuickView$ReviewButtonListener;

    .line 393
    return-void
.end method

.method public showQuickView()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 396
    const-string v0, "QuickView"

    const-string v1, "showQuickView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_3

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 413
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_4

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 416
    :cond_4
    return-void
.end method

.method public startShareViaAnimation()V
    .locals 4

    .prologue
    .line 419
    const-string v0, "QuickView"

    const-string v1, "startShareViaAnimation"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/QuickView;->resizeReviewImageWithAnimation()V

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchChooserRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView;->mLaunchChooserRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_ANIMATION_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 424
    return-void
.end method

.method public startShowReviewAnimation()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const v0, 0x3fb33333    # 1.4f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 427
    const-string v2, "QuickView"

    const-string v3, "startShowReviewAnimation"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v2, :cond_0

    .line 430
    const-string v0, "QuickView"

    const-string v1, "startShowReviewAnimation : did not updated ReviewGroup"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v2, :cond_1

    .line 435
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const v3, 0x3ee66666    # 0.45f

    invoke-direct {v8, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 436
    .local v8, "alphaAnim":Landroid/view/animation/Animation;
    invoke-virtual {v8, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 437
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_ANIMATION_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 439
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2, v8}, Lcom/samsung/android/glview/GLRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 440
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLRectangle;->startAnimation()V

    .line 441
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2, v7, v7}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(IZ)V

    .line 444
    .end local v8    # "alphaAnim":Landroid/view/animation/Animation;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v2, :cond_2

    .line 445
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 448
    :cond_2
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 449
    .local v9, "reviewAnimationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 450
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v5}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    sget v6, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    move v2, v0

    move v3, v1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 451
    sget v0, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_ANIMATION_DURATION:I

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 452
    new-instance v0, Lcom/sec/android/app/camera/menu/QuickView$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/QuickView$5;-><init>(Lcom/sec/android/app/camera/menu/QuickView;)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v7, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 473
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/menu/QuickView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateQuickView(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 16
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "captureFileName"    # Ljava/lang/String;
    .param p4, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 477
    const-string v2, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateQuickView**StartU["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 480
    .local v14, "startTime":J
    if-nez p1, :cond_0

    .line 481
    const-string v2, "QuickView"

    const-string v3, "bitmap is null!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/QuickView;->clearQuickViewImage()V

    .line 565
    :goto_0
    return-void

    .line 486
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewUpdating:Z

    .line 488
    const/4 v13, 0x0

    .line 489
    .local v13, "needToRotateQuickViewImage":Z
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/menu/QuickView;->mImageOrientation:I

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/LatestMedia;->getType()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mCurrentType:I

    .line 494
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/16 v2, 0x5a

    move/from16 v0, p2

    if-eq v0, v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    const/16 v2, 0x10e

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    .line 495
    :cond_3
    const/4 v13, 0x1

    .line 498
    :cond_4
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/QuickView;->mCaptureFileName:Ljava/lang/String;

    .line 499
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/QuickView;->mContentUri:Landroid/net/Uri;

    .line 501
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->isRegularResolution(II)Z

    move-result v2

    if-nez v2, :cond_9

    .line 502
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_8

    .line 503
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    .line 504
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    .line 534
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/QuickView;->clearQuickViewImage()V

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v2, :cond_5

    .line 536
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/QuickView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDE_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDE_HEIGHT:F

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 539
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    if-nez v2, :cond_6

    .line 542
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/QuickView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    .line 543
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImagePosY:F

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 545
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/menu/QuickView;->KEYBOARD_COVER_OFFSET_POS_X:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImagePosX:F

    .line 549
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImagePosX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImagePosY:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 554
    :cond_6
    div-int/lit8 v12, p2, 0x5a

    .line 555
    .local v12, "defaultOrientation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v12}, Lcom/samsung/android/glview/GLImage;->setDefaultOrientation(I)V

    .line 556
    if-eqz v13, :cond_7

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    const/16 v3, 0xb4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->rotateDegree(I)V

    .line 559
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 561
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewUpdating:Z

    .line 563
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/menu/QuickView;->adjustQuickViewSize(I)V

    .line 564
    const-string v2, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateQuickView**EndU["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]** "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 506
    .end local v12    # "defaultOrientation":I
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    .line 507
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    goto/16 :goto_1

    .line 510
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->getAspectRatio(II)D

    move-result-wide v10

    .line 511
    .local v10, "aspectRatio":D
    invoke-static {v10, v11}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v9

    .line 512
    .local v9, "aspectRatioType":I
    if-nez v9, :cond_c

    .line 513
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mCurrentType:I

    if-nez v2, :cond_b

    .line 514
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_a

    .line 515
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    .line 516
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    goto/16 :goto_1

    .line 518
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    .line 519
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    goto/16 :goto_1

    .line 522
    :cond_b
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    .line 523
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    goto/16 :goto_1

    .line 525
    :cond_c
    const/4 v2, 0x2

    if-ne v9, v2, :cond_d

    .line 526
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    .line 527
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    goto/16 :goto_1

    .line 529
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    .line 530
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageHeight:F

    goto/16 :goto_1

    .line 547
    .end local v9    # "aspectRatioType":I
    .end local v10    # "aspectRatio":D
    :cond_e
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImageWidth:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mQuickViewImagePosX:F

    goto/16 :goto_2
.end method

.method public updateReview(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 16
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "captureFileName"    # Ljava/lang/String;
    .param p4, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 568
    const-string v2, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReview**StartU["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 570
    .local v14, "startTime":J
    if-nez p1, :cond_0

    .line 571
    const-string v2, "QuickView"

    const-string v3, "bitmap is null!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :goto_0
    return-void

    .line 575
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    if-eqz v2, :cond_1

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 578
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    .line 581
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mNeedToRotateReviewImage:Z

    .line 582
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/16 v2, 0x5a

    move/from16 v0, p2

    if-eq v0, v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mScreenOrientation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    const/16 v2, 0x10e

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    .line 583
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mNeedToRotateReviewImage:Z

    .line 586
    :cond_4
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/QuickView;->mCaptureFileName:Ljava/lang/String;

    .line 587
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/QuickView;->mContentUri:Landroid/net/Uri;

    .line 589
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->isRegularResolution(II)Z

    move-result v2

    if-nez v2, :cond_c

    .line 590
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_b

    .line 591
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    .line 592
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_WIDTH:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    .line 622
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    sget v3, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaImageWidth:F

    .line 623
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaImageHeight:F

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    if-nez v2, :cond_5

    .line 626
    new-instance v2, Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_HEIGHT:F

    const v8, 0x7f0c000c

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLRectangle;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(IZ)V

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewBlackBackground:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/QuickView;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 633
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v2, :cond_6

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/QuickView;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 636
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 639
    :cond_6
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/QuickView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDE_WIDTH:F

    sget v7, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDE_HEIGHT:F

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const v3, 0x7f0201da

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setNinePatchBackground(I)Z

    .line 641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/QuickView;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 644
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mNeedToRotateReviewImage:Z

    if-eqz v2, :cond_7

    .line 645
    const/16 v2, 0xb4

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 647
    :cond_7
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/QuickView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaImageWidth:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShareViaImageHeight:F

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLImage;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setClickable(Z)V

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0800c8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    .line 652
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_POS_Y:F

    sget v3, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_HEIGHT:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImagePosY:F

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 654
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->SCREEN_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/menu/QuickView;->KEYBOARD_COVER_OFFSET_POS_X:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImagePosX:F

    .line 665
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImagePosX:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImagePosY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_8

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->clear()V

    .line 677
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mShareButton:Lcom/samsung/android/glview/GLButton;

    .line 679
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v2

    if-nez v2, :cond_9

    .line 680
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/QuickView;->addShareButton()V

    .line 683
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_a

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->clear()V

    .line 686
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    .line 688
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/QuickView;->addDeleteButton()V

    .line 689
    const-string v2, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateReview**EndU["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]** "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 594
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_HEIGHT:F

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    .line 595
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    goto/16 :goto_1

    .line 598
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->getAspectRatio(II)D

    move-result-wide v12

    .line 599
    .local v12, "aspectRatio":D
    invoke-static {v12, v13}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v11

    .line 600
    .local v11, "aspectRatioType":I
    if-nez v11, :cond_f

    .line 601
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mCurrentType:I

    if-nez v2, :cond_e

    .line 602
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_d

    .line 603
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    .line 604
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_WIDTH:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    goto/16 :goto_1

    .line 606
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_HEIGHT:F

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    .line 607
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    goto/16 :goto_1

    .line 610
    :cond_e
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    .line 611
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    goto/16 :goto_1

    .line 613
    :cond_f
    const/4 v2, 0x2

    if-ne v11, v2, :cond_10

    .line 614
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_SQUARE_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    .line 615
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_SQUARE_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    goto/16 :goto_1

    .line 617
    :cond_10
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_NORMAL_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    .line 618
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_NORMAL_HEIGHT:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageHeight:F

    goto/16 :goto_1

    .line 656
    .end local v11    # "aspectRatioType":I
    .end local v12    # "aspectRatio":D
    :cond_11
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 657
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_POS_X:F

    sget v3, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_WIDE_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImagePosX:F

    goto/16 :goto_2

    .line 658
    :cond_12
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 659
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_SQUARE_POS_X:F

    sget v3, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_SQUARE_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImagePosX:F

    goto/16 :goto_2

    .line 661
    :cond_13
    sget v2, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_NORMAL_POS_X:F

    sget v3, Lcom/sec/android/app/camera/menu/QuickView;->REVIEW_NORMAL_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImageWidth:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/QuickView;->mReviewImagePosX:F

    goto/16 :goto_2
.end method
