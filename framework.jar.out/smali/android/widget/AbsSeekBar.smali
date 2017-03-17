.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsSeekBar$Side;,
        Landroid/widget/AbsSeekBar$Status;
    }
.end annotation


# static fields
.field private static final ELASTIC_ENABLED:Z = true

.field private static final MUTE_VIB_DISTANCE_LVL:I = 0x190

.field private static final MUTE_VIB_DURATION:I = 0x1f4

.field private static final MUTE_VIB_TOTAL:I = 0x4

.field private static final NO_ALPHA:I = 0xff

.field private static final SCAFE_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "AbsSeekBar"

.field private static mIsThemeDeviceDefaultFamily:Z


# instance fields
.field private DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

.field private DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

.field private DEFAULT_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

.field private OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

.field private OVERLAP_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

.field private OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

.field private animationCurrnetFrame:I

.field private animationTotalFrame:I

.field private circleTotal:I

.field private currentSide:Landroid/widget/AbsSeekBar$Side;

.field private currentSkipFrameWhenActionDown:I

.field private currentStatus:Landroid/widget/AbsSeekBar$Status;

.field private delayedFramesBeforeReduce:I

.field private mAllowedSeeBarAnimation:Z

.field private mCurrentProgressLevel:I

.field private mDisabledAlpha:F

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHoveringLevel:I

.field private mIsDragging:Z

.field private mIsDraggingForSliding:Z

.field private mIsFirstSetProgress:Z

.field private mIsFluidEnabled:Z

.field private mIsMuteNow:Z

.field private mIsOpenTheme:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mLargeFont:Z

.field private mMuteAnimationSet:Landroid/animation/AnimatorSet;

.field private mOverlapBackground:Landroid/graphics/drawable/Drawable;

.field private mOverlapPoint:I

.field private mOverlapPrimary:Landroid/graphics/drawable/Drawable;

.field private mScaledTouchSlop:I

.field private mSplitProgress:Landroid/graphics/drawable/Drawable;

.field private mSplitTrack:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbPosX:I

.field private mThumbPosXfloat:F

.field private mThumbPosY:I

.field private mThumbPosYfloat:F

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTouchDownX:F

.field private mTouchDownY:F

.field mTouchProgressOffset:F

.field private mUseMuteAnimation:Z

.field private paint:Landroid/graphics/Paint;

.field private pressedThumbWidth:I

.field private previousProgress:I

.field private progressBarHeight:F

.field private progressBarWidth:F

.field private skipFrameWhenActionDown:I

.field private sliderPath:Landroid/widget/SeekBarFluidPath;

.field private tailWidthFromCircleCenter:F

.field private targetFrame:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 156
    const-string v0, "2016A"

    const-string/jumbo v1, "ro.build.scafe.version"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/widget/AbsSeekBar;->SCAFE_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 74
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 75
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 76
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 77
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 91
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 97
    iput v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 115
    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 127
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    .line 128
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    .line 130
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 131
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 137
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    .line 144
    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/AbsSeekBar;->delayedFramesBeforeReduce:I

    .line 145
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/AbsSeekBar;->skipFrameWhenActionDown:I

    .line 151
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    .line 153
    sget-object v0, Landroid/widget/AbsSeekBar$Side;->NONE:Landroid/widget/AbsSeekBar$Side;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    .line 154
    sget-object v0, Landroid/widget/AbsSeekBar$Status;->STOP:Landroid/widget/AbsSeekBar$Status;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    .line 155
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 74
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 75
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 76
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 77
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 91
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 97
    iput v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 115
    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 127
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    .line 128
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    .line 130
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 131
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 137
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    .line 144
    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/AbsSeekBar;->delayedFramesBeforeReduce:I

    .line 145
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/AbsSeekBar;->skipFrameWhenActionDown:I

    .line 151
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    .line 153
    sget-object v0, Landroid/widget/AbsSeekBar$Side;->NONE:Landroid/widget/AbsSeekBar$Side;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    .line 154
    sget-object v0, Landroid/widget/AbsSeekBar$Status;->STOP:Landroid/widget/AbsSeekBar$Status;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    .line 155
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 184
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 74
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 75
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 76
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 77
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 91
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 97
    const/4 v6, 0x1

    iput v6, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 115
    const/4 v6, 0x0

    iput v6, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 119
    const/4 v6, -0x1

    iput v6, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 127
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    .line 128
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    .line 130
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 131
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 137
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    .line 144
    const/4 v6, 0x5

    iput v6, p0, Landroid/widget/AbsSeekBar;->delayedFramesBeforeReduce:I

    .line 145
    const/4 v6, 0x3

    iput v6, p0, Landroid/widget/AbsSeekBar;->skipFrameWhenActionDown:I

    .line 151
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    .line 153
    sget-object v6, Landroid/widget/AbsSeekBar$Side;->NONE:Landroid/widget/AbsSeekBar$Side;

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    .line 154
    sget-object v6, Landroid/widget/AbsSeekBar$Status;->STOP:Landroid/widget/AbsSeekBar$Status;

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    .line 155
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    .line 186
    sget-object v6, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 189
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 190
    .local v3, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 192
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 193
    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iget-object v7, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 195
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 198
    :cond_0
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 199
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 200
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 203
    :cond_1
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    .line 206
    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 207
    .local v4, "thumbOffset":I
    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 209
    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 210
    .local v5, "useDisabledAlpha":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    if-eqz v5, :cond_4

    .line 213
    sget-object v6, Lcom/android/internal/R$styleable;->Theme:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 214
    .local v2, "ta":Landroid/content/res/TypedArray;
    const/4 v6, 0x3

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 215
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    .end local v2    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 222
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1060117

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->DEFAULT_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1060118

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106011d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106011a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106011b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {p0, v6}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 235
    iget-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11200cf

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    .line 238
    iget-boolean v6, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    if-eqz v6, :cond_2

    .line 239
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->initMuteAnimation()V

    .line 241
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 242
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->seekBarFluidInit()V

    .line 244
    :cond_3
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 245
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x11600bd

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v1, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 246
    iget v6, v1, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_1
    sput-boolean v6, Landroid/widget/AbsSeekBar;->mIsThemeDeviceDefaultFamily:Z

    .line 248
    return-void

    .line 217
    .end local v1    # "outValue":Landroid/util/TypedValue;
    :cond_4
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    goto/16 :goto_0

    .line 246
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/widget/AbsSeekBar;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsSeekBar;

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    return v0
.end method

.method static synthetic access$002(Landroid/widget/AbsSeekBar;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsSeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    return p1
.end method

.method private applyThumbTint()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_3

    .line 435
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 437
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 441
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 447
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 451
    :cond_3
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 1202
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1205
    :cond_0
    return-void
.end method

.method private cancelMuteAnimation()V
    .locals 1

    .prologue
    .line 1698
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1699
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1701
    :cond_0
    return-void
.end method

.method private checkInvalidatedDualColorMode()Z
    .locals 2

    .prologue
    .line 1639
    iget v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeTail()V
    .locals 1

    .prologue
    .line 631
    sget-object v0, Landroid/widget/AbsSeekBar$Status;->TAIL_CLOSE:Landroid/widget/AbsSeekBar$Status;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    .line 632
    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1653
    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 1654
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private drawFrame(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/high16 v8, 0x43340000    # 180.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 924
    iget v5, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    if-gez v5, :cond_2

    iget v5, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    neg-int v2, v5

    .line 925
    .local v2, "tempIndex":I
    :goto_0
    iget v5, p0, Landroid/widget/AbsSeekBar;->animationTotalFrame:I

    add-int/lit8 v5, v5, -0x1

    if-le v2, v5, :cond_0

    iget v5, p0, Landroid/widget/AbsSeekBar;->animationTotalFrame:I

    add-int/lit8 v2, v5, -0x1

    .line 926
    :cond_0
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    invoke-virtual {v5, v2}, Landroid/widget/SeekBarFluidPath;->getPath(I)Landroid/graphics/Path;

    move-result-object v0

    .line 928
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 930
    .local v1, "ratio":F
    invoke-virtual {p0, v10}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 931
    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    .line 932
    .local v3, "xOffset":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/AbsSeekBar;->progressBarHeight:F

    sub-float/2addr v7, v1

    mul-float/2addr v6, v7

    add-float v4, v5, v6

    .line 937
    .local v4, "yOffset":F
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 938
    invoke-virtual {p0, v10}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 939
    iget v5, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    if-gez v5, :cond_5

    .line 940
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 952
    :cond_1
    :goto_2
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 953
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 954
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 955
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v6

    invoke-virtual {p0, v9, v9, v5, v6}, Landroid/widget/AbsSeekBar;->invalidate(IIII)V

    .line 956
    return-void

    .line 924
    .end local v0    # "path":Landroid/graphics/Path;
    .end local v1    # "ratio":F
    .end local v2    # "tempIndex":I
    .end local v3    # "xOffset":F
    .end local v4    # "yOffset":F
    :cond_2
    iget v2, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    goto :goto_0

    .line 934
    .restart local v0    # "path":Landroid/graphics/Path;
    .restart local v1    # "ratio":F
    .restart local v2    # "tempIndex":I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/AbsSeekBar;->progressBarWidth:F

    sub-float/2addr v7, v1

    mul-float/2addr v6, v7

    add-float v3, v5, v6

    .line 935
    .restart local v3    # "xOffset":F
    :goto_3
    iget v4, p0, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    .restart local v4    # "yOffset":F
    goto :goto_1

    .line 934
    .end local v3    # "xOffset":F
    .end local v4    # "yOffset":F
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/AbsSeekBar;->progressBarWidth:F

    mul-float/2addr v6, v1

    add-float v3, v5, v6

    goto :goto_3

    .line 942
    .restart local v3    # "xOffset":F
    .restart local v4    # "yOffset":F
    :cond_5
    const/high16 v5, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v5, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_2

    .line 944
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v5, :cond_7

    .line 945
    iget v5, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    if-lez v5, :cond_1

    .line 946
    invoke-virtual {p1, v8, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_2

    .line 948
    :cond_7
    iget v5, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    if-gez v5, :cond_1

    .line 949
    invoke-virtual {p1, v8, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_2
.end method

.method private getScale()F
    .locals 3

    .prologue
    .line 718
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    .line 719
    .local v0, "max":I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initMuteAnimation()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1672
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    .line 1674
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1675
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/16 v6, 0x8

    .line 1676
    .local v6, "total":I
    const/16 v9, 0x1f4

    div-int v1, v9, v6

    .line 1677
    .local v1, "duration":I
    const/16 v0, 0x190

    .line 1678
    .local v0, "distance":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_3

    .line 1679
    rem-int/lit8 v9, v2, 0x2

    if-nez v9, :cond_1

    move v3, v7

    .line 1680
    .local v3, "isGoingDirection":Z
    :goto_1
    if-eqz v3, :cond_2

    new-array v9, v14, [I

    aput v8, v9, v8

    aput v0, v9, v7

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 1681
    .local v5, "progressZeroAnimation":Landroid/animation/ValueAnimator;
    :goto_2
    int-to-long v10, v1

    invoke-virtual {v5, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1682
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1683
    new-instance v9, Landroid/widget/AbsSeekBar$1;

    invoke-direct {v9, p0}, Landroid/widget/AbsSeekBar$1;-><init>(Landroid/widget/AbsSeekBar;)V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1689
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1690
    if-eqz v3, :cond_0

    .line 1691
    int-to-double v10, v0

    const-wide v12, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v10, v12

    double-to-int v0, v10

    .line 1678
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "isGoingDirection":Z
    .end local v5    # "progressZeroAnimation":Landroid/animation/ValueAnimator;
    :cond_1
    move v3, v8

    .line 1679
    goto :goto_1

    .line 1680
    .restart local v3    # "isGoingDirection":Z
    :cond_2
    new-array v9, v14, [I

    aput v0, v9, v8

    aput v8, v9, v7

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    goto :goto_2

    .line 1694
    .end local v3    # "isGoingDirection":Z
    :cond_3
    iget-object v7, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 1695
    return-void
.end method

.method private openTail(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 594
    iget v0, p0, Landroid/widget/AbsSeekBar;->previousProgress:I

    if-ne v0, p1, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->progressBarWidth:F

    .line 598
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->progressBarHeight:F

    .line 600
    iget v0, p0, Landroid/widget/AbsSeekBar;->currentSkipFrameWhenActionDown:I

    if-gtz v0, :cond_8

    .line 601
    iget v0, p0, Landroid/widget/AbsSeekBar;->previousProgress:I

    if-ge v0, p1, :cond_5

    .line 602
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 603
    iget v0, p0, Landroid/widget/AbsSeekBar;->progressBarHeight:F

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Landroid/widget/AbsSeekBar;->tailWidthFromCircleCenter:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 609
    :cond_2
    sget-object v0, Landroid/widget/AbsSeekBar$Side;->RIGHT:Landroid/widget/AbsSeekBar$Side;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    .line 610
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationTotalFrame:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/widget/AbsSeekBar;->delayedFramesBeforeReduce:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    .line 623
    :cond_3
    :goto_1
    sget-object v0, Landroid/widget/AbsSeekBar$Status;->TAIL_OPEN:Landroid/widget/AbsSeekBar$Status;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    .line 627
    :goto_2
    iput p1, p0, Landroid/widget/AbsSeekBar;->previousProgress:I

    goto :goto_0

    .line 606
    :cond_4
    iget v0, p0, Landroid/widget/AbsSeekBar;->progressBarWidth:F

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Landroid/widget/AbsSeekBar;->tailWidthFromCircleCenter:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    goto :goto_0

    .line 611
    :cond_5
    iget v0, p0, Landroid/widget/AbsSeekBar;->previousProgress:I

    if-le v0, p1, :cond_3

    .line 612
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 613
    iget v0, p0, Landroid/widget/AbsSeekBar;->progressBarHeight:F

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/AbsSeekBar;->tailWidthFromCircleCenter:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 619
    :cond_6
    sget-object v0, Landroid/widget/AbsSeekBar$Side;->LEFT:Landroid/widget/AbsSeekBar$Side;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    .line 621
    iget v0, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    neg-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    goto :goto_1

    .line 616
    :cond_7
    iget v0, p0, Landroid/widget/AbsSeekBar;->progressBarWidth:F

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/AbsSeekBar;->tailWidthFromCircleCenter:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    goto/16 :goto_0

    .line 625
    :cond_8
    iget v0, p0, Landroid/widget/AbsSeekBar;->currentSkipFrameWhenActionDown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->currentSkipFrameWhenActionDown:I

    goto :goto_2
.end method

.method private seekBarFluidInit()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    .line 255
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 257
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setFluidColor(I)V

    .line 259
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->pressedThumbWidth:I

    .line 262
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    if-nez v0, :cond_2

    .line 263
    new-instance v0, Landroid/widget/SeekBarFluidPath;

    iget v1, p0, Landroid/widget/AbsSeekBar;->pressedThumbWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v1}, Landroid/widget/SeekBarFluidPath;-><init>(F)V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    .line 264
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    invoke-virtual {v0}, Landroid/widget/SeekBarFluidPath;->getPathTotal()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationTotalFrame:I

    .line 265
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    invoke-virtual {v0}, Landroid/widget/SeekBarFluidPath;->getCircleTotal()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    .line 266
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->previousProgress:I

    .line 267
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->sliderPath:Landroid/widget/SeekBarFluidPath;

    invoke-virtual {v0}, Landroid/widget/SeekBarFluidPath;->getTailWidthFromCircleCenter()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->tailWidthFromCircleCenter:F

    .line 269
    return-void
.end method

.method private setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1124
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1125
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1126
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1128
    :cond_0
    return-void
.end method

.method private setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1827
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1828
    return-void
.end method

.method private setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1806
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 1807
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 1809
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 1811
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1812
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 1813
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setFluidColor(I)V

    .line 1817
    :cond_0
    :goto_0
    return-void

    .line 1815
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setFluidColor(I)V

    goto :goto_0
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 21
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    .prologue
    .line 732
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 733
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    .line 778
    :goto_0
    return-void

    .line 737
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v17, v0

    sub-int v17, p1, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v5, v17, v18

    .line 738
    .local v5, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 739
    .local v15, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 740
    .local v13, "thumbHeight":I
    sub-int/2addr v5, v15

    .line 743
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    add-int v5, v5, v17

    .line 745
    int-to-float v0, v5

    move/from16 v17, v0

    mul-float v17, v17, p3

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 748
    .local v14, "thumbPos":I
    const/high16 v17, -0x80000000

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 750
    .local v11, "oldBounds":Landroid/graphics/Rect;
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 751
    .local v16, "top":I
    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    .line 757
    .end local v11    # "oldBounds":Landroid/graphics/Rect;
    .local v7, "bottom":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    sub-int v8, v5, v14

    .line 758
    .local v8, "left":I
    :goto_2
    add-int v12, v8, v15

    .line 760
    .local v12, "right":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 761
    .local v6, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 762
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v18, v0

    sub-int v9, v17, v18

    .line 763
    .local v9, "offsetX":I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    .line 764
    .local v10, "offsetY":I
    add-int v17, v8, v9

    add-int v18, v16, v10

    add-int v19, v12, v9

    add-int v20, v7, v10

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 769
    .end local v9    # "offsetX":I
    .end local v10    # "offsetY":I
    :cond_1
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1, v12, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 772
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v17, v0

    add-int v17, v17, v8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    .line 773
    div-int/lit8 v17, v13, 0x2

    add-int v17, v17, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosY:I

    .line 774
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    .line 775
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v13

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    .line 777
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    goto/16 :goto_0

    .line 753
    .end local v6    # "background":Landroid/graphics/drawable/Drawable;
    .end local v7    # "bottom":I
    .end local v8    # "left":I
    .end local v12    # "right":I
    .end local v16    # "top":I
    :cond_2
    move/from16 v16, p4

    .line 754
    .restart local v16    # "top":I
    add-int v7, p4, v13

    .restart local v7    # "bottom":I
    goto/16 :goto_1

    :cond_3
    move v8, v14

    .line 757
    goto/16 :goto_2
.end method

.method private setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 21
    .param p1, "h"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    .prologue
    .line 781
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v17, v0

    sub-int v17, p1, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 782
    .local v4, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 783
    .local v15, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 784
    .local v13, "thumbHeight":I
    sub-int/2addr v4, v13

    .line 787
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    add-int v4, v4, v17

    .line 789
    int-to-float v0, v4

    move/from16 v17, v0

    mul-float v17, v17, p3

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 792
    .local v14, "thumbPos":I
    const/high16 v17, -0x80000000

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 793
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 794
    .local v11, "oldBounds":Landroid/graphics/Rect;
    iget v8, v11, Landroid/graphics/Rect;->left:I

    .line 795
    .local v8, "left":I
    iget v12, v11, Landroid/graphics/Rect;->right:I

    .line 801
    .end local v11    # "oldBounds":Landroid/graphics/Rect;
    .local v12, "right":I
    :goto_0
    sub-int v16, v4, v14

    .line 802
    .local v16, "top":I
    add-int v6, v16, v13

    .line 804
    .local v6, "bottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 805
    .local v5, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    .line 806
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 807
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    .line 808
    .local v9, "offsetX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v18, v0

    sub-int v10, v17, v18

    .line 810
    .local v10, "offsetY":I
    add-int v17, v8, v9

    add-int v18, v16, v10

    add-int v19, v12, v9

    add-int v20, v6, v10

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 815
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "offsetX":I
    .end local v10    # "offsetY":I
    :cond_0
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1, v12, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 818
    div-int/lit8 v17, v15, 0x2

    add-int v17, v17, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    .line 819
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v17, v0

    add-int v17, v17, v16

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosY:I

    .line 820
    int-to-float v0, v8

    move/from16 v17, v0

    int-to-float v0, v15

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosXfloat:F

    .line 821
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbPosY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosYfloat:F

    .line 822
    return-void

    .line 797
    .end local v5    # "background":Landroid/graphics/drawable/Drawable;
    .end local v6    # "bottom":I
    .end local v8    # "left":I
    .end local v12    # "right":I
    .end local v16    # "top":I
    :cond_1
    move/from16 v8, p4

    .line 798
    .restart local v8    # "left":I
    add-int v12, p4, v15

    .restart local v12    # "right":I
    goto/16 :goto_0
.end method

.method private startMuteAnimation()V
    .locals 1

    .prologue
    .line 1704
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelMuteAnimation()V

    .line 1706
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1707
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1709
    :cond_0
    return-void
.end method

.method private trackHoverEvent(II)V
    .locals 7
    .param p1, "posX"    # I
    .param p2, "posY"    # I

    .prologue
    .line 1372
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    .line 1373
    .local v4, "width":I
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v5, v4, v5

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 1375
    .local v0, "available":I
    const/4 v1, 0x0

    .line 1377
    .local v1, "hoverLevel":F
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge p1, v5, :cond_0

    .line 1378
    const/4 v3, 0x0

    .line 1386
    .local v3, "scale":F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    .line 1387
    .local v2, "max":I
    int-to-float v5, v2

    mul-float/2addr v5, v3

    add-float/2addr v1, v5

    .line 1388
    float-to-int v5, v1

    iput v5, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 1389
    return-void

    .line 1379
    .end local v2    # "max":I
    .end local v3    # "scale":F
    :cond_0
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le p1, v5, :cond_1

    .line 1380
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_0

    .line 1382
    .end local v3    # "scale":F
    :cond_1
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v5, p1, v5

    int-to-float v5, v5

    int-to-float v6, v0

    div-float v3, v5, v6

    .line 1383
    .restart local v3    # "scale":F
    iget v1, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 1131
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1132
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEventInVertical(Landroid/view/MotionEvent;)V

    .line 1174
    :goto_0
    return-void

    .line 1136
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v6

    .line 1137
    .local v6, "width":I
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v8, v6, v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v8, v9

    .line 1138
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v7, v8

    .line 1140
    .local v7, "x":I
    const/4 v3, 0x0

    .line 1141
    .local v3, "progress":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v8, :cond_4

    .line 1142
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v8, v6, v8

    if-le v7, v8, :cond_2

    .line 1143
    const/4 v5, 0x0

    .line 1160
    .local v5, "scale":F
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    .line 1161
    .local v2, "max":I
    int-to-float v8, v2

    div-float v1, v10, v8

    .line 1163
    .local v1, "basicWidth":F
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-lez v8, :cond_1

    cmpg-float v8, v5, v10

    if-gez v8, :cond_1

    .line 1164
    rem-float v4, v5, v1

    .line 1165
    .local v4, "remainder":F
    div-float v8, v1, v11

    cmpl-float v8, v4, v8

    if-lez v8, :cond_1

    .line 1166
    div-float v8, v1, v11

    add-float/2addr v5, v8

    .line 1170
    .end local v4    # "remainder":F
    :cond_1
    int-to-float v8, v2

    mul-float/2addr v8, v5

    add-float/2addr v3, v8

    .line 1172
    int-to-float v8, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-direct {p0, v8, v9}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    .line 1173
    float-to-int v8, v3

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Landroid/widget/AbsSeekBar;->setProgress(IZ)Z

    goto :goto_0

    .line 1144
    .end local v1    # "basicWidth":F
    .end local v2    # "max":I
    .end local v5    # "scale":F
    :cond_2
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v7, v8, :cond_3

    .line 1145
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "scale":F
    goto :goto_1

    .line 1147
    .end local v5    # "scale":F
    :cond_3
    sub-int v8, v0, v7

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v5, v8, v9

    .line 1148
    .restart local v5    # "scale":F
    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1

    .line 1151
    .end local v5    # "scale":F
    :cond_4
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v7, v8, :cond_5

    .line 1152
    const/4 v5, 0x0

    .restart local v5    # "scale":F
    goto :goto_1

    .line 1153
    .end local v5    # "scale":F
    :cond_5
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v8, v6, v8

    if-le v7, v8, :cond_6

    .line 1154
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "scale":F
    goto :goto_1

    .line 1156
    .end local v5    # "scale":F
    :cond_6
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v8, v7, v8

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v5, v8, v9

    .line 1157
    .restart local v5    # "scale":F
    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1
.end method

.method private trackTouchEventInVertical(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1177
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v1

    .line 1178
    .local v1, "height":I
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v6, v1, v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v0, v6, v7

    .line 1179
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    sub-int v5, v1, v6

    .line 1181
    .local v5, "y":I
    const/4 v3, 0x0

    .line 1182
    .local v3, "progress":F
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    if-ge v5, v6, :cond_0

    .line 1183
    const/4 v4, 0x0

    .line 1190
    .local v4, "scale":F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    .line 1191
    .local v2, "max":I
    int-to-float v6, v2

    mul-float/2addr v6, v4

    add-float/2addr v3, v6

    .line 1193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-direct {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    .line 1194
    float-to-int v6, v3

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setProgress(IZ)Z

    .line 1195
    return-void

    .line 1184
    .end local v2    # "max":I
    .end local v4    # "scale":F
    :cond_0
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v6, v1, v6

    if-le v5, v6, :cond_1

    .line 1185
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "scale":F
    goto :goto_0

    .line 1187
    .end local v4    # "scale":F
    :cond_1
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v4, v6, v7

    .line 1188
    .restart local v4    # "scale":F
    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private updateBoundsForDualColor()V
    .locals 13

    .prologue
    .line 1611
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1634
    :cond_0
    :goto_0
    return-void

    .line 1615
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1616
    .local v0, "base":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v5

    .line 1617
    .local v5, "maxProgress":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v2

    .line 1618
    .local v2, "curProgress":I
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1619
    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    sub-int v8, v9, v10

    .line 1620
    .local v8, "width":I
    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    int-to-float v10, v8

    iget v11, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    int-to-float v11, v11

    int-to-float v12, v5

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v4, v9

    .line 1621
    .local v4, "left":I
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v4, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1623
    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    int-to-float v10, v8

    int-to-float v11, v2

    int-to-float v12, v5

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v6, v9

    .line 1624
    .local v6, "right":I
    iget v9, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1625
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v4, v10, v6, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 1626
    .end local v4    # "left":I
    .end local v6    # "right":I
    .end local v8    # "width":I
    :cond_2
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1627
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, v9, v10

    .line 1628
    .local v3, "height":I
    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    int-to-float v10, v3

    iget v11, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    sub-int v11, v5, v11

    int-to-float v11, v11

    int-to-float v12, v5

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v1, v9

    .line 1629
    .local v1, "bottom":I
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, v0, Landroid/graphics/Rect;->top:I

    iget v12, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10, v11, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1631
    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    int-to-float v10, v3

    sub-int v11, v5, v2

    int-to-float v11, v11

    int-to-float v12, v5

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v7, v9

    .line 1632
    .local v7, "top":I
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10, v7, v11, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_0
.end method

.method private updateDualColorMode()V
    .locals 2

    .prologue
    .line 1590
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1608
    :goto_0
    return-void

    .line 1594
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1595
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1597
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    if-nez v0, :cond_1

    .line 1598
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    if-le v0, v1, :cond_2

    .line 1599
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 1600
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 1607
    :cond_1
    :goto_1
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateBoundsForDualColor()V

    goto :goto_0

    .line 1602
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1603
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method private updateSplitProgress()V
    .locals 12

    .prologue
    const/high16 v11, 0x41b00000    # 22.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v10, 0x40000000    # 2.0f

    .line 828
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    .line 831
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 832
    .local v0, "base":Landroid/graphics/Rect;
    if-eqz v1, :cond_2

    .line 843
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_3

    .line 844
    iget v4, p0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 851
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v3

    .line 852
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v2

    .line 854
    .local v2, "h":I
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 855
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v6, v9

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v7, v11

    div-float/2addr v7, v10

    sub-float/2addr v6, v7

    float-to-int v6, v6

    div-int/lit8 v7, v3, 0x2

    int-to-float v7, v7

    iget v8, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v8, v9

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v9, v11

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 847
    .end local v2    # "h":I
    .end local v3    # "w":I
    :cond_3
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method private updateThumbAndTrackPos(II)V
    .locals 13
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v10, 0x0

    .line 643
    const/4 v11, 0x3

    invoke-virtual {p0, v11}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 644
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPosInVertical(II)V

    .line 685
    :goto_0
    return-void

    .line 648
    :cond_0
    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v11, p2, v11

    iget v12, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v2, v11, v12

    .line 649
    .local v2, "paddedHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 650
    .local v6, "track":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 654
    .local v3, "thumb":Landroid/graphics/drawable/Drawable;
    iget v11, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 655
    .local v7, "trackHeight":I
    if-nez v3, :cond_4

    move v4, v10

    .line 661
    .local v4, "thumbHeight":I
    :goto_1
    const/4 v0, 0x0

    .line 663
    .local v0, "fluidOffset":I
    if-le v4, v7, :cond_5

    .line 664
    sub-int v11, v2, v4

    div-int/lit8 v1, v11, 0x2

    .line 665
    .local v1, "offsetHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    sub-int v11, v4, v7

    rem-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_1

    .line 666
    const/4 v0, 0x1

    .line 667
    :cond_1
    sub-int v11, v4, v7

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v1

    add-int v8, v11, v0

    .line 668
    .local v8, "trackOffset":I
    add-int/lit8 v5, v1, 0x0

    .line 675
    .local v5, "thumbOffset":I
    :goto_2
    if-eqz v6, :cond_2

    .line 676
    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v11, p1, v11

    iget v12, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v9, v11, v12

    .line 677
    .local v9, "trackWidth":I
    add-int v11, v8, v7

    invoke-virtual {v6, v10, v8, v9, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 680
    .end local v9    # "trackWidth":I
    :cond_2
    if-eqz v3, :cond_3

    .line 681
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v10

    invoke-direct {p0, p1, v3, v10, v5}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 684
    :cond_3
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    goto :goto_0

    .line 655
    .end local v0    # "fluidOffset":I
    .end local v1    # "offsetHeight":I
    .end local v4    # "thumbHeight":I
    .end local v5    # "thumbOffset":I
    .end local v8    # "trackOffset":I
    :cond_4
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_1

    .line 670
    .restart local v0    # "fluidOffset":I
    .restart local v4    # "thumbHeight":I
    :cond_5
    sub-int v11, v2, v7

    div-int/lit8 v1, v11, 0x2

    .line 671
    .restart local v1    # "offsetHeight":I
    add-int/lit8 v8, v1, 0x0

    .line 672
    .restart local v8    # "trackOffset":I
    sub-int v11, v7, v4

    div-int/lit8 v11, v11, 0x2

    add-int v5, v1, v11

    .restart local v5    # "thumbOffset":I
    goto :goto_2
.end method

.method private updateThumbAndTrackPosInVertical(II)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v6, 0x0

    .line 688
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 689
    .local v3, "track":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 693
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    iget v7, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v8, p1, v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 694
    .local v5, "trackWidth":I
    if-nez v0, :cond_2

    move v2, v6

    .line 699
    .local v2, "thumbWidth":I
    :goto_0
    if-le v2, v5, :cond_3

    .line 700
    sub-int v7, v2, v5

    div-int/lit8 v4, v7, 0x2

    .line 701
    .local v4, "trackOffset":I
    const/4 v1, 0x0

    .line 707
    .local v1, "thumbOffset":I
    :goto_1
    if-eqz v3, :cond_0

    .line 708
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v7, p1, v7

    sub-int/2addr v7, v4

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v8, p2, v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v8, v9

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 712
    :cond_0
    if-eqz v0, :cond_1

    .line 713
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v6

    invoke-direct {p0, p2, v0, v6, v1}, Landroid/widget/AbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    .line 715
    :cond_1
    return-void

    .line 694
    .end local v1    # "thumbOffset":I
    .end local v2    # "thumbWidth":I
    .end local v4    # "trackOffset":I
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_0

    .line 703
    .restart local v2    # "thumbWidth":I
    :cond_3
    const/4 v4, 0x0

    .line 704
    .restart local v4    # "trackOffset":I
    sub-int v7, v5, v2

    div-int/lit8 v1, v7, 0x2

    .restart local v1    # "thumbOffset":I
    goto :goto_1
.end method

.method private updateWarningMode(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    const/4 v0, 0x1

    .line 1658
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1659
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1661
    .local v0, "isMax":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1662
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 1663
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 1669
    .end local v0    # "isMax":Z
    :cond_0
    :goto_1
    return-void

    .line 1659
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1665
    .restart local v0    # "isMax":Z
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1666
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method


# virtual methods
.method drawThumb(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1002
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1005
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1006
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1010
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1011
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1013
    :cond_0
    return-void

    .line 1008
    :cond_1
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 960
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 961
    .local v3, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    if-eqz v4, :cond_2

    .line 962
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 963
    .local v0, "insets":Landroid/graphics/Insets;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 964
    .local v2, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 965
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 966
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 967
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 969
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 970
    .local v1, "saveCount":I
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 971
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 972
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 977
    .end local v0    # "insets":Landroid/graphics/Insets;
    .end local v1    # "saveCount":I
    .end local v2    # "tempRect":Landroid/graphics/Rect;
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 978
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 979
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 980
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 989
    :goto_1
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 990
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    if-le v4, v5, :cond_0

    .line 991
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 993
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 995
    :cond_1
    return-void

    .line 974
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 982
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_4

    .line 983
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 984
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    .line 986
    :cond_4
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 555
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->drawableHotspotChanged(FF)V

    .line 557
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 560
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 540
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 542
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 543
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget v2, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 544
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 547
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 548
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 551
    :cond_1
    return-void

    .line 544
    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/high16 v2, 0x437f0000    # 255.0f

    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1281
    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbCentralX()I
    .locals 1

    .prologue
    .line 1459
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    return v0
.end method

.method public getThumbCentralY()I
    .locals 1

    .prologue
    .line 1469
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbPosY:I

    return v0
.end method

.method public getThumbHeight()I
    .locals 1

    .prologue
    .line 1489
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getThumbWith()I
    .locals 1

    .prologue
    .line 1479
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public isFluidEnabled()Z
    .locals 1

    .prologue
    .line 1794
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 531
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 533
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 536
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 877
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 878
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 880
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 882
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V

    .line 884
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_2

    .line 886
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    sget-object v1, Landroid/widget/AbsSeekBar$Status;->TAIL_CLOSE:Landroid/widget/AbsSeekBar$Status;

    if-ne v0, v1, :cond_4

    .line 888
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    sget-object v1, Landroid/widget/AbsSeekBar$Side;->RIGHT:Landroid/widget/AbsSeekBar$Side;

    if-ne v0, v1, :cond_3

    .line 889
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 890
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->drawFrame(Landroid/graphics/Canvas;)V

    .line 895
    :cond_1
    :goto_0
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    if-nez v0, :cond_2

    .line 896
    sget-object v0, Landroid/widget/AbsSeekBar$Side;->NONE:Landroid/widget/AbsSeekBar$Side;

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 891
    :cond_3
    :try_start_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    sget-object v1, Landroid/widget/AbsSeekBar$Side;->LEFT:Landroid/widget/AbsSeekBar$Side;

    if-ne v0, v1, :cond_1

    .line 892
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 893
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->drawFrame(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 877
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 899
    :cond_4
    :try_start_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentStatus:Landroid/widget/AbsSeekBar$Status;

    sget-object v1, Landroid/widget/AbsSeekBar$Status;->TAIL_OPEN:Landroid/widget/AbsSeekBar$Status;

    if-ne v0, v1, :cond_2

    .line 901
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    sget-object v1, Landroid/widget/AbsSeekBar$Side;->RIGHT:Landroid/widget/AbsSeekBar$Side;

    if-ne v0, v1, :cond_7

    .line 902
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 903
    :cond_5
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 904
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    if-lt v0, v1, :cond_6

    .line 905
    iget v0, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 906
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->closeTail()V

    .line 918
    :cond_6
    :goto_2
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->drawFrame(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 908
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    sget-object v1, Landroid/widget/AbsSeekBar$Side;->LEFT:Landroid/widget/AbsSeekBar$Side;

    if-ne v0, v1, :cond_9

    .line 909
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    neg-int v1, v1

    if-le v0, v1, :cond_8

    iget v0, p0, Landroid/widget/AbsSeekBar;->circleTotal:I

    neg-int v0, v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 910
    :cond_8
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 911
    iget v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    if-gt v0, v1, :cond_6

    .line 912
    iget v0, p0, Landroid/widget/AbsSeekBar;->targetFrame:I

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 913
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->closeTail()V

    goto :goto_2

    .line 916
    :cond_9
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->closeTail()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method onHoverChanged(III)V
    .locals 0
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    .line 1369
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1415
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    if-ne v5, v4, :cond_1

    :cond_0
    move v1, v4

    .line 1418
    .local v1, "isPossibleTooltype":Z
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isHoveringUIEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 1419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1420
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 1421
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 1422
    .local v3, "y":I
    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    .line 1424
    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->trackHoverEvent(II)V

    .line 1425
    iget v4, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/AbsSeekBar;->onStartTrackingHover(III)V

    .line 1441
    .end local v0    # "action":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 1426
    .restart local v0    # "action":I
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_3
    const/4 v4, 0x7

    if-ne v0, v4, :cond_4

    .line 1427
    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->trackHoverEvent(II)V

    .line 1428
    iget v4, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/AbsSeekBar;->onHoverChanged(III)V

    .line 1430
    iget v4, p0, Landroid/widget/AbsSeekBar;->mHoverPopupType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 1432
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    .line 1434
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow;->updateHoverPopup()V

    goto :goto_0

    .line 1436
    :cond_4
    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    .line 1437
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingHover()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1287
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1289
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1290
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 1291
    .local v0, "progress":I
    if-lez v0, :cond_0

    .line 1292
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1294
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1295
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1298
    .end local v0    # "progress":I
    :cond_1
    return-void
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 1226
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1230
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1231
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 1232
    .local v0, "increment":I
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1233
    packed-switch p1, :pswitch_data_0

    .line 1265
    .end local v0    # "increment":I
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 1235
    .restart local v0    # "increment":I
    :pswitch_0
    neg-int v0, v0

    .line 1238
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    neg-int v0, v0

    .line 1241
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1242
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_1

    .line 1248
    :cond_2
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 1250
    :pswitch_2
    neg-int v0, v0

    .line 1253
    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_3

    neg-int v0, v0

    .line 1256
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1257
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_1

    .line 1233
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1248
    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 1017
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1019
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 1020
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 1021
    .local v1, "dh":I
    if-eqz v0, :cond_0

    .line 1022
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1023
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1

    move v4, v3

    .line 1024
    .local v4, "thumbWidth":I
    :goto_0
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1025
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1026
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1034
    .end local v4    # "thumbWidth":I
    :cond_0
    :goto_1
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 1035
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 1037
    const/4 v5, 0x0

    invoke-static {v2, p1, v5}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v1, p2, v6}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1039
    monitor-exit p0

    return-void

    .line 1023
    :cond_1
    :try_start_1
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_0

    .line 1028
    :cond_2
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_3

    .line 1029
    .local v3, "thumbHeight":I
    :goto_2
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1030
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1031
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 1028
    .end local v3    # "thumbHeight":I
    :cond_3
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_2

    .line 1017
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method onProgressRefresh(FZI)V
    .locals 5
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    .prologue
    const/4 v3, 0x0

    .line 564
    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v4, p1

    float-to-int v1, v4

    .line 566
    .local v1, "targetLevel":I
    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 568
    .local v0, "isMuteAnimationNeeded":Z
    :goto_0
    if-eqz v0, :cond_2

    iget v4, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    .line 569
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->startMuteAnimation()V

    .line 591
    :cond_0
    :goto_1
    return-void

    .end local v0    # "isMuteAnimationNeeded":Z
    :cond_1
    move v0, v3

    .line 566
    goto :goto_0

    .line 571
    .restart local v0    # "isMuteAnimationNeeded":Z
    :cond_2
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelMuteAnimation()V

    .line 573
    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 574
    iput v1, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    .line 576
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ProgressBar;->onProgressRefresh(FZI)V

    .line 578
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 579
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_3

    .line 580
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-direct {p0, v3, v2, p1, v4}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 585
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 588
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 589
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/AbsSeekBar;->openTail(I)V

    goto :goto_1
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 868
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    .line 870
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 873
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1337
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRtlPropertiesChanged(I)V

    .line 1339
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1340
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1341
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1346
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1348
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 636
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 640
    return-void
.end method

.method protected onSlidingRefresh(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 1724
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onSlidingRefresh(I)V

    .line 1726
    int-to-float v2, p1

    const v3, 0x461c4000    # 10000.0f

    div-float v0, v2, v3

    .line 1727
    .local v0, "scale":F
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1728
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 1729
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v2, v1, v0, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1734
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1736
    :cond_0
    return-void
.end method

.method onStartTrackingHover(III)V
    .locals 0
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    .line 1355
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 1211
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 1212
    return-void
.end method

.method onStopTrackingHover()V
    .locals 0

    .prologue
    .line 1362
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 1219
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 1220
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1043
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v3, v4

    .line 1120
    :cond_1
    :goto_0
    return v3

    .line 1047
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 1048
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    const/16 v5, 0x64

    if-lt v2, v5, :cond_4

    iget v2, p0, Landroid/widget/AbsSeekBar;->skipFrameWhenActionDown:I

    :goto_1
    iput v2, p0, Landroid/widget/AbsSeekBar;->currentSkipFrameWhenActionDown:I

    .line 1049
    iput v4, p0, Landroid/widget/AbsSeekBar;->animationCurrnetFrame:I

    .line 1050
    sget-object v2, Landroid/widget/AbsSeekBar$Side;->NONE:Landroid/widget/AbsSeekBar$Side;

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->currentSide:Landroid/widget/AbsSeekBar$Side;

    .line 1053
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1055
    :pswitch_0
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1056
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1057
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    .line 1058
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownY:F

    goto :goto_0

    :cond_4
    move v2, v3

    .line 1048
    goto :goto_1

    .line 1060
    :cond_5
    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 1061
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 1062
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 1064
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 1065
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1066
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 1071
    :pswitch_1
    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1072
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_7

    .line 1073
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1075
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1076
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1077
    .local v1, "y":F
    invoke-virtual {p0, v6}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v2

    if-nez v2, :cond_8

    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_9

    :cond_8
    invoke-virtual {p0, v6}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownY:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    .line 1079
    :cond_9
    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 1080
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a

    .line 1081
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 1083
    :cond_a
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 1084
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1085
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto/16 :goto_0

    .line 1091
    .end local v0    # "x":F
    .end local v1    # "y":F
    :pswitch_2
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    if-eqz v2, :cond_b

    .line 1092
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1094
    :cond_b
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_c

    .line 1095
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1096
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 1097
    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 1108
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_0

    .line 1101
    :cond_c
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 1102
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1103
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_2

    .line 1112
    :pswitch_3
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    .line 1113
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_d

    .line 1114
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 1115
    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 1117
    :cond_d
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_0

    .line 1053
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x2000

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1303
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1332
    :goto_0
    return v1

    .line 1307
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 1308
    goto :goto_0

    .line 1311
    :cond_1
    const/16 v3, 0x1000

    if-eq p1, v3, :cond_2

    if-ne p1, v5, :cond_6

    .line 1313
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1316
    .local v0, "increment":I
    sget-boolean v3, Landroid/widget/AbsSeekBar;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v3, :cond_3

    .line 1317
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41700000    # 15.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1320
    :cond_3
    if-ne p1, v5, :cond_4

    .line 1321
    neg-int v0, v0

    .line 1325
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1326
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 1329
    goto :goto_0

    .end local v0    # "increment":I
    :cond_6
    move v1, v2

    .line 1332
    goto :goto_0
.end method

.method public setDefaultColorForVolumePanel(Z)V
    .locals 3
    .param p1, "isClearCoverOpened"    # Z

    .prologue
    const v2, 0x106011b

    .line 1742
    if-eqz p1, :cond_0

    .line 1743
    const-string v0, "#ffe3e0e0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1744
    const-string v0, "#ff56c0e5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1745
    const-string v0, "#ff56c0e5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 1746
    const-string v0, "#fff7cdbd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1747
    const-string v0, "#fff1662f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1748
    const-string v0, "#fff1662f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 1757
    :goto_0
    return-void

    .line 1750
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1751
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1752
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 1753
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1754
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1755
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    goto :goto_0
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1534
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1536
    :goto_0
    return-void

    .line 1535
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setFluidColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1799
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1800
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    .line 1802
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1803
    return-void
.end method

.method public setFluidEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1769
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_active_themepackage"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1770
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1771
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    .line 1777
    :goto_0
    sget-boolean v1, Landroid/widget/AbsSeekBar;->SCAFE_ENABLED:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    if-nez v1, :cond_2

    .line 1778
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    .line 1782
    :goto_1
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    if-eqz v1, :cond_0

    .line 1783
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->seekBarFluidInit()V

    .line 1784
    :cond_0
    return-void

    .line 1773
    :cond_1
    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsOpenTheme:Z

    goto :goto_0

    .line 1780
    :cond_2
    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsFluidEnabled:Z

    goto :goto_1
.end method

.method public setHoverPopupType(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 1396
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isHoveringUIEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1408
    :goto_0
    return-void

    .line 1400
    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1401
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0x3231

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 1403
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMeasuredHeight()I

    move-result v0

    .line 1404
    .local v0, "contentHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/4 v2, 0x0

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 1405
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    .line 1407
    .end local v0    # "contentHeight":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setHoverPopupType(I)V

    goto :goto_0
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .param p1, "increment"    # I

    .prologue
    .line 497
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1    # "increment":I
    :cond_0
    iput p1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 498
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I

    .prologue
    .line 514
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    .line 517
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 520
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    :cond_1
    monitor-exit p0

    return-void

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1500
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMode(I)V

    .line 1501
    packed-switch p1, :pswitch_data_0

    .line 1519
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1520
    return-void

    .line 1503
    :pswitch_1
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1504
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1507
    :pswitch_2
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v2, 0x10809db

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1508
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1511
    .end local v0    # "thumb":Landroid/graphics/drawable/Drawable;
    :pswitch_3
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v2, 0x10809f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    .line 1512
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v2, 0x10809f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 1513
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    goto :goto_0

    .line 1516
    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->updateWarningMode(I)V

    goto :goto_0

    .line 1501
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setMuteAnimation(Z)V
    .locals 1
    .param p1, "use"    # Z

    .prologue
    .line 1716
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    if-eqz v0, :cond_0

    .line 1717
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    .line 1719
    :cond_0
    return-void
.end method

.method public setOverlapBackgroundForDualColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 1545
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1548
    .local v0, "mOverlapColor":Landroid/content/res/ColorStateList;
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1549
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1552
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1554
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mLargeFont:Z

    .line 1555
    return-void
.end method

.method public setOverlapPointForDualColor(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    const v2, 0x10809e1

    const v1, 0x10809df

    .line 1564
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 1587
    :cond_0
    :goto_0
    return-void

    .line 1568
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 1569
    iput p1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 1570
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1571
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1586
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto :goto_0

    .line 1573
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1574
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    .line 1575
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    .line 1583
    :goto_2
    iput p1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 1584
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    goto :goto_1

    .line 1576
    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1577
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    .line 1578
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method public setProgress(IZ)Z
    .locals 1
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z

    .prologue
    .line 1273
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->setProgress(IZ)Z

    move-result v0

    .line 1274
    .local v0, "superRet":Z
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->updateWarningMode(I)V

    .line 1275
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    .line 1276
    return v0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1449
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1450
    return-void
.end method

.method public setProgressDrawableForAutoBrightness(Z)V
    .locals 0
    .param p1, "auto"    # Z

    .prologue
    .line 1496
    return-void
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1821
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1823
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_PROGRESS_COLOR:Landroid/content/res/ColorStateList;

    .line 1824
    return-void
.end method

.method public setSplitProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1526
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1528
    :goto_0
    return-void

    .line 1527
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setSplitTrack(Z)V
    .locals 0
    .param p1, "splitTrack"    # Z

    .prologue
    .line 479
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    .line 480
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 481
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 284
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_5

    .line 285
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 286
    const/4 v0, 0x1

    .line 291
    .local v0, "needUpdate":Z
    :goto_0
    if-eqz p1, :cond_2

    .line 292
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 293
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 300
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 301
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 307
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 310
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->requestLayout()V

    .line 314
    :cond_2
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 316
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 317
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 319
    if-eqz v0, :cond_3

    .line 320
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 321
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 324
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 325
    .local v1, "state":[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 329
    .end local v1    # "state":[I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 330
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->pressedThumbWidth:I

    .line 331
    :cond_4
    return-void

    .line 288
    .end local v0    # "needUpdate":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "needUpdate":Z
    goto :goto_0

    .line 303
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    goto :goto_1
.end method

.method public setThumbOffset(I)V
    .locals 0
    .param p1, "thumbOffset"    # I

    .prologue
    .line 467
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 468
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 469
    return-void
.end method

.method public setThumbTintColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 352
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 354
    .local v0, "mOverlapColor":Landroid/content/res/ColorStateList;
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 357
    :cond_0
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 374
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 377
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 379
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 381
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setFluidColor(I)V

    .line 386
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_THUMB_COLOR:Landroid/content/res/ColorStateList;

    .line 387
    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setFluidColor(I)V

    goto :goto_0
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 414
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 417
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 418
    return-void
.end method

.method protected updateDrawableBounds(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1646
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 1648
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 1649
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateBoundsForDualColor()V

    .line 1650
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 526
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
