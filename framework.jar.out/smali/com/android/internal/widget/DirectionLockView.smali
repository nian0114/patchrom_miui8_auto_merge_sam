.class public Lcom/android/internal/widget/DirectionLockView;
.super Landroid/widget/RelativeLayout;
.source "DirectionLockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/DirectionLockView$2;,
        Lcom/android/internal/widget/DirectionLockView$Direction;
    }
.end annotation


# static fields
.field public static DEFAULT_ARROW_SIZE:I

.field private static DIRECTION_TOLERANCE_ANGLE:D

.field public static FOUR_CONFIGURATION_MODE:Z


# instance fields
.field private ARROW_SIZE:I

.field private REFERENCE_SQUARE_DIMENSION:I

.field private SETTINGS_APP:Z

.field private TAG:Ljava/lang/String;

.field private final TTS_DEFAULT_RATE_STRING:Ljava/lang/String;

.field _TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private currentErrorResId:I

.field private isParentArrowSize:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAllow:Z

.field private mAllowDouble:Z

.field mBeepEast:Landroid/media/MediaPlayer;

.field mBeepNorth:Landroid/media/MediaPlayer;

.field mBeepSouth:Landroid/media/MediaPlayer;

.field mBeepWest:Landroid/media/MediaPlayer;

.field private mBlankBitmap:Landroid/graphics/Bitmap;

.field private mBottomY:D

.field private mCurBitmap:Landroid/graphics/Bitmap;

.field private mCurrentPassword:Ljava/lang/String;

.field private mCurrentPasswordNumbers:Ljava/lang/String;

.field private mDirectionBitmapDown:Landroid/graphics/Bitmap;

.field private mDirectionBitmapLeft:Landroid/graphics/Bitmap;

.field private mDirectionBitmapRight:Landroid/graphics/Bitmap;

.field private mDirectionBitmapUp:Landroid/graphics/Bitmap;

.field private mDirectionDetected:Z

.field private mDirectionImageView:Landroid/widget/ImageView;

.field private mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

.field private mDownAnnounce:Ljava/lang/String;

.field private final mDownChar:C

.field private final mDownNumber:I

.field private mErrorBitmap:Landroid/graphics/Bitmap;

.field private mForceRestart:Z

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInsideReferenceSquare:Z

.field private mLeftAnnounce:Ljava/lang/String;

.field private final mLeftChar:C

.field private final mLeftNumber:I

.field private mLeftX:D

.field private mParentArrowSize:I

.field private mPlayBeep:Z

.field private mPlayVibration:Z

.field private mPlayVoice:Z

.field private mRightAnnounce:Ljava/lang/String;

.field private final mRightChar:C

.field private final mRightNumber:I

.field private mRightX:D

.field private mScreenHeight:D

.field private mScreenWidth:D

.field private mShowArrow:Z

.field private mSquare_size:D

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTopY:D

.field private mTradeSpace:D

.field private mUpAnnounce:Ljava/lang/String;

.field private final mUpChar:C

.field private final mUpNumber:I

.field private mVibratePattern:I

.field private final mVibration_pattern_down:I

.field private final mVibration_pattern_left:I

.field private final mVibration_pattern_right:I

.field private final mVibration_pattern_up:I

.field private mVibrator:Landroid/os/Vibrator;

.field myContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide v0, 0x4056800000000000L    # 90.0

    sput-wide v0, Lcom/android/internal/widget/DirectionLockView;->DIRECTION_TOLERANCE_ANGLE:D

    const/16 v0, 0xb6

    sput v0, Lcom/android/internal/widget/DirectionLockView;->DEFAULT_ARROW_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/DirectionLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/DirectionLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v4, 0xc36f

    const v3, 0xc36b

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "DirectionLockView"

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->SETTINGS_APP:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DirectionLockView;->mAllowDouble:Z

    iput v2, p0, Lcom/android/internal/widget/DirectionLockView;->mParentArrowSize:I

    iput v2, p0, Lcom/android/internal/widget/DirectionLockView;->currentErrorResId:I

    const-string v0, "tts_default_rate"

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TTS_DEFAULT_RATE_STRING:Ljava/lang/String;

    const/16 v0, 0x55

    iput-char v0, p0, Lcom/android/internal/widget/DirectionLockView;->mUpChar:C

    const/16 v0, 0x44

    iput-char v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDownChar:C

    const/16 v0, 0x4c

    iput-char v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftChar:C

    const/16 v0, 0x52

    iput-char v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightChar:C

    const/16 v0, 0x31

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->mUpNumber:I

    const/16 v0, 0x39

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftNumber:I

    const/16 v0, 0x33

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightNumber:I

    const/16 v0, 0x37

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDownNumber:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->REFERENCE_SQUARE_DIMENSION:I

    iput v3, p0, Lcom/android/internal/widget/DirectionLockView;->mVibration_pattern_up:I

    iput v3, p0, Lcom/android/internal/widget/DirectionLockView;->mVibration_pattern_down:I

    iput v4, p0, Lcom/android/internal/widget/DirectionLockView;->mVibration_pattern_right:I

    iput v4, p0, Lcom/android/internal/widget/DirectionLockView;->mVibration_pattern_left:I

    new-instance v0, Lcom/android/internal/widget/DirectionLockView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DirectionLockView$1;-><init>(Lcom/android/internal/widget/DirectionLockView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->_TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    iput-object p1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->initDirectionLockView()V

    return-void
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .local v2, "height":I
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v4, "width":I
    const/4 v3, 0x1

    .local v3, "inSampleSize":I
    if-gt v2, p3, :cond_0

    if-le v4, p2, :cond_1

    :cond_0
    div-int/lit8 v0, v2, 0x2

    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p3, :cond_1

    div-int v5, v1, v3

    if-le v5, p2, :cond_1

    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method private calculateTradeSpace(DD)D
    .locals 7
    .param p1, "sqaure_size"    # D
    .param p3, "toleranceAngle"    # D

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in calculateTradeSpace()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    div-double v0, p1, v4

    div-double v2, p3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    div-double v4, p1, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    goto :goto_0
.end method

.method private createReferenceSquare(DDZ)V
    .locals 9
    .param p1, "eventX"    # D
    .param p3, "eventY"    # D
    .param p5, "doScreenCorrection"    # Z

    .prologue
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in createReferenceSquare()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    div-double/2addr v0, v2

    sub-double v0, p1, v0

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    div-double/2addr v0, v2

    sub-double v0, p3, v0

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    div-double/2addr v0, v2

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    div-double/2addr v0, v2

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    if-eqz p5, :cond_1

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    cmpg-double v0, v0, v6

    if-gez v0, :cond_2

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iput-wide v6, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    cmpg-double v0, v0, v6

    if-gez v0, :cond_3

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    iput-wide v6, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " eventY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLeftX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mRightX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBottomY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTopY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    sub-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    goto/16 :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    sub-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    iget-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    iput-wide v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    goto/16 :goto_1
.end method

.method private dipToPixels(D)D
    .locals 5
    .param p1, "dipValue"    # D

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/DirectionLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x1

    double-to-float v2, p1

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-double v2, v1

    return-wide v2
.end method

.method private freeBitmapMemory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in freeBitmapMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->releaseDirectionBitmaps()V

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method private getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "reqWidth"    # I
    .param p4, "reqHeight"    # I

    .prologue
    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBitmapFromResource start  reqWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reqHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  resid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, p3, p4}, Lcom/android/internal/widget/DirectionLockView;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "tempBitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .local v2, "returnBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {v3, p3, p4, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v5, "getBitmapFromResource recycle"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v5, "getBitmapFromResource End"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v5, "getBitmapFromResource recycle"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v6, "getBitmapFromResource recycle"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    :cond_1
    throw v4
.end method

.method private getDirectionImageView(IIZI)Landroid/widget/ImageView;
    .locals 4
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I
    .param p3, "useMargins"    # Z
    .param p4, "arrowSize"    # I

    .prologue
    const/4 v3, -0x2

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v2, "in getDirectionImageView()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    if-eqz v1, :cond_0

    iput p4, p0, Lcom/android/internal/widget/DirectionLockView;->mParentArrowSize:I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DirectionLockView;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p3, :cond_2

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :goto_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/DirectionLockView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/DirectionLockView;->invalidate()V

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    return-object v1

    :cond_2
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private initDirectionLockView()V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v2, "in initDirectinLockView()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    const-string v2, "com.samsung.SMT.KEY_PARAM"

    const-string v3, "DISABLE_NOTICE_POPUP"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->refreshScreenDimensions()V

    invoke-virtual {p0}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView()Landroid/widget/ImageView;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/android/internal/widget/DirectionLockView;->mInsideReferenceSquare:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->mForceRestart:Z

    iput-boolean v6, p0, Lcom/android/internal/widget/DirectionLockView;->mAllow:Z

    iput-boolean v6, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    iput-boolean v6, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    iput-boolean v6, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    iput-boolean v6, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x11000a2

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x110009f

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x11000a1

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x11000a0

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/widget/DirectionLockView;->_TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tts_default_rate"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "mDefaultRate":I
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTextToSpeech Rate - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    int-to-float v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1040a45

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mUpAnnounce:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1040a48

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDownAnnounce:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1040a47

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftAnnounce:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1040a46

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mRightAnnounce:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/widget/DirectionLockView;->REFERENCE_SQUARE_DIMENSION:I

    int-to-double v2, v1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/DirectionLockView;->dipToPixels(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    iput-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    iput-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    iput-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    iput-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mSquare_size:D

    sget-wide v4, Lcom/android/internal/widget/DirectionLockView;->DIRECTION_TOLERANCE_ANGLE:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/internal/widget/DirectionLockView;->calculateTradeSpace(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tradeSpace ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/DirectionLockView;->setImportantForAccessibility(I)V

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v2, 0x1040a4a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DirectionLockView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private loadDirectionBitmaps(I)V
    .locals 7
    .param p1, "arrowSize"    # I

    .prologue
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v5, "in loadDirectionBitmaps()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "resIDLeft":I
    const/4 v0, 0x0

    .local v0, "resIDDown":I
    const/4 v3, 0x0

    .local v3, "resIDUp":I
    const/4 v2, 0x0

    .local v2, "resIDRight":I
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    if-eqz v4, :cond_0

    .end local p1    # "arrowSize":I
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->SETTINGS_APP:Z

    if-nez v4, :cond_1

    const v1, 0x10802d6

    const v2, 0x10802d7

    const v3, 0x10802d8

    const v0, 0x10802d5

    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    iget v6, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    invoke-direct {p0, v4, v1, v5, v6}, Lcom/android/internal/widget/DirectionLockView;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    iget v6, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    invoke-direct {p0, v4, v2, v5, v6}, Lcom/android/internal/widget/DirectionLockView;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    iget v6, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    invoke-direct {p0, v4, v3, v5, v6}, Lcom/android/internal/widget/DirectionLockView;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    iget v6, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    invoke-direct {p0, v4, v0, v5, v6}, Lcom/android/internal/widget/DirectionLockView;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    return-void

    .restart local p1    # "arrowSize":I
    :cond_0
    int-to-double v4, p1

    invoke-direct {p0, v4, v5}, Lcom/android/internal/widget/DirectionLockView;->dipToPixels(D)D

    move-result-wide v4

    double-to-int p1, v4

    goto :goto_0

    .end local p1    # "arrowSize":I
    :cond_1
    const v1, 0x10802db

    const v2, 0x10802dd

    const v3, 0x10802df

    const v0, 0x10802d9

    goto :goto_1
.end method

.method private refreshScreenDimensions()V
    .locals 6

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v2, "in refreshScreenDimensions()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DirectionLockView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v2, v1

    iput-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v2, v1

    iput-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in refreshScreenDimensions() mScreenWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScreenHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private releaseDirectionBitmaps()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method


# virtual methods
.method public clearScreen()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenWidth:D

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/android/internal/widget/DirectionLockView;->mScreenHeight:D

    double-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mBlankBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/DirectionLockView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentPassword()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPasswordNumbers()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    return-object v0
.end method

.method getDirection(DDDDDD)Lcom/android/internal/widget/DirectionLockView$Direction;
    .locals 7
    .param p1, "curX"    # D
    .param p3, "curY"    # D
    .param p5, "leftX"    # D
    .param p7, "rightX"    # D
    .param p9, "topY"    # D
    .param p11, "bottomY"    # D

    .prologue
    iget-object v3, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDirection() curX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " curY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " leftX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rightX ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7, p8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " topY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p9

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bottomY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p11

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->INVALID:Lcom/android/internal/widget/DirectionLockView$Direction;

    .local v2, "curDirection":Lcom/android/internal/widget/DirectionLockView$Direction;
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_2

    cmpl-double v3, p1, p7

    if-ltz v3, :cond_2

    cmpg-double v3, p3, p9

    if-gtz v3, :cond_2

    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->UP_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    :cond_0
    :goto_0
    sget-object v3, Lcom/android/internal/widget/DirectionLockView$Direction;->INVALID:Lcom/android/internal/widget/DirectionLockView$Direction;

    if-eq v2, v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    :cond_1
    return-object v2

    :cond_2
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_3

    cmpg-double v3, p1, p5

    if-gtz v3, :cond_3

    cmpg-double v3, p3, p9

    if-gtz v3, :cond_3

    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->UP_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    :cond_3
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_4

    cmpl-double v3, p1, p7

    if-ltz v3, :cond_4

    cmpl-double v3, p3, p11

    if-ltz v3, :cond_4

    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    :cond_4
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_5

    cmpg-double v3, p1, p5

    if-gtz v3, :cond_5

    cmpl-double v3, p3, p11

    if-ltz v3, :cond_5

    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    :cond_5
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_6

    cmpg-double v3, p1, p7

    if-gtz v3, :cond_7

    cmpl-double v3, p1, p5

    if-ltz v3, :cond_7

    :cond_6
    cmpg-double v3, p3, p9

    if-gez v3, :cond_7

    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->UP:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    :cond_7
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_8

    cmpg-double v3, p1, p7

    if-gtz v3, :cond_9

    cmpl-double v3, p1, p5

    if-ltz v3, :cond_9

    :cond_8
    cmpl-double v3, p3, p11

    if-lez v3, :cond_9

    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    :cond_9
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_a

    cmpg-double v3, p3, p11

    if-gtz v3, :cond_b

    cmpl-double v3, p3, p9

    if-ltz v3, :cond_b

    :cond_a
    cmpl-double v3, p1, p7

    if-lez v3, :cond_b

    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0

    :cond_b
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_c

    cmpg-double v3, p3, p11

    if-gtz v3, :cond_0

    cmpl-double v3, p3, p9

    if-ltz v3, :cond_0

    :cond_c
    cmpg-double v3, p1, p5

    if-gez v3, :cond_0

    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_0
.end method

.method public getDirectionImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(IIZI)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionImageView(I)Landroid/widget/ImageView;
    .locals 2
    .param p1, "arrowSize"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    invoke-direct {p0, v1, v1, v1, p1}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(IIZI)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionImageView(II)Landroid/widget/ImageView;
    .locals 2
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(IIZI)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionImageView(III)Landroid/widget/ImageView;
    .locals 1
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I
    .param p3, "arrowSize"    # I

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(IIZI)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method handleDirectionEvent(Lcom/android/internal/widget/DirectionLockView$Direction;Z)V
    .locals 12
    .param p1, "direction"    # Lcom/android/internal/widget/DirectionLockView$Direction;
    .param p2, "allowDouble"    # Z

    .prologue
    const v11, 0xc36f

    const v10, 0xc36b

    const/4 v9, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v7, "in handleDirectionEvent()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mInsideReferenceSquare:Z

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    move v2, v5

    .local v2, "lengthCondition":Z
    :goto_0
    const/4 v1, 0x0

    .local v1, "lastDirectionCondition":Z
    if-eqz v2, :cond_6

    move v0, v4

    .local v0, "lastDirectionChar":C
    :goto_1
    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " detected"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    iput v9, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    const-string v3, ""

    .local v3, "mCurrentDirection":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/widget/DirectionLockView$2;->$SwitchMap$com$android$internal$widget$DirectionLockView$Direction:[I

    invoke-virtual {p1}, Lcom/android/internal/widget/DirectionLockView$Direction;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v5, "Invalid Direction !"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    if-nez v2, :cond_1

    if-nez p2, :cond_1

    if-eqz v1, :cond_1f

    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mVibrator:Landroid/os/Vibrator;

    iget v5, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    const/4 v6, 0x0

    sget-object v7, Landroid/os/Vibrator$MagnitudeTypes;->NotificationMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v4, v5, v9, v6, v7}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    invoke-interface {v4, v3, v5}, Lcom/android/internal/widget/DirectionLockTouchListener;->onDirectionDetected(Ljava/lang/String;Z)V

    :cond_4
    :goto_3
    return-void

    .end local v0    # "lastDirectionChar":C
    .end local v1    # "lastDirectionCondition":Z
    .end local v2    # "lengthCondition":Z
    .end local v3    # "mCurrentDirection":Ljava/lang/String;
    :cond_5
    move v2, v4

    goto :goto_0

    .restart local v1    # "lastDirectionCondition":Z
    .restart local v2    # "lengthCondition":Z
    :cond_6
    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .restart local v0    # "lastDirectionChar":C
    .restart local v3    # "mCurrentDirection":Ljava/lang/String;
    :pswitch_0
    const/16 v6, 0x55

    if-eq v6, v0, :cond_c

    move v1, v5

    :goto_4
    if-nez v2, :cond_7

    if-nez p2, :cond_7

    if-eqz v1, :cond_0

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "U"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mUpAnnounce:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v4, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_8
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    :cond_9
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    if-eqz v4, :cond_a

    iput v10, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    :cond_a
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    :cond_b
    const-string v3, "UP"

    goto/16 :goto_2

    :cond_c
    move v1, v4

    goto :goto_4

    :pswitch_1
    const/16 v6, 0x52

    if-eq v6, v0, :cond_12

    move v1, v5

    :goto_5
    if-nez v2, :cond_d

    if-nez p2, :cond_d

    if-eqz v1, :cond_0

    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "R"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mRightAnnounce:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v4, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_e
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    :cond_f
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    if-eqz v4, :cond_10

    iput v11, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    :cond_10
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    :cond_11
    const-string v3, "RIGHT"

    goto/16 :goto_2

    :cond_12
    move v1, v4

    goto :goto_5

    :pswitch_2
    const/16 v6, 0x44

    if-eq v6, v0, :cond_18

    move v1, v5

    :goto_6
    if-nez v2, :cond_13

    if-nez p2, :cond_13

    if-eqz v1, :cond_0

    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "D"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "7"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mDownAnnounce:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v4, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_14
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    :cond_15
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    if-eqz v4, :cond_16

    iput v10, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    :cond_16
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    :cond_17
    const-string v3, "DOWN"

    goto/16 :goto_2

    :cond_18
    move v1, v4

    goto :goto_6

    :pswitch_3
    const/16 v6, 0x4c

    if-eq v6, v0, :cond_1e

    move v1, v5

    :goto_7
    if-nez v2, :cond_19

    if-nez p2, :cond_19

    if-eqz v1, :cond_0

    :cond_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "L"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "9"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/internal/widget/DirectionLockView;->mLeftAnnounce:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v4, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_1a
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    :cond_1b
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    if-eqz v4, :cond_1c

    iput v11, p0, Lcom/android/internal/widget/DirectionLockView;->mVibratePattern:I

    :cond_1c
    iget-boolean v4, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    :cond_1d
    const-string v3, "LEFT"

    goto/16 :goto_2

    :cond_1e
    move v1, v4

    goto :goto_7

    :cond_1f
    iget-object v4, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ignored"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v2, "in onAttached()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/DirectionLockView;->mParentArrowSize:I

    .local v0, "arrowSize":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/widget/DirectionLockView;->loadDirectionBitmaps(I)V

    .end local v0    # "arrowSize":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "direction_lock_set"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_1
    sget v0, Lcom/android/internal/widget/DirectionLockView;->DEFAULT_ARROW_SIZE:I

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->refreshScreenDimensions()V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in onDetached()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->freeBitmapMemory()V

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direction_lock_set"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    iput-object v3, p0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v3, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepNorth:Landroid/media/MediaPlayer;

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v3, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepSouth:Landroid/media/MediaPlayer;

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v3, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepEast:Landroid/media/MediaPlayer;

    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v3, p0, Lcom/android/internal/widget/DirectionLockView;->mBeepWest:Landroid/media/MediaPlayer;

    :cond_8
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v8, "in onTouchEvent()"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DirectionLockView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v8, 0x3

    if-eq v3, v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v8, 0x1

    if-ne v3, v8, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v8, "in onTouchEvent() ACTION_UP or ACTION_CANCEL called"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    const-string v8, "FINGER_LIFT"

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    invoke-interface {v3, v8, v9}, Lcom/android/internal/widget/DirectionLockTouchListener;->onDirectionDetected(Ljava/lang/String;Z)V

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-interface {v3}, Lcom/android/internal/widget/DirectionLockTouchListener;->onDirectionStarted()V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-double v4, v3

    .local v4, "curX":D
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-double v6, v3

    .local v6, "curY":D
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    .end local v4    # "curX":D
    .end local v6    # "curY":D
    :cond_5
    :goto_1
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    .restart local v4    # "curX":D
    .restart local v6    # "curY":D
    :pswitch_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mAllowDouble:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mForceRestart:Z

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/widget/DirectionLockView;->createReferenceSquare(DDZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v8, "in onTouchEvent() ACTION_DOWN called"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mInsideReferenceSquare:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mForceRestart:Z

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mInsideReferenceSquare:Z

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mAllow:Z

    if-eqz v3, :cond_5

    const/16 v16, 0x0

    .local v16, "insideTradeArea":Z
    sget-boolean v3, Lcom/android/internal/widget/DirectionLockView;->FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_b

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    cmpg-double v3, v4, v8

    if-gez v3, :cond_b

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_b

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_b

    const/16 v19, 0x1

    .local v19, "isTradeNorthEast":Z
    :goto_2
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    cmpl-double v3, v6, v8

    if-lez v3, :cond_c

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_c

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_c

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_c

    const/16 v17, 0x1

    .local v17, "isTradeEastNorth":Z
    :goto_3
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    cmpg-double v3, v6, v8

    if-gez v3, :cond_d

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_d

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_d

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_d

    const/16 v18, 0x1

    .local v18, "isTradeEastSouth":Z
    :goto_4
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_e

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    cmpg-double v3, v4, v8

    if-gez v3, :cond_e

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_e

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_e

    const/16 v21, 0x1

    .local v21, "isTradeSouthEast":Z
    :goto_5
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_f

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_f

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_f

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_f

    const/16 v22, 0x1

    .local v22, "isTradeSouthWest":Z
    :goto_6
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_10

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_10

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    cmpg-double v3, v6, v8

    if-gez v3, :cond_10

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_10

    const/16 v24, 0x1

    .local v24, "isTradeWestSouth":Z
    :goto_7
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_11

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_11

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_11

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_11

    const/16 v23, 0x1

    .local v23, "isTradeWestNorth":Z
    :goto_8
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_12

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_12

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_12

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_12

    const/16 v20, 0x1

    .local v20, "isTradeNorthWest":Z
    :goto_9
    if-nez v19, :cond_6

    if-nez v17, :cond_6

    if-nez v18, :cond_6

    if-nez v21, :cond_6

    if-nez v22, :cond_6

    if-nez v24, :cond_6

    if-nez v23, :cond_6

    if-eqz v20, :cond_7

    :cond_6
    const/16 v16, 0x1

    .end local v17    # "isTradeEastNorth":Z
    .end local v18    # "isTradeEastSouth":Z
    .end local v19    # "isTradeNorthEast":Z
    .end local v20    # "isTradeNorthWest":Z
    .end local v21    # "isTradeSouthEast":Z
    .end local v22    # "isTradeSouthWest":Z
    .end local v23    # "isTradeWestNorth":Z
    .end local v24    # "isTradeWestSouth":Z
    :cond_7
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->INVALID:Lcom/android/internal/widget/DirectionLockView$Direction;

    .local v2, "curDirection":Lcom/android/internal/widget/DirectionLockView$Direction;
    if-nez v16, :cond_8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/widget/DirectionLockView;->mLeftX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/DirectionLockView;->mRightX:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/widget/DirectionLockView;->mTopY:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/widget/DirectionLockView;->mBottomY:D

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v15}, Lcom/android/internal/widget/DirectionLockView;->getDirection(DDDDDD)Lcom/android/internal/widget/DirectionLockView$Direction;

    move-result-object v2

    :cond_8
    sget-object v3, Lcom/android/internal/widget/DirectionLockView$2;->$SwitchMap$com$android$internal$widget$DirectionLockView$Direction:[I

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView$Direction;->ordinal()I

    move-result v8

    aget v3, v3, v8

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v8, "in onTouchEvent() Diagonal Detected"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mForceRestart:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    const v9, 0x1040a49

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/DirectionLockView;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v8, v9, v10}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    const-string v8, "DIAGONAL"

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/widget/DirectionLockView;->mDirectionDetected:Z

    invoke-interface {v3, v8, v9}, Lcom/android/internal/widget/DirectionLockTouchListener;->onDirectionDetected(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .end local v2    # "curDirection":Lcom/android/internal/widget/DirectionLockView$Direction;
    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_2

    .restart local v19    # "isTradeNorthEast":Z
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_3

    .restart local v17    # "isTradeEastNorth":Z
    :cond_d
    const/16 v18, 0x0

    goto/16 :goto_4

    .restart local v18    # "isTradeEastSouth":Z
    :cond_e
    const/16 v21, 0x0

    goto/16 :goto_5

    .restart local v21    # "isTradeSouthEast":Z
    :cond_f
    const/16 v22, 0x0

    goto/16 :goto_6

    .restart local v22    # "isTradeSouthWest":Z
    :cond_10
    const/16 v24, 0x0

    goto/16 :goto_7

    .restart local v24    # "isTradeWestSouth":Z
    :cond_11
    const/16 v23, 0x0

    goto/16 :goto_8

    .restart local v23    # "isTradeWestNorth":Z
    :cond_12
    const/16 v20, 0x0

    goto/16 :goto_9

    .end local v17    # "isTradeEastNorth":Z
    .end local v18    # "isTradeEastSouth":Z
    .end local v19    # "isTradeNorthEast":Z
    .end local v21    # "isTradeSouthEast":Z
    .end local v22    # "isTradeSouthWest":Z
    .end local v23    # "isTradeWestNorth":Z
    .end local v24    # "isTradeWestSouth":Z
    .restart local v2    # "curDirection":Lcom/android/internal/widget/DirectionLockView$Direction;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mAllowDouble:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/DirectionLockView;->handleDirectionEvent(Lcom/android/internal/widget/DirectionLockView$Direction;Z)V

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/widget/DirectionLockView;->createReferenceSquare(DDZ)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mAllowDouble:Z

    goto/16 :goto_1

    .end local v2    # "curDirection":Lcom/android/internal/widget/DirectionLockView$Direction;
    .end local v16    # "insideTradeArea":Z
    :cond_13
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/DirectionLockView;->mInsideReferenceSquare:Z

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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

.method public reloadBitmap()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v2, "in reloadBitmap()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/widget/DirectionLockView;->releaseDirectionBitmaps()V

    iget-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->isParentArrowSize:Z

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/DirectionLockView;->mParentArrowSize:I

    .local v0, "arrowSize":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/widget/DirectionLockView;->loadDirectionBitmaps(I)V

    .end local v0    # "arrowSize":I
    :cond_0
    return-void

    :cond_1
    sget v0, Lcom/android/internal/widget/DirectionLockView;->DEFAULT_ARROW_SIZE:I

    goto :goto_0
.end method

.method public resetPassword()V
    .locals 1

    .prologue
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    return-void
.end method

.method public setAllow(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v1, "in setAllow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/internal/widget/DirectionLockView;->mAllow:Z

    return-void
.end method

.method public setCurrentPassword(Ljava/lang/String;)V
    .locals 3
    .param p1, "givenPassword"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPassword:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    const/4 v0, 0x0

    .local v0, "counter":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    goto :goto_1

    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x37

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    goto :goto_1

    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x39

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    goto :goto_1

    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurrentPasswordNumbers:Ljava/lang/String;

    goto :goto_1

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x4c -> :sswitch_2
        0x52 -> :sswitch_3
        0x55 -> :sswitch_0
    .end sparse-switch
.end method

.method public setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/DirectionLockTouchListener;

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    return-void
.end method

.method public setPlayBeep(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayBeep:Z

    return-void
.end method

.method public setPlayVibration(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVibration:Z

    return-void
.end method

.method public setPlayVoice(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/DirectionLockView;->mPlayVoice:Z

    return-void
.end method

.method public setSettingsMode()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DirectionLockView;->SETTINGS_APP:Z

    return-void
.end method

.method public setShowArrow(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    return-void
.end method

.method public showErrorImage()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->TAG:Ljava/lang/String;

    const-string v2, "in showErrorImage()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->mForceRestart:Z

    const/4 v0, 0x0

    .local v0, "resIDError":I
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/internal/widget/DirectionLockView;->mShowArrow:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, 0x10802dc

    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/widget/DirectionLockView;->currentErrorResId:I

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    iget v3, p0, Lcom/android/internal/widget/DirectionLockView;->ARROW_SIZE:I

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/internal/widget/DirectionLockView;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    iput v0, p0, Lcom/android/internal/widget/DirectionLockView;->currentErrorResId:I

    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mErrorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapRight:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v0, 0x10802de

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapUp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v0, 0x10802e0

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/internal/widget/DirectionLockView;->mCurBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/widget/DirectionLockView;->mDirectionBitmapDown:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x10802da

    goto :goto_0
.end method
