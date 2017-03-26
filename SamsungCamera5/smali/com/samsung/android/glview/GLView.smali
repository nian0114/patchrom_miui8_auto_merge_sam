.class public abstract Lcom/samsung/android/glview/GLView;
.super Ljava/lang/Object;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/glview/GLView$TouchListener;,
        Lcom/samsung/android/glview/GLView$OrientationChangeListener;,
        Lcom/samsung/android/glview/GLView$LongClickListener;,
        Lcom/samsung/android/glview/GLView$KeyListener;,
        Lcom/samsung/android/glview/GLView$FocusListener;,
        Lcom/samsung/android/glview/GLView$DragListener;,
        Lcom/samsung/android/glview/GLView$ClickListener;,
        Lcom/samsung/android/glview/GLView$AnimationEventListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_PENDING_TIMEOUT:I = 0x64

.field public static final CLICKABLE:I = 0x4000

.field private static final DEFAULT_REPEAT_CLICK_INTERVAL:I = 0x64

.field public static final DIM_ALPHA_VALUE:F = 0.45f

.field public static final DISABLED:I = 0x20

.field private static final DRAG_HOLD_TIME_ABSOLUTE:I = 0x0

.field private static final DRAG_HOLD_TIME_HIGH:I = 0x12c

.field private static final DRAG_HOLD_TIME_NORMAL:I = 0x1f4

.field public static final DRAG_SENSITIVITY_ABSOLUTE:I = 0x0

.field public static final DRAG_SENSITIVITY_HIGH:I = 0x1

.field public static final DRAG_SENSITIVITY_NORMAL:I = 0x2

.field private static final FOCUSABLE:I = 0x1

.field private static final FOCUSABLE_MASK:I = 0x1

.field public static final FOCUS_BACKWARD:I = 0x1

.field public static final FOCUS_DOWN:I = 0x82

.field public static final FOCUS_FORWARD:I = 0x2

.field public static final FOCUS_LEFT:I = 0x11

.field public static final FOCUS_RIGHT:I = 0x42

.field public static final FOCUS_UP:I = 0x21

.field public static final GONE:I = 0x8

.field public static final HOVER_DOWN:I = 0x52

.field public static final HOVER_LEFT:I = 0x31

.field public static final HOVER_RIGHT:I = 0x62

.field public static final HOVER_UP:I = 0x41

.field public static final H_ALIGN_CENTER:I = 0x2

.field public static final H_ALIGN_LEFT:I = 0x1

.field public static final H_ALIGN_NONE:I = 0x0

.field public static final H_ALIGN_RIGHT:I = 0x3

.field public static final INVISIBLE:I = 0x4

.field private static final LONG_CLICK_TIME:I = 0x1f4

.field private static final NOT_FOCUSABLE:I = 0x0

.field private static final NO_ID:I = -0x1

.field public static final ORIENTATION_0:I = 0x0

.field public static final ORIENTATION_180:I = 0x2

.field public static final ORIENTATION_270:I = 0x3

.field public static final ORIENTATION_90:I = 0x1

.field public static final VISIBLE:I = 0x0

.field public static final V_ALIGN_BOTTOM:I = 0x3

.field public static final V_ALIGN_MIDDLE:I = 0x2

.field public static final V_ALIGN_NONE:I = 0x0

.field public static final V_ALIGN_TOP:I = 0x1


# instance fields
.field private glCoordinate:[F

.field private glTransformedCoordinate:[F

.field protected mAlpha:F

.field protected mAlphaChanged:Z

.field private mAnimGLMatrix:[F

.field private mAnimMatrix:[F

.field private mAnimation:Landroid/view/animation/Animation;

.field protected mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

.field private mAnimationFinished:Z

.field private mAnimationPending:Z

.field private mAnimationStarted:Z

.field private mAnimationStartedEvent:Z

.field private mAnimationTimeSet:Z

.field protected mAsyncLoad:Z

.field private mBackground:Lcom/samsung/android/glview/GLView;

.field private mBackgroundResId:I

.field protected mBaseDepth:F

.field protected mBaseLeft:F

.field protected mBaseTop:F

.field private mBound:Landroid/graphics/RectF;

.field private mBypassTouch:Z

.field private mCenterPivot:Z

.field protected mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

.field private mClipRect:Landroid/graphics/Rect;

.field private mClipping:Z

.field private mCombinedMatrix:[F

.field public mContentDescription:Ljava/lang/String;

.field private mContinuousDrawMode:Z

.field protected mDefaultOrientation:I

.field protected mDepthChanged:Z

.field private mDimmed:Z

.field protected mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

.field private mDragSensitivity:I

.field private mDraggable:Z

.field protected mDragging:Z

.field protected mDrawFirstTime:Z

.field private mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

.field protected mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

.field private mFocused:Z

.field private mForcedClipping:Z

.field protected final mGLContext:Lcom/samsung/android/glview/GLContext;

.field protected mHasExtraDescription:Z

.field private mHideAfterAnimation:Z

.field private mHoverFocused:Z

.field private mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

.field protected mInScreen:Z

.field private mInternalFocus:Z

.field protected mIsClipped:Z

.field private mIsTouchCanceled:Z

.field protected mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

.field private mLastOrientation:I

.field protected mLayoutUpdated:Z

.field private mLeft:F

.field private mLeftBottom:[F

.field private mLeftTop:[F

.field private mLeftTopCoordinates:[Landroid/graphics/RectF;

.field private mLoaded:Z

.field private mLoading:Z

.field protected mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

.field private mLongClickable:Z

.field protected mManualClip:Z

.field private mManualClipRect:Landroid/graphics/Rect;

.field private mMatrix:[F

.field private mNextFocusDownId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field private mObjectTag:Ljava/lang/String;

.field private mOldAlpha:F

.field private mOrientation:I

.field private mOrientationChangeListener:Lcom/samsung/android/glview/GLView$OrientationChangeListener;

.field private mOriginalClipRect:Landroid/graphics/Rect;

.field protected mOriginalDepth:F

.field protected mOriginalLeft:F

.field protected mOriginalTop:F

.field protected mPaddings:Landroid/graphics/Rect;

.field public mParent:Lcom/samsung/android/glview/GLView;

.field protected mParentClipRect:Landroid/graphics/Rect;

.field private mParentHAlign:I

.field private mParentVAlign:I

.field private mParentViewId:I

.field protected mPositionChanged:Z

.field private mPreviousDragX:F

.field private mPreviousDragY:F

.field private mRepeatClickInterval:I

.field private mRepeatClickWhenLongClicked:Z

.field private mRightBottom:[F

.field private mRightTop:[F

.field private mRotatable:Z

.field private mRotateAnimation:Z

.field private mRotateAnimationDuration:I

.field private mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mRotationMatrix:[F

.field protected mScaleChanged:Z

.field private mScaleMatrix:[F

.field private mScaleX:F

.field private mScaleY:F

.field protected mShaderParameter:F

.field protected mShaderStep:F

.field protected mSizeGiven:Z

.field protected mSizeSpecified:Z

.field public mSubTitle:Ljava/lang/String;

.field private mTempMatrix:[F

.field private mTempOrientation:I

.field protected mThis:Lcom/samsung/android/glview/GLView;

.field protected mTintColor:I

.field public mTitle:Ljava/lang/String;

.field private mTop:F

.field protected mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

.field private mTransformation:Landroid/view/animation/Transformation;

.field protected mTransformedScreenCoordinate:[F

.field private mTranslateX:F

.field private mTranslateY:F

.field private mTranslateZ:F

.field private mTranslationMatrix:[F

.field private mUpdateMatrixAfterAnimation:Z

.field private mViewFlags:I

.field private mViewId:I

.field private mViewTag:I

.field private mVisibility:I

.field private mZCoordinate:F

.field private final repeatClick:Ljava/lang/Runnable;

.field private final setDragging:Ljava/lang/Runnable;

.field private final setLongClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 217
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    .line 221
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformedScreenCoordinate:[F

    .line 225
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    .line 230
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 234
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    .line 238
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mDepthChanged:Z

    .line 242
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    .line 246
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    .line 250
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 254
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    .line 258
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mAlphaChanged:Z

    .line 262
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderStep:F

    .line 266
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderParameter:F

    .line 270
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mTintColor:I

    .line 274
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 278
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 282
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    .line 286
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 290
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 294
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 298
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    .line 306
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    .line 310
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    .line 314
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAsyncLoad:Z

    .line 316
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mHasExtraDescription:Z

    .line 320
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    .line 324
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 328
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    .line 329
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 330
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 331
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    .line 332
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    .line 340
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 348
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    .line 352
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    .line 364
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    .line 368
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    .line 372
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    .line 376
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    .line 380
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    .line 384
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    .line 388
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationTimeSet:Z

    .line 392
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    .line 396
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    .line 400
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    .line 404
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    .line 410
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    .line 414
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    .line 418
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    .line 422
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    .line 426
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    .line 434
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    .line 438
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    .line 442
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    .line 446
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    .line 450
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    .line 454
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    .line 458
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    .line 462
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 466
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    .line 470
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    .line 474
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 478
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 479
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    .line 483
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    .line 487
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    .line 491
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    .line 495
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    .line 499
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    .line 503
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    .line 507
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    .line 508
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 509
    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    .line 513
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    .line 517
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    .line 521
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 537
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    .line 541
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    .line 545
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    .line 549
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    .line 553
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    .line 557
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    .line 576
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    .line 580
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    .line 592
    new-instance v1, Lcom/samsung/android/glview/GLView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$1;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    .line 608
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    .line 612
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    .line 616
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    .line 620
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    .line 621
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    .line 622
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    .line 623
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    .line 624
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    .line 625
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 626
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 627
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    .line 628
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    .line 629
    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    .line 633
    new-instance v1, Lcom/samsung/android/glview/GLView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$2;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    .line 650
    new-instance v1, Lcom/samsung/android/glview/GLView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$3;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    .line 666
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    .line 670
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    .line 677
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 677
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 689
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    .line 690
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iput p2, v1, Landroid/graphics/RectF;->left:F

    .line 691
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iput p3, v1, Landroid/graphics/RectF;->top:F

    .line 692
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 694
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 695
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 696
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    .line 698
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 699
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 700
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 702
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 703
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetTransformMatrix()V

    .line 705
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    .line 706
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 708
    invoke-virtual {p0, v3, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 709
    invoke-virtual {p0, v5, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 710
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 711
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 713
    iput-object p0, p0, Lcom/samsung/android/glview/GLView;->mThis:Lcom/samsung/android/glview/GLView;

    .line 715
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 716
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFF)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "depth"    # F

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 217
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    .line 221
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformedScreenCoordinate:[F

    .line 225
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    .line 230
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 234
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    .line 238
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mDepthChanged:Z

    .line 242
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    .line 246
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    .line 250
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 254
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    .line 258
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mAlphaChanged:Z

    .line 262
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderStep:F

    .line 266
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderParameter:F

    .line 270
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mTintColor:I

    .line 274
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 278
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 282
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    .line 286
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 290
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 294
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 298
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    .line 306
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    .line 310
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    .line 314
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAsyncLoad:Z

    .line 316
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mHasExtraDescription:Z

    .line 320
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    .line 324
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 328
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    .line 329
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 330
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 331
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    .line 332
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    .line 340
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 348
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    .line 352
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    .line 364
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    .line 368
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    .line 372
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    .line 376
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    .line 380
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    .line 384
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    .line 388
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationTimeSet:Z

    .line 392
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    .line 396
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    .line 400
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    .line 404
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    .line 410
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    .line 414
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    .line 418
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    .line 422
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    .line 426
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    .line 434
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    .line 438
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    .line 442
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    .line 446
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    .line 450
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    .line 454
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    .line 458
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    .line 462
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 466
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    .line 470
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    .line 474
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 478
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 479
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    .line 483
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    .line 487
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    .line 491
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    .line 495
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    .line 499
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    .line 503
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    .line 507
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    .line 508
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 509
    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    .line 513
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    .line 517
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    .line 521
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 537
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    .line 541
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    .line 545
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    .line 549
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    .line 553
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    .line 557
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    .line 576
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    .line 580
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    .line 592
    new-instance v1, Lcom/samsung/android/glview/GLView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$1;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    .line 608
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    .line 612
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    .line 616
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    .line 620
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    .line 621
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    .line 622
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    .line 623
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    .line 624
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    .line 625
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 626
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 627
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    .line 628
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    .line 629
    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    .line 633
    new-instance v1, Lcom/samsung/android/glview/GLView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$2;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    .line 650
    new-instance v1, Lcom/samsung/android/glview/GLView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$3;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    .line 666
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    .line 670
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    .line 677
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 677
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 727
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    .line 728
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iput p2, v1, Landroid/graphics/RectF;->left:F

    .line 729
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iput p3, v1, Landroid/graphics/RectF;->top:F

    .line 730
    iput p4, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 732
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 733
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 734
    iput p4, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    .line 736
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 737
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 738
    iput p4, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 740
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 741
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetTransformMatrix()V

    .line 743
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    .line 744
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 746
    invoke-virtual {p0, v3, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 747
    invoke-virtual {p0, v5, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 748
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 749
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 751
    iput-object p0, p0, Lcom/samsung/android/glview/GLView;->mThis:Lcom/samsung/android/glview/GLView;

    .line 753
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 754
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 217
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    .line 221
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformedScreenCoordinate:[F

    .line 225
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    .line 230
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 234
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    .line 238
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mDepthChanged:Z

    .line 242
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    .line 246
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    .line 250
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 254
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    .line 258
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mAlphaChanged:Z

    .line 262
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderStep:F

    .line 266
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderParameter:F

    .line 270
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTintColor:I

    .line 274
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 278
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 282
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    .line 286
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 290
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 294
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 298
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    .line 306
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    .line 310
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    .line 314
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAsyncLoad:Z

    .line 316
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mHasExtraDescription:Z

    .line 320
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    .line 324
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 328
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    .line 329
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 330
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 331
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    .line 332
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    .line 340
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 348
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    .line 352
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    .line 364
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    .line 368
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    .line 372
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    .line 376
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    .line 380
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    .line 384
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    .line 388
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationTimeSet:Z

    .line 392
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    .line 396
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    .line 400
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    .line 404
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    .line 410
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    .line 414
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    .line 418
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    .line 422
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    .line 426
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    .line 434
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    .line 438
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    .line 442
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    .line 446
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    .line 450
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    .line 454
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    .line 458
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    .line 462
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 466
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    .line 470
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    .line 474
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 478
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 479
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    .line 483
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    .line 487
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    .line 491
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    .line 495
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    .line 499
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    .line 503
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    .line 507
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    .line 508
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 509
    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    .line 513
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    .line 517
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    .line 521
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 537
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    .line 541
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    .line 545
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    .line 549
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    .line 553
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    .line 557
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    .line 576
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    .line 580
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    .line 592
    new-instance v1, Lcom/samsung/android/glview/GLView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$1;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    .line 608
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    .line 612
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    .line 616
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    .line 620
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    .line 621
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    .line 622
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    .line 623
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    .line 624
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    .line 625
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 626
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 627
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    .line 628
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    .line 629
    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    .line 633
    new-instance v1, Lcom/samsung/android/glview/GLView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$2;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    .line 650
    new-instance v1, Lcom/samsung/android/glview/GLView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$3;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    .line 666
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    .line 670
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    .line 677
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 677
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 766
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    add-float v2, p2, p4

    add-float v3, p3, p5

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    .line 767
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 769
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 770
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetTransformMatrix()V

    .line 772
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 773
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 774
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    .line 776
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 777
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 778
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 780
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    .line 781
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 783
    invoke-virtual {p0, v4, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 784
    invoke-virtual {p0, v6, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 785
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 786
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 788
    iput-object p0, p0, Lcom/samsung/android/glview/GLView;->mThis:Lcom/samsung/android/glview/GLView;

    .line 789
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 790
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFF)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "depth"    # F

    .prologue
    const/16 v6, 0x10

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 217
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    .line 221
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformedScreenCoordinate:[F

    .line 225
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    .line 230
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 234
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    .line 238
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mDepthChanged:Z

    .line 242
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    .line 246
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    .line 250
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 254
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    .line 258
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mAlphaChanged:Z

    .line 262
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderStep:F

    .line 266
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderParameter:F

    .line 270
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTintColor:I

    .line 274
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 278
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 282
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    .line 286
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 290
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 294
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 298
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    .line 306
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    .line 310
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    .line 314
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAsyncLoad:Z

    .line 316
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mHasExtraDescription:Z

    .line 320
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    .line 324
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 328
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    .line 329
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 330
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 331
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    .line 332
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    .line 340
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 348
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    .line 352
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    .line 364
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    .line 368
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    .line 372
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    .line 376
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    .line 380
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    .line 384
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    .line 388
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationTimeSet:Z

    .line 392
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    .line 396
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    .line 400
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    .line 404
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    .line 410
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    .line 414
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    .line 418
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    .line 422
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    .line 426
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    .line 434
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    .line 438
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    .line 442
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    .line 446
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    .line 450
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    .line 454
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    .line 458
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    .line 462
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 466
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    .line 470
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    .line 474
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 478
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 479
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    .line 483
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    .line 487
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    .line 491
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    .line 495
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    .line 499
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    .line 503
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    .line 507
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    .line 508
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 509
    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    .line 513
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    .line 517
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    .line 521
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 537
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    .line 541
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    .line 545
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    .line 549
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    .line 553
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    .line 557
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    .line 576
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    .line 580
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    .line 592
    new-instance v1, Lcom/samsung/android/glview/GLView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$1;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    .line 608
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    .line 612
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    .line 616
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    .line 620
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    .line 621
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    .line 622
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    .line 623
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    .line 624
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    .line 625
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 626
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 627
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    .line 628
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    .line 629
    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    .line 633
    new-instance v1, Lcom/samsung/android/glview/GLView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$2;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    .line 650
    new-instance v1, Lcom/samsung/android/glview/GLView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$3;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    .line 666
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    .line 670
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    .line 677
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 677
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 803
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    add-float v2, p2, p4

    add-float v3, p3, p5

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    .line 805
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 806
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetTransformMatrix()V

    .line 808
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 809
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 811
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 812
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 814
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    .line 815
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 817
    iput p6, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 819
    invoke-virtual {p0, v4, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 820
    invoke-virtual {p0, v5, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 821
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 822
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 824
    iput-object p0, p0, Lcom/samsung/android/glview/GLView;->mThis:Lcom/samsung/android/glview/GLView;

    .line 825
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 826
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/glview/GLView;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 41
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragX:F

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/glview/GLView;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 41
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragY:F

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/glview/GLView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 41
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/glview/GLView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/glview/GLView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private declared-synchronized combineMatrices()V
    .locals 3

    .prologue
    .line 3965
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    invoke-static {v0, v1, v2}, Lcom/samsung/android/glview/GLUtil;->multiplyMM([F[F[F)V

    .line 3966
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    invoke-static {v0, v1, v2}, Lcom/samsung/android/glview/GLUtil;->multiplyMM([F[F[F)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3970
    :goto_0
    monitor-exit p0

    return-void

    .line 3965
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3967
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private transformScreenCoordinates(IIII)V
    .locals 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/16 v8, 0xc

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3974
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v4

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v6

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v8

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 3975
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v5

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v7

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 3976
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v4

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v6

    int-to-float v3, p4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v8

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 3977
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v5

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v7

    int-to-float v3, p4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 3978
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v4

    int-to-float v2, p3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v6

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v8

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 3979
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v5

    int-to-float v2, p3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v7

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 3980
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v4

    int-to-float v2, p3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v6

    int-to-float v3, p4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v8

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 3981
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v5

    int-to-float v2, p3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v7

    int-to-float v3, p4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 3982
    return-void
.end method


# virtual methods
.method public declared-synchronized addAccessibilityChildViewNode(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 832
    .local p1, "listChildViewNode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/glview/GLView;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getVisibility()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 837
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 835
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBypassTouch()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getDepth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 836
    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 832
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addView(ILcom/samsung/android/glview/GLView;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 848
    return-void
.end method

.method public addView(Lcom/samsung/android/glview/GLView;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 845
    return-void
.end method

.method public final bringToFront()V
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLView;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 853
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLView;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 855
    :cond_0
    return-void
.end method

.method public final cancelAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 858
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 868
    :goto_0
    return-void

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 862
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 863
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    .line 864
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    .line 865
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    .line 867
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0
.end method

.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .line 874
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    .line 875
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    .line 876
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    .line 878
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_0

    .line 879
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->clear()V

    .line 880
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    .line 882
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_1

    .line 883
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    .line 884
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 886
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_2

    .line 887
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    .line 888
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 890
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 892
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v1, :cond_3

    .line 893
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    .line 896
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    if-eqz v1, :cond_4

    .line 897
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 900
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v1, :cond_6

    .line 901
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 902
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 903
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 905
    .end local v0    # "i":I
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_7

    .line 906
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p0}, Lcom/samsung/android/glview/GLView;->removeView(Lcom/samsung/android/glview/GLView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    :cond_7
    monitor-exit p0

    return-void

    .line 874
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected final clearClip()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3654
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v1

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 3655
    return-void
.end method

.method protected final clip()V
    .locals 5

    .prologue
    .line 3661
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isClippingForced()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3662
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->clearClip()V

    .line 3668
    :goto_0
    return-void

    .line 3667
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glScissor(IIII)V

    goto :goto_0
.end method

.method public contains(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 918
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 930
    :goto_0
    return v0

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 923
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    .line 926
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    if-nez v0, :cond_2

    .line 927
    const/4 v0, 0x0

    goto :goto_0

    .line 930
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method public final declared-synchronized draw([FLandroid/graphics/Rect;)V
    .locals 8
    .param p1, "parentMatrix"    # [F
    .param p2, "parentClipRect"    # Landroid/graphics/Rect;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 941
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    if-nez v1, :cond_1

    .line 942
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->load()Z

    move-result v1

    if-nez v1, :cond_1

    .line 943
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 948
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-eq v1, v4, :cond_0

    .line 952
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    if-eqz v1, :cond_2

    .line 953
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->setOrientation(I)V

    .line 956
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    if-eqz v1, :cond_3

    .line 957
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 963
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    .line 965
    .local v0, "currentMatrix":[F
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_9

    .line 966
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    if-nez v1, :cond_6

    .line 967
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 968
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 969
    .local v2, "timeMillis":J
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    if-eqz v1, :cond_4

    .line 970
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->startAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 941
    .end local v0    # "currentMatrix":[F
    .end local v2    # "timeMillis":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 974
    .restart local v0    # "currentMatrix":[F
    .restart local v2    # "timeMillis":J
    :cond_4
    :try_start_2
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    if-eqz v1, :cond_a

    .line 975
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    .line 976
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationTimeSet:Z

    .line 977
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 978
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 987
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 988
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 994
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    invoke-static {v1}, Lcom/samsung/android/glview/GLUtil;->toGLMatrix([F)[F

    .line 995
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    invoke-static {v1, v4, v5}, Lcom/samsung/android/glview/GLUtil;->multiplyMM([F[F[F)V

    .line 997
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    .line 1003
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    .line 1024
    .end local v2    # "timeMillis":J
    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    if-eqz v1, :cond_8

    .line 1025
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    if-eqz v1, :cond_7

    .line 1026
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    .line 1027
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 1029
    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    .line 1030
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1031
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1032
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    invoke-static {v1}, Lcom/samsung/android/glview/GLUtil;->toGLMatrix([F)[F

    .line 1033
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    invoke-static {v1, v4, v5}, Lcom/samsung/android/glview/GLUtil;->multiplyMM([F[F[F)V

    .line 1034
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    .line 1035
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    .line 1041
    :cond_8
    :goto_2
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    if-eqz v1, :cond_9

    .line 1042
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    .line 1043
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    if-eqz v1, :cond_9

    .line 1044
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/glview/GLView$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/glview/GLView$5;-><init>(Lcom/samsung/android/glview/GLView;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1054
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    invoke-static {v1, p1, v0}, Lcom/samsung/android/glview/GLUtil;->multiplyMM([F[F[F)V

    .line 1056
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    if-eqz v1, :cond_f

    .line 1057
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    .line 1058
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    if-eqz v1, :cond_14

    .line 1059
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLContext;->getScreenGeometry()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1060
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    if-eqz v1, :cond_e

    .line 1061
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 1062
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    .line 1063
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onOutOfScreen()V

    goto/16 :goto_0

    .line 979
    .restart local v2    # "timeMillis":J
    :cond_a
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationTimeSet:Z

    if-eqz v1, :cond_5

    .line 980
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationTimeSet:Z

    .line 981
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 982
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 984
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    goto/16 :goto_1

    .line 1005
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    .line 1006
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    .line 1008
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    if-eqz v1, :cond_c

    .line 1009
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/glview/GLView$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/glview/GLView$4;-><init>(Lcom/samsung/android/glview/GLView;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1017
    :cond_c
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    if-eqz v1, :cond_6

    .line 1018
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1037
    .end local v2    # "timeMillis":J
    :cond_d
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    goto/16 :goto_2

    .line 1067
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1068
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    .line 1093
    :goto_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 1096
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_10

    .line 1097
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/glview/GLView;->draw([FLandroid/graphics/Rect;)V

    .line 1099
    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onDraw()V

    .line 1100
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    .line 1101
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isFocusIndicatorVisible()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_11

    .line 1102
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/glview/GLRectangle;->draw([FLandroid/graphics/Rect;)V

    .line 1103
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_0

    .line 1104
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/glview/GLRectangle;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1069
    :cond_12
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, p2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1070
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    goto :goto_3

    .line 1072
    :cond_13
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1073
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    goto :goto_3

    .line 1076
    :cond_14
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLContext;->getScreenGeometry()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1077
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    if-eqz v1, :cond_15

    .line 1078
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 1079
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    .line 1080
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onOutOfScreen()V

    goto/16 :goto_0

    .line 1084
    :cond_15
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1085
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    goto/16 :goto_3

    .line 1086
    :cond_16
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, p2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1087
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    goto/16 :goto_3

    .line 1089
    :cond_17
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1090
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method public dumpViewHierarchy(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    .line 1109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1110
    .local v1, "s":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 1111
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1113
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    .line 1114
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1115
    const-string v2, "DUMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Title : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Clip(Manual:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :goto_1
    return-void

    .line 1118
    :cond_1
    const-string v2, "DUMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Clip(Manual:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1122
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1123
    const-string v2, "DUMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Title : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1126
    :cond_3
    const-string v2, "DUMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public findNextFocusFromView(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;
    .locals 8
    .param p1, "focusedView"    # Lcom/samsung/android/glview/GLView;
    .param p2, "direction"    # I

    .prologue
    .line 1132
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez p1, :cond_2

    .line 1133
    :cond_0
    const/4 v4, 0x0

    .line 1181
    :cond_1
    :goto_0
    return-object v4

    .line 1135
    :cond_2
    const/4 v4, 0x0

    .line 1138
    .local v4, "resultView":Lcom/samsung/android/glview/GLView;
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v3, v7

    .line 1139
    .local v3, "left":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v5, v7

    .line 1140
    .local v5, "top":F
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v0, v7

    .line 1141
    .local v0, "focusedViewLeft":F
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v1, v7

    .line 1142
    .local v1, "focusedViewTop":F
    sub-float v7, v0, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1143
    .local v2, "horizontalOffset":F
    sub-float v7, v1, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 1145
    .local v6, "verticalOffset":F
    sparse-switch p2, :sswitch_data_0

    .line 1179
    const/4 v4, 0x0

    goto :goto_0

    .line 1148
    :sswitch_0
    cmpl-float v7, v0, v3

    if-lez v7, :cond_1

    .line 1149
    cmpl-float v7, v2, v6

    if-lez v7, :cond_1

    .line 1150
    move-object v4, p0

    goto :goto_0

    .line 1156
    :sswitch_1
    cmpg-float v7, v0, v3

    if-gez v7, :cond_1

    .line 1157
    cmpl-float v7, v2, v6

    if-lez v7, :cond_1

    .line 1158
    move-object v4, p0

    goto :goto_0

    .line 1164
    :sswitch_2
    cmpl-float v7, v1, v5

    if-lez v7, :cond_1

    .line 1165
    cmpg-float v7, v2, v6

    if-gez v7, :cond_1

    .line 1166
    move-object v4, p0

    goto :goto_0

    .line 1172
    :sswitch_3
    cmpg-float v7, v1, v5

    if-gez v7, :cond_1

    .line 1173
    cmpg-float v7, v2, v6

    if-gez v7, :cond_1

    .line 1174
    move-object v4, p0

    goto :goto_0

    .line 1145
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x31 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_1
        0x52 -> :sswitch_3
        0x62 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 1194
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-eqz v1, :cond_1

    move-object p0, v0

    .line 1204
    .end local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_0
    :goto_0
    return-object p0

    .line 1197
    .restart local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    if-eqz v1, :cond_2

    move-object p0, v0

    .line 1198
    goto :goto_0

    .line 1201
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 1204
    goto :goto_0
.end method

.method public findViewById(I)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1214
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    if-ne v0, p1, :cond_0

    .line 1217
    .end local p0    # "this":Lcom/samsung/android/glview/GLView;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewByObjectTag(Ljava/lang/String;)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "objectTag"    # Ljava/lang/String;

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1230
    .end local p0    # "this":Lcom/samsung/android/glview/GLView;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewByTag(I)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 1240
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewTag:I

    if-ne v0, p1, :cond_0

    .line 1243
    .end local p0    # "this":Lcom/samsung/android/glview/GLView;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewFromLeftMostTop()Lcom/samsung/android/glview/GLView;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1253
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-eqz v1, :cond_1

    move-object p0, v0

    .line 1261
    .end local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_0
    :goto_0
    return-object p0

    .line 1257
    .restart local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    if-eqz v1, :cond_0

    move-object p0, v0

    .line 1258
    goto :goto_0
.end method

.method public getAlpha()F
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const v0, 0x3ee66666    # 0.45f

    .line 1270
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_1

    .line 1271
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getAlpha()F

    move-result v3

    mul-float/2addr v2, v3

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    if-eqz v3, :cond_0

    :goto_0
    mul-float/2addr v0, v2

    .line 1274
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 1271
    goto :goto_0

    .line 1274
    :cond_1
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    if-eqz v3, :cond_2

    :goto_2
    mul-float/2addr v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public getArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 1311
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final getBottom()F
    .locals 2

    .prologue
    .line 1320
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1321
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->initSize()V

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 1324
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    .line 1326
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public getBypassTouch()Z
    .locals 1

    .prologue
    .line 1330
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    return v0
.end method

.method public final getCenterPivot()Z
    .locals 1

    .prologue
    .line 1343
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    return v0
.end method

.method public getClickListener()Lcom/samsung/android/glview/GLView$ClickListener;
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    return-object v0
.end method

.method public getClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1370
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    .line 1372
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getClipRectArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 1390
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getContentArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 1394
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContentAreaLeft()F

    move-result v0

    .line 1395
    .local v0, "left":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContentAreaTop()F

    move-result v1

    .line 1396
    .local v1, "top":F
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContentAreaWidth()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContentAreaHeight()F

    move-result v4

    add-float/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method public getContentAreaHeight()F
    .locals 2

    .prologue
    .line 1405
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaLeft()F
    .locals 2

    .prologue
    .line 1409
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaTop()F
    .locals 2

    .prologue
    .line 1413
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaWidth()F
    .locals 2

    .prologue
    .line 1422
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Lcom/samsung/android/glview/GLContext;
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    return-object v0
.end method

.method public getCurrentArea()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 1448
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateX()F

    move-result v4

    .line 1449
    .local v4, "offsetX":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateY()F

    move-result v5

    .line 1450
    .local v5, "offsetY":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v6

    add-float v1, v6, v4

    .line 1451
    .local v1, "currentLeft":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v6

    add-float v3, v6, v5

    .line 1452
    .local v3, "currentTop":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v6

    add-float v2, v1, v6

    .line 1453
    .local v2, "currentRight":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v6

    add-float v0, v3, v6

    .line 1455
    .local v0, "currentBottom":F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v1, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v6
.end method

.method public getCurrentBottom()F
    .locals 2

    .prologue
    .line 1464
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentContentArea()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 1468
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getCurrentArea()Landroid/graphics/RectF;

    move-result-object v0

    .line 1469
    .local v0, "current":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public getCurrentDepth()F
    .locals 2

    .prologue
    .line 1478
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getDepth()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateZ()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentLeft()F
    .locals 2

    .prologue
    .line 1487
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentRight()F
    .locals 2

    .prologue
    .line 1496
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentTop()F
    .locals 2

    .prologue
    .line 1505
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public final getDepth()F
    .locals 2

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 1510
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getDepth()F

    move-result v1

    add-float/2addr v0, v1

    .line 1512
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    goto :goto_0
.end method

.method protected getDimState()Z
    .locals 1

    .prologue
    .line 3671
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    return v0
.end method

.method public getDraggable()Z
    .locals 1

    .prologue
    .line 1516
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    return v0
.end method

.method public getFocusListener()Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method public final getHeight()F
    .locals 2

    .prologue
    .line 1537
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1538
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->initSize()V

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 1562
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    return v0
.end method

.method public getInternalFocus()Z
    .locals 2

    .prologue
    .line 1566
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    .line 1567
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_0

    .line 1568
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getInternalFocus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1570
    :cond_0
    return v0
.end method

.method public getInternalFocusParent()Lcom/samsung/android/glview/GLView;
    .locals 1

    .prologue
    .line 1586
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    if-eqz v0, :cond_0

    .line 1591
    .end local p0    # "this":Lcom/samsung/android/glview/GLView;
    :goto_0
    return-object p0

    .line 1588
    .restart local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 1589
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getInternalFocusParent()Lcom/samsung/android/glview/GLView;

    move-result-object p0

    goto :goto_0

    .line 1591
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getLayoutX()F
    .locals 1

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public getLayoutY()F
    .locals 1

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public getLayoutZ()F
    .locals 1

    .prologue
    .line 1619
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    return v0
.end method

.method public final getLeft()F
    .locals 2

    .prologue
    .line 1628
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    if-eqz v0, :cond_1

    .line 1629
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    .line 1631
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    .line 1636
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    .line 1637
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    .line 1639
    :goto_1
    return v0

    .line 1633
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    .line 1634
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    goto :goto_0

    .line 1639
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    goto :goto_1
.end method

.method public final getLeftTop(I)[F
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 1650
    const/4 v2, 0x3

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 1651
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1653
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    if-eqz v2, :cond_3

    .line 1654
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v3

    add-float/2addr v2, v3

    div-float v0, v2, v4

    .line 1655
    .local v0, "centerX":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float v1, v2, v4

    .line 1657
    .local v1, "centerY":F
    packed-switch p1, :pswitch_data_0

    .line 1685
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    return-object v2

    .line 1659
    .restart local v0    # "centerX":F
    .restart local v1    # "centerY":F
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    aput v3, v2, v5

    .line 1660
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v3

    aput v3, v2, v6

    goto :goto_0

    .line 1663
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    aput v3, v2, v5

    .line 1664
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    sub-float v3, v1, v3

    aput v3, v2, v6

    goto :goto_0

    .line 1667
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v2, v5

    .line 1668
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v2, v6

    goto :goto_0

    .line 1671
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    sub-float v3, v0, v3

    aput v3, v2, v5

    .line 1672
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    aput v3, v2, v6

    goto :goto_0

    .line 1679
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v2, :cond_2

    .line 1680
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    iget v3, v3, Landroid/graphics/RectF;->left:F

    aput v3, v2, v5

    .line 1681
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    iget v3, v3, Landroid/graphics/RectF;->top:F

    aput v3, v2, v6

    goto :goto_0

    .line 1657
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getLoaded()Z
    .locals 1

    .prologue
    .line 1694
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    return v0
.end method

.method public getLongClickListener()Lcom/samsung/android/glview/GLView$LongClickListener;
    .locals 1

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    return-object v0
.end method

.method protected getMatrix()[F
    .locals 1

    .prologue
    .line 3680
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    return-object v0
.end method

.method public final getMoveLayoutX()F
    .locals 2

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getMoveLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    .line 1710
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getMoveLayoutY()F
    .locals 2

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getMoveLayoutY()F

    move-result v1

    add-float/2addr v0, v1

    .line 1717
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getMoveLayoutZ()F
    .locals 2

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 1722
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getMoveLayoutZ()F

    move-result v1

    add-float/2addr v0, v1

    .line 1724
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getNextFocusDownId()I
    .locals 1

    .prologue
    .line 1728
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    return v0
.end method

.method public final getNextFocusLeftId()I
    .locals 1

    .prologue
    .line 1736
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    return v0
.end method

.method public final getNextFocusRightId()I
    .locals 1

    .prologue
    .line 1744
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    return v0
.end method

.method public final getNextFocusUpId()I
    .locals 1

    .prologue
    .line 1752
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    return v0
.end method

.method public final getObjectTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrientation()I
    .locals 2

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 1786
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getOrientation()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    .line 1789
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    goto :goto_0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getParentHAlign()I
    .locals 1

    .prologue
    .line 1847
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    return v0
.end method

.method public getParentId()I
    .locals 1

    .prologue
    .line 1864
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    return v0
.end method

.method public final getParentVAlign()I
    .locals 1

    .prologue
    .line 1881
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    return v0
.end method

.method public getRepeatClickInterval()I
    .locals 1

    .prologue
    .line 1894
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    return v0
.end method

.method public final getRight()F
    .locals 2

    .prologue
    .line 1907
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1908
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->initSize()V

    .line 1910
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 1911
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    .line 1913
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method public final getRotatable()Z
    .locals 1

    .prologue
    .line 1922
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    return v0
.end method

.method public final getRotateAnimation()Z
    .locals 1

    .prologue
    .line 1940
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    return v0
.end method

.method public getScrollHint()Z
    .locals 1

    .prologue
    .line 1958
    const/4 v0, 0x0

    return v0
.end method

.method public final getSizeGiven()Z
    .locals 1

    .prologue
    .line 1962
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    return v0
.end method

.method protected final getSizeSpecified()Z
    .locals 1

    .prologue
    .line 3689
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTag()I
    .locals 1

    .prologue
    .line 1979
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewTag:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1992
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTop()F
    .locals 2

    .prologue
    .line 2005
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    if-eqz v0, :cond_1

    .line 2006
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 2007
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    .line 2008
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    .line 2013
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    .line 2014
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    .line 2016
    :goto_1
    return v0

    .line 2010
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    .line 2011
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    goto :goto_0

    .line 2016
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    goto :goto_1
.end method

.method public final getTranslateX()F
    .locals 2

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 2027
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    .line 2029
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    goto :goto_0
.end method

.method public final getTranslateY()F
    .locals 2

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 2039
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    .line 2041
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    goto :goto_0
.end method

.method public final getTranslateZ()F
    .locals 2

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 2051
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTranslateZ()F

    move-result v1

    add-float/2addr v0, v1

    .line 2053
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    goto :goto_0
.end method

.method public getTtsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2064
    .local v1, "ttsString":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mContentDescription:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 2065
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2069
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/glview/GLUtil;->isTimeInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2071
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/glview/GLUtil;->convertTimeInfoForTTS(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2072
    .local v0, "temp":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2073
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2075
    .end local v0    # "temp":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mSubTitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2076
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2077
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2079
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isDim()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2080
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2081
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/glview/R$string;->disable:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2083
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2066
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2067
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final getVisibility()I
    .locals 1

    .prologue
    .line 2092
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    return v0
.end method

.method public final getWidth()F
    .locals 2

    .prologue
    .line 2116
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 2117
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->initSize()V

    .line 2119
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public abstract initSize()V
.end method

.method public isAnimationFinished()Z
    .locals 1

    .prologue
    .line 2146
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    return v0
.end method

.method public final isClickable()Z
    .locals 2

    .prologue
    .line 2150
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized isClipped()Z
    .locals 1

    .prologue
    .line 3693
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isClippingForced()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2170
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_1

    .line 2171
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->isClippingForced()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2173
    :goto_0
    return v0

    .line 2171
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    goto :goto_0

    .line 2173
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    goto :goto_0
.end method

.method public isDim()Z
    .locals 2

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 2178
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isDim()Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    or-int/2addr v0, v1

    .line 2180
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    goto :goto_0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 2198
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    return v0
.end method

.method public final isFocusable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2203
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocused()Z
    .locals 1

    .prologue
    .line 2216
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    return v0
.end method

.method public isHoverSwipeEvent(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 2220
    const/16 v0, 0x41

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    const/16 v0, 0x31

    if-eq p1, v0, :cond_0

    const/16 v0, 0x62

    if-ne p1, v0, :cond_1

    .line 2221
    :cond_0
    const/4 v0, 0x1

    .line 2223
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInScreen()Z
    .locals 1

    .prologue
    .line 2227
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    return v0
.end method

.method public isLongClickable()Z
    .locals 1

    .prologue
    .line 2231
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    return v0
.end method

.method public isParentRotatable()Z
    .locals 1

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 2240
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getRotatable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2241
    const/4 v0, 0x1

    .line 2246
    :goto_0
    return v0

    .line 2243
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isParentRotatable()Z

    move-result v0

    goto :goto_0

    .line 2246
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepeatClickWhenLongClicked()Z
    .locals 1

    .prologue
    .line 2250
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    return v0
.end method

.method public final isVisible()I
    .locals 1

    .prologue
    .line 2261
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 2262
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    .line 2264
    :goto_0
    return v0

    .line 2262
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 2264
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    goto :goto_0
.end method

.method public keyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2268
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-eqz v0, :cond_0

    .line 2269
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    invoke-interface {v0, p0, p2}, Lcom/samsung/android/glview/GLView$KeyListener;->onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2270
    const/4 v0, 0x1

    .line 2272
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public keyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2276
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-eqz v0, :cond_0

    .line 2277
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    invoke-interface {v0, p0, p2}, Lcom/samsung/android/glview/GLView$KeyListener;->onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2278
    const/4 v0, 0x1

    .line 2280
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final load()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2289
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    if-eqz v2, :cond_2

    .line 2290
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLoaded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2291
    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    .line 2292
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    .line 2311
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2295
    goto :goto_0

    .line 2298
    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    if-nez v2, :cond_0

    .line 2301
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onLoad()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2302
    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    .line 2303
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    .line 2305
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_3

    .line 2306
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->load()Z

    .line 2311
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    goto :goto_0

    .line 2308
    :cond_4
    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    move v0, v1

    .line 2309
    goto :goto_0
.end method

.method protected mClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 3700
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final mapPoint([FFF)V
    .locals 7
    .param p1, "transformedScreenCoordinate"    # [F
    .param p2, "screenX"    # F
    .param p3, "screenY"    # F

    .prologue
    const/4 v3, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 2330
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    aput p2, v0, v1

    .line 2331
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    aput p3, v0, v6

    .line 2332
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    aput v2, v0, v3

    .line 2333
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    aput v2, v0, v3

    .line 2334
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 2336
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    aget v0, v0, v1

    aput v0, p1, v1

    .line 2337
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    aget v0, v0, v6

    aput v0, p1, v6

    .line 2338
    return-void
.end method

.method protected final mapPointReverse([FFF)V
    .locals 11
    .param p1, "transformedScreenCoordinate"    # [F
    .param p2, "screenX"    # F
    .param p3, "screenY"    # F

    .prologue
    .line 3711
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOrientation()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v10, v2, 0x4

    .line 3712
    .local v10, "orientation":I
    if-nez v10, :cond_0

    .line 3713
    const/4 v2, 0x0

    aput p2, p1, v2

    .line 3714
    const/4 v2, 0x1

    aput p3, p1, v2

    .line 3754
    :goto_0
    return-void

    .line 3718
    :cond_0
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 3722
    .local v0, "coordinateTransformMatrix":[F
    invoke-virtual {p0, v10}, Lcom/samsung/android/glview/GLView;->getLeftTop(I)[F

    move-result-object v9

    .line 3723
    .local v9, "leftTop":[F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_1

    .line 3724
    const/4 v2, 0x0

    aget v3, v9, v2

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v9, v2

    .line 3725
    const/4 v2, 0x1

    aget v3, v9, v2

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v9, v2

    .line 3728
    :cond_1
    const/4 v2, 0x4

    new-array v7, v2, [F

    .line 3729
    .local v7, "glLeftTopCoordinate":[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v7, v2

    .line 3730
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-static {v2, v7, v3, v4}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 3732
    const/4 v2, 0x4

    new-array v8, v2, [F

    .line 3733
    .local v8, "glRotatedLeftTopCoordinate":[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v8, v2

    .line 3734
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v4, 0x1

    aget v4, v9, v4

    invoke-static {v2, v8, v3, v4}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 3736
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3737
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, 0x1

    aget v4, v7, v4

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v4, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3738
    const/4 v1, 0x0

    mul-int/lit8 v2, v10, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 3739
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v8, v3

    neg-float v3, v3

    const/4 v4, 0x1

    aget v4, v8, v4

    neg-float v4, v4

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v4, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3744
    const/4 v2, 0x4

    new-array v5, v2, [F

    .line 3745
    .local v5, "glCoordinate":[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v5, v2

    .line 3746
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v2, v5, p2, p3}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 3748
    const/4 v2, 0x4

    new-array v1, v2, [F

    .line 3749
    .local v1, "glTransformedCoordinate":[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    .line 3750
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 3752
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-static {v2, p1, v3, v4}, Lcom/samsung/android/glview/GLUtil;->getScreenCoordinateFromGLCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    goto/16 :goto_0
.end method

.method public final moveBaseDepthLayout(F)V
    .locals 1
    .param p1, "z"    # F

    .prologue
    .line 2341
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 2342
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2349
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2350
    return-void
.end method

.method public final moveBaseDepthLayout(FZ)V
    .locals 1
    .param p1, "z"    # F
    .param p2, "update"    # Z

    .prologue
    .line 2353
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 2354
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2361
    if-eqz p2, :cond_0

    .line 2362
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2364
    :cond_0
    return-void
.end method

.method public final moveBaseDepthLayoutAbsolute(F)V
    .locals 2
    .param p1, "z"    # F

    .prologue
    .line 2367
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutZ()F

    move-result v0

    .line 2369
    .local v0, "moveZ":F
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 2370
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2377
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2378
    return-void
.end method

.method public final moveBaseDepthLayoutAbsolute(FZ)V
    .locals 2
    .param p1, "z"    # F
    .param p2, "update"    # Z

    .prologue
    .line 2381
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutZ()F

    move-result v0

    .line 2383
    .local v0, "moveZ":F
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 2384
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2391
    if-eqz p2, :cond_0

    .line 2392
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2394
    :cond_0
    return-void
.end method

.method public final moveBaseLayout(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2397
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    .line 2398
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 2400
    .local v0, "height":F
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 2401
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 2403
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 2404
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 2405
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 2406
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 2408
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2409
    return-void
.end method

.method public final moveBaseLayoutAbsolute(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2412
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    .line 2413
    .local v3, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 2414
    .local v0, "height":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutX()F

    move-result v1

    .line 2415
    .local v1, "moveX":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutY()F

    move-result v2

    .line 2417
    .local v2, "moveY":F
    iget v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 2418
    iget v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 2420
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 2421
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 2422
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 2423
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 2425
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2426
    return-void
.end method

.method public final moveBaseLayoutAbsolute(FFZ)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "update"    # Z

    .prologue
    .line 2429
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    .line 2430
    .local v3, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 2431
    .local v0, "height":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutX()F

    move-result v1

    .line 2432
    .local v1, "moveX":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutY()F

    move-result v2

    .line 2434
    .local v2, "moveY":F
    iget v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 2435
    iget v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 2437
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 2438
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 2439
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 2440
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 2442
    if-eqz p3, :cond_0

    .line 2443
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2445
    :cond_0
    return-void
.end method

.method public moveDepthLayout(F)V
    .locals 1
    .param p1, "z"    # F

    .prologue
    .line 2448
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2452
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2453
    return-void
.end method

.method public moveDepthLayoutAbsolute(F)V
    .locals 1
    .param p1, "z"    # F

    .prologue
    .line 2456
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2463
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2464
    return-void
.end method

.method public moveLayout(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2473
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 2474
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 2475
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 2476
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 2478
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2479
    return-void
.end method

.method public final moveLayoutAbsolute(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2488
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    .line 2489
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 2491
    .local v0, "height":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 2492
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 2493
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 2494
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 2496
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2497
    return-void
.end method

.method public final moveLayoutAbsolute(FFZ)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "update"    # Z

    .prologue
    .line 2500
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    .line 2501
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 2503
    .local v0, "height":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 2504
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 2505
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 2506
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 2508
    if-eqz p3, :cond_0

    .line 2509
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2511
    :cond_0
    return-void
.end method

.method protected onAlphaUpdated()V
    .locals 1

    .prologue
    .line 3757
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mAlphaChanged:Z

    .line 3758
    return-void
.end method

.method protected onDepthUpdated()V
    .locals 1

    .prologue
    .line 3761
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDepthChanged:Z

    .line 3762
    return-void
.end method

.method protected abstract onDraw()V
.end method

.method public onFocusStatusChanged(I)V
    .locals 10
    .param p1, "focusStatus"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2514
    if-ne p1, v8, :cond_2

    .line 2515
    iput-boolean v8, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    .line 2516
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_0

    .line 2517
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLContext;->getFocusIndicatorColor()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLContext;->getFocusIndicatorThickness()I

    move-result v7

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 2519
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    .line 2520
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLRectangle;->setClipping(Z)V

    .line 2521
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iput-object p0, v0, Lcom/samsung/android/glview/GLRectangle;->mParent:Lcom/samsung/android/glview/GLView;

    .line 2526
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    if-eqz v0, :cond_1

    .line 2527
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/glview/GLView$FocusListener;->onFocusChanged(Lcom/samsung/android/glview/GLView;I)Z

    .line 2529
    :cond_1
    return-void

    .line 2524
    :cond_2
    iput-boolean v9, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    goto :goto_0
.end method

.method public onHoverStatusChanged(I)V
    .locals 10
    .param p1, "hoverStatus"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2532
    if-nez p1, :cond_1

    .line 2533
    iput-boolean v9, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    .line 2534
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_0

    .line 2535
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLContext;->getHoverIndicatorColor()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLContext;->getHoverIndicatorThickness()I

    move-result v7

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 2537
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    .line 2538
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setClipping(Z)V

    .line 2539
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iput-object p0, v0, Lcom/samsung/android/glview/GLRectangle;->mParent:Lcom/samsung/android/glview/GLView;

    .line 2544
    :cond_0
    :goto_0
    return-void

    .line 2542
    :cond_1
    iput-boolean v8, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    goto :goto_0
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2547
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2551
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayoutUpdated()V
    .locals 1

    .prologue
    .line 3773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    .line 3774
    return-void
.end method

.method protected abstract onLoad()Z
.end method

.method protected onOrientationChanged(I)V
    .locals 10
    .param p1, "orientation"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 3789
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    if-eqz v1, :cond_4

    .line 3790
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    .line 3791
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    if-ne v1, p1, :cond_0

    .line 3827
    :goto_0
    return-void

    .line 3795
    :cond_0
    move v8, p1

    .line 3796
    .local v8, "tempOrientation":I
    if-nez v8, :cond_5

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    if-ne v1, v2, :cond_5

    .line 3797
    const/4 v8, 0x4

    .line 3802
    :cond_1
    :goto_1
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    sub-int/2addr v1, v8

    mul-int/lit8 v7, v1, 0x5a

    .line 3803
    .local v7, "degree":I
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLView;->setOrientation(I)V

    .line 3805
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isAnimationFinished()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3806
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    if-nez v1, :cond_6

    .line 3807
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    if-eqz v1, :cond_2

    .line 3808
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 3809
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    if-eqz v1, :cond_3

    .line 3810
    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    .line 3812
    :cond_3
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    invoke-static {v1}, Lcom/samsung/android/glview/GLUtil;->getAlphaOnAnimation(F)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3813
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->startAnimation()V

    .line 3826
    .end local v7    # "degree":I
    .end local v8    # "tempOrientation":I
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3798
    .restart local v8    # "tempOrientation":I
    :cond_5
    if-ne v8, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    if-nez v1, :cond_1

    .line 3799
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    goto :goto_1

    .line 3815
    .restart local v7    # "degree":I
    :cond_6
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v9

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v6

    div-float/2addr v6, v9

    add-float/2addr v6, v5

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 3816
    .local v0, "anim":Landroid/view/animation/RotateAnimation;
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 3817
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 3818
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_7

    .line 3819
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3820
    :cond_7
    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3821
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->startAnimation()V

    goto :goto_2
.end method

.method protected onOutOfScreen()V
    .locals 1

    .prologue
    .line 3830
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 3831
    return-void
.end method

.method protected abstract onReset()V
.end method

.method protected onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 3845
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 3852
    if-eqz p1, :cond_0

    .line 3853
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    if-eqz v0, :cond_0

    .line 3854
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3855
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    if-eqz v0, :cond_0

    .line 3856
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3860
    :cond_0
    return-void
.end method

.method protected parentClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 3868
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 3869
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->mClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 3871
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected refreshClipRect()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3880
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v1, v4, v5

    .line 3881
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v3, v4, v5

    .line 3882
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .line 3883
    .local v2, "right":I
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    .line 3885
    .local v0, "bottom":I
    invoke-direct {p0, v1, v3, v2, v0}, Lcom/samsung/android/glview/GLView;->transformScreenCoordinates(IIII)V

    .line 3887
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v4, v4, v6

    float-to-int v1, v4

    .line 3888
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v4, v4, v7

    float-to-int v3, v4

    .line 3889
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    aget v4, v4, v6

    float-to-int v2, v4

    .line 3890
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    aget v4, v4, v7

    float-to-int v0, v4

    .line 3892
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOrientation()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x4

    packed-switch v4, :pswitch_data_0

    .line 3916
    :goto_0
    if-gt v1, v2, :cond_0

    if-le v3, v0, :cond_1

    .line 3917
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v1, v4, v5

    .line 3918
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v3, v4, v5

    .line 3919
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .line 3920
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    .line 3923
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    .line 3924
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    .line 3926
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 3927
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    if-nez v4, :cond_3

    .line 3928
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    .line 3930
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 3931
    return-void

    .line 3894
    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    aget v4, v4, v6

    float-to-int v1, v4

    .line 3895
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    aget v4, v4, v7

    float-to-int v3, v4

    .line 3896
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    aget v4, v4, v6

    float-to-int v2, v4

    .line 3897
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    aget v4, v4, v7

    float-to-int v0, v4

    .line 3898
    goto :goto_0

    .line 3900
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    aget v4, v4, v6

    float-to-int v1, v4

    .line 3901
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    aget v4, v4, v7

    float-to-int v3, v4

    .line 3902
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    aget v4, v4, v6

    float-to-int v2, v4

    .line 3903
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    aget v4, v4, v7

    float-to-int v0, v4

    .line 3904
    goto :goto_0

    .line 3906
    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    aget v4, v4, v6

    float-to-int v1, v4

    .line 3907
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    aget v4, v4, v7

    float-to-int v3, v4

    .line 3908
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v4, v4, v6

    float-to-int v2, v4

    .line 3909
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v4, v4, v7

    float-to-int v0, v4

    .line 3910
    goto/16 :goto_0

    .line 3892
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public removeView(Lcom/samsung/android/glview/GLView;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 2560
    return-void
.end method

.method public final requestFocus()Z
    .locals 1

    .prologue
    .line 2563
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 2567
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILcom/samsung/android/glview/GLView;)Z
    .locals 7
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedView"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v5, -0x1

    .line 2571
    if-nez p2, :cond_1

    .line 2572
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_6

    .line 2573
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLView;->isHoverSwipeEvent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2574
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2, p0, v6}, Lcom/samsung/android/glview/GLContext;->onHoverChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    :goto_0
    move v2, v3

    .line 2633
    :goto_1
    return v2

    .line 2576
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/android/glview/GLContext;->onFocusChanged(Lcom/samsung/android/glview/GLView;)V

    goto :goto_0

    .line 2582
    :cond_1
    const/4 v0, 0x0

    .line 2583
    .local v0, "nextViewToFocus":Lcom/samsung/android/glview/GLView;
    move v1, p1

    .line 2586
    .local v1, "revisedDirection":I
    sparse-switch v1, :sswitch_data_0

    .line 2615
    :cond_2
    :goto_2
    if-nez v0, :cond_4

    .line 2616
    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v5

    if-ne v2, v5, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    if-eqz v2, :cond_3

    move v2, v4

    .line 2617
    goto :goto_1

    .line 2589
    :sswitch_0
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    if-eq v2, v5, :cond_2

    .line 2590
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLContext;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_2

    .line 2595
    :sswitch_1
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    if-eq v2, v5, :cond_2

    .line 2596
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLContext;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_2

    .line 2601
    :sswitch_2
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    if-eq v2, v5, :cond_2

    .line 2602
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLContext;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_2

    .line 2607
    :sswitch_3
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    if-eq v2, v5, :cond_2

    .line 2608
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLContext;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_2

    .line 2619
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getInternalFocus()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2620
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getInternalFocusParent()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5, v2, p2, v1}, Lcom/samsung/android/glview/GLContext;->findNextFocusFromView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    .line 2626
    :cond_4
    :goto_3
    if-eqz v0, :cond_6

    .line 2627
    invoke-virtual {v0, p1, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move v2, v3

    .line 2629
    goto :goto_1

    .line 2622
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2, v6, p2, v1}, Lcom/samsung/android/glview/GLContext;->findNextFocusFromView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_3

    .end local v0    # "nextViewToFocus":Lcom/samsung/android/glview/GLView;
    .end local v1    # "revisedDirection":I
    :cond_6
    move v2, v4

    .line 2633
    goto/16 :goto_1

    .line 2586
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x31 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_1
        0x52 -> :sswitch_3
        0x62 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public final reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2640
    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    .line 2641
    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    .line 2642
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 2643
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->reset()V

    .line 2645
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    .line 2646
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->reset()V

    .line 2648
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    .line 2649
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->reset()V

    .line 2651
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onReset()V

    .line 2652
    return-void
.end method

.method public final resetBaseDepth()V
    .locals 1

    .prologue
    .line 2655
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2656
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2657
    return-void
.end method

.method public final resetBaseLayout()V
    .locals 4

    .prologue
    .line 2660
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    .line 2661
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 2663
    .local v0, "height":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 2664
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 2665
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 2666
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 2668
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2669
    return-void
.end method

.method public resetClipRect()V
    .locals 1

    .prologue
    .line 2672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    .line 2673
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    .line 2674
    return-void
.end method

.method public final resetDepth()V
    .locals 1

    .prologue
    .line 2677
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2679
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2680
    return-void
.end method

.method protected resetDrag()V
    .locals 2

    .prologue
    .line 3937
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    .line 3938
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3939
    return-void
.end method

.method public final resetLayout()V
    .locals 4

    .prologue
    .line 2686
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    .line 2687
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 2689
    .local v0, "height":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 2690
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 2691
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 2692
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 2694
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2695
    return-void
.end method

.method public final resetScale()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2701
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    .line 2703
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2705
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 2707
    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    .line 2708
    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    .line 2709
    return-void
.end method

.method public final declared-synchronized resetTransformMatrix()V
    .locals 2

    .prologue
    .line 2715
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2723
    :goto_0
    monitor-exit p0

    return-void

    .line 2718
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2719
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2720
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2721
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2722
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2715
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final resetTranslate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2729
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 2741
    :goto_0
    return-void

    .line 2732
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2734
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 2736
    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 2737
    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 2738
    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    .line 2740
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_0
.end method

.method public final declared-synchronized rotateDegree(I)V
    .locals 7
    .param p1, "degree"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 2749
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2763
    :goto_0
    monitor-exit p0

    return-void

    .line 2752
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2754
    const/4 v0, 0x2

    new-array v6, v0, [F

    .line 2756
    .local v6, "currentPivot":[F
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-static {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 2758
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2759
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 2760
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2762
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2749
    .end local v6    # "currentPivot":[F
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final scale(FF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2772
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    if-nez v1, :cond_0

    .line 2788
    :goto_0
    return-void

    .line 2774
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    aput v2, v1, v4

    .line 2775
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    aput v2, v1, v5

    .line 2777
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 2778
    .local v0, "currentPivot":[F
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v3, v3, v5

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 2780
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-static {v1, v4, v2, v3, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2781
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v4, p1, p2, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 2782
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    aget v2, v0, v4

    neg-float v2, v2

    aget v3, v0, v5

    neg-float v3, v3

    invoke-static {v1, v4, v2, v3, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2784
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    .line 2785
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    .line 2787
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    goto :goto_0
.end method

.method public sendAccessibilityEvent()V
    .locals 3

    .prologue
    .line 2795
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isEnableAccessibilityNode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2796
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2797
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2798
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2799
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2800
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2801
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2804
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2806
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void

    .line 2803
    .restart local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getObjectTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1303
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    invoke-static {v0, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1304
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    .line 1305
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    .line 1306
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->updateAlpha()V

    .line 1308
    :cond_0
    return-void
.end method

.method public final setAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2814
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 2815
    return-void
.end method

.method public final declared-synchronized setAnimation(Landroid/view/animation/Animation;Z)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "hideAfterAnimation"    # Z

    .prologue
    .line 2824
    monitor-enter p0

    :try_start_0
    iput-boolean p2, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    .line 2825
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2826
    monitor-exit p0

    return-void

    .line 2824
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .prologue
    .line 2829
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 2830
    return-void
.end method

.method public setAsyncLoad(Z)V
    .locals 0
    .param p1, "async"    # Z

    .prologue
    .line 2833
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mAsyncLoad:Z

    .line 2834
    return-void
.end method

.method public setBackground(I)Z
    .locals 7
    .param p1, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2842
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    if-ne v0, p1, :cond_0

    .line 2843
    const/4 v0, 0x0

    .line 2852
    :goto_0
    return v0

    .line 2845
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 2846
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clear()V

    .line 2847
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    .line 2849
    :cond_1
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    .line 2850
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    move v3, v2

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    .line 2851
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    iput-object p0, v0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    .line 2852
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBackgroundAlpha(F)Z
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 2861
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-nez v0, :cond_0

    .line 2862
    const/4 v0, 0x0

    .line 2865
    :goto_0
    return v0

    .line 2864
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setAlpha(F)V

    .line 2865
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBypassTouch(Z)V
    .locals 0
    .param p1, "bypass"    # Z

    .prologue
    .line 1334
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    .line 1335
    return-void
.end method

.method public setCenterPivot(Z)V
    .locals 0
    .param p1, "centerPivot"    # Z

    .prologue
    .line 1352
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    .line 1353
    return-void
.end method

.method public setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$ClickListener;

    .prologue
    .line 1360
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    .line 1361
    return-void
.end method

.method public setClickable(Z)V
    .locals 2
    .param p1, "clickable"    # Z

    .prologue
    .line 2161
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    and-int/lit16 v1, v0, -0x4001

    if-eqz p1, :cond_0

    const/16 v0, 0x4000

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    .line 2162
    return-void

    .line 2161
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClipRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1382
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    .line 1386
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    .line 1387
    return-void

    .line 1384
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setClipping(Z)V
    .locals 1
    .param p1, "clipping"    # Z

    .prologue
    .line 2874
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    .line 2875
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    if-eqz v0, :cond_0

    .line 2876
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    .line 2878
    :cond_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 1430
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mContentDescription:Ljava/lang/String;

    .line 1431
    return-void
.end method

.method public final setContinuousDrawMode(Z)V
    .locals 0
    .param p1, "continuousDrawMode"    # Z

    .prologue
    .line 2886
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    .line 2887
    return-void
.end method

.method public final setDefaultOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 2895
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    .line 2896
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->updateRotationMatrix()V

    .line 2897
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 2898
    return-void
.end method

.method public setDim(Z)V
    .locals 2
    .param p1, "dimmed"    # Z

    .prologue
    .line 2189
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    if-ne v0, p1, :cond_0

    .line 2195
    :goto_0
    return-void

    .line 2192
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    .line 2193
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0
.end method

.method public setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$DragListener;

    .prologue
    .line 2901
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    .line 2902
    return-void
.end method

.method public setDragSensitivity(I)V
    .locals 1
    .param p1, "sensitivity"    # I

    .prologue
    .line 2910
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2911
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2914
    :cond_0
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    .line 2915
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "draggable"    # Z

    .prologue
    .line 1520
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    .line 1521
    return-void
.end method

.method public setExtraDescription(Z)V
    .locals 0
    .param p1, "hasExtraDescription"    # Z

    .prologue
    .line 2918
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mHasExtraDescription:Z

    .line 2919
    return-void
.end method

.method public setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$FocusListener;

    .prologue
    .line 1528
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 1529
    return-void
.end method

.method public setFocusable(Z)V
    .locals 2
    .param p1, "focusable"    # Z

    .prologue
    .line 2212
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    and-int/lit8 v1, v0, -0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    .line 2213
    return-void

    .line 2212
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setForcedClipping(Z)V
    .locals 0
    .param p1, "forced"    # Z

    .prologue
    .line 2927
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    .line 2928
    return-void
.end method

.method public setHeight(F)V
    .locals 3
    .param p1, "height"    # F

    .prologue
    .line 1544
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1559
    :goto_0
    return-void

    .line 1547
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1548
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 1549
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setHeight(F)V

    .line 1551
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    .line 1552
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setHeight(F)V

    .line 1555
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_3

    .line 1556
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setHeight(F)V

    .line 1558
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_0
.end method

.method public setInternalFocus(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1582
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    .line 1583
    return-void
.end method

.method public setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$KeyListener;

    .prologue
    .line 2931
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    .line 2932
    return-void
.end method

.method public final setLeftTop(IFF)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    .line 2942
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 2943
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2945
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    .line 2946
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/RectF;->left:F

    .line 2947
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p3, v0, Landroid/graphics/RectF;->top:F

    .line 2949
    :cond_2
    return-void
.end method

.method public final setLeftTop(IFFZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "update"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2959
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 2960
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2962
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    .line 2963
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/RectF;->left:F

    .line 2964
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p3, v0, Landroid/graphics/RectF;->top:F

    .line 2967
    :cond_2
    if-eqz p4, :cond_3

    .line 2968
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->setRotatable(Z)V

    .line 2969
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2971
    :cond_3
    return-void
.end method

.method public final setLeftTop(I[F)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "leftTops"    # [F

    .prologue
    .line 2980
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 2981
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2983
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 2984
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 2985
    return-void
.end method

.method public setLongClickListener(Lcom/samsung/android/glview/GLView$LongClickListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$LongClickListener;

    .prologue
    .line 1702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    .line 1703
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    .line 1704
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 0
    .param p1, "longClickable"    # Z

    .prologue
    .line 2235
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    .line 2236
    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1732
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    .line 1733
    return-void
.end method

.method public setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 2988
    if-eqz p1, :cond_0

    .line 2989
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    .line 2990
    const/4 v0, 0x1

    .line 2992
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusLeftId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1740
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    .line 1741
    return-void
.end method

.method public setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 2996
    if-eqz p1, :cond_0

    .line 2997
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    .line 2998
    const/4 v0, 0x1

    .line 3000
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusRightId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1748
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    .line 1749
    return-void
.end method

.method public setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 3004
    if-eqz p1, :cond_0

    .line 3005
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    .line 3006
    const/4 v0, 0x1

    .line 3008
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusUpId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1756
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    .line 1757
    return-void
.end method

.method public setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 3012
    if-eqz p1, :cond_0

    .line 3013
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    .line 3014
    const/4 v0, 0x1

    .line 3016
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNinePatchBackground(I)Z
    .locals 7
    .param p1, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 3025
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    if-ne v0, p1, :cond_0

    .line 3026
    const/4 v0, 0x0

    .line 3036
    :goto_0
    return v0

    .line 3028
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 3029
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clear()V

    .line 3030
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    .line 3032
    :cond_1
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    .line 3033
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    move v3, v2

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    .line 3034
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    iput-object p0, v0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    .line 3035
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 3036
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setNinePatchBackground(II)Z
    .locals 8
    .param p1, "resId"    # I
    .param p2, "alpha"    # I

    .prologue
    const/4 v2, 0x0

    .line 3046
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    if-ne v0, p1, :cond_0

    .line 3047
    const/4 v0, 0x0

    .line 3057
    :goto_0
    return v0

    .line 3049
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 3050
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clear()V

    .line 3051
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    .line 3053
    :cond_1
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    .line 3054
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    int-to-float v7, p2

    move v3, v2

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    .line 3055
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    iput-object p0, v0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    .line 3056
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 3057
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setObjectTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "commandString"    # Ljava/lang/String;

    .prologue
    .line 1776
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    .line 1777
    return-void
.end method

.method public final declared-synchronized setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 1798
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1799
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1798
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1802
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 1815
    :goto_0
    monitor-exit p0

    return-void

    .line 1806
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    .line 1807
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    .line 1809
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->updateRotationMatrix()V

    .line 1811
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mOrientationChangeListener:Lcom/samsung/android/glview/GLView$OrientationChangeListener;

    if-eqz v0, :cond_2

    .line 1812
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mOrientationChangeListener:Lcom/samsung/android/glview/GLView$OrientationChangeListener;

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/samsung/android/glview/GLView$OrientationChangeListener;->onOrientationChanged(I)V

    .line 1814
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$OrientationChangeListener;

    .prologue
    .line 3066
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mOrientationChangeListener:Lcom/samsung/android/glview/GLView$OrientationChangeListener;

    .line 3067
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "paddings"    # Landroid/graphics/Rect;

    .prologue
    .line 1832
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 1833
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_0

    .line 1834
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 1836
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    .line 1837
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 1839
    :cond_1
    return-void
.end method

.method public final setParentHAlign(I)V
    .locals 0
    .param p1, "halign"    # I

    .prologue
    .line 1856
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    .line 1857
    return-void
.end method

.method public setParentId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1872
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    .line 1873
    return-void
.end method

.method public final setParentVAlign(I)V
    .locals 0
    .param p1, "valign"    # I

    .prologue
    .line 1890
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    .line 1891
    return-void
.end method

.method public setRepeatClickInterval(I)V
    .locals 0
    .param p1, "milliSeconds"    # I

    .prologue
    .line 1898
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    .line 1899
    return-void
.end method

.method public setRepeatClickWhenLongClicked(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2254
    if-eqz p1, :cond_0

    .line 2255
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    .line 2257
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    .line 2258
    return-void
.end method

.method public setRotatable(Z)V
    .locals 0
    .param p1, "rotatable"    # Z

    .prologue
    .line 1931
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    .line 1932
    return-void
.end method

.method public setRotateAnimation(Z)V
    .locals 0
    .param p1, "rotateAnimation"    # Z

    .prologue
    .line 1949
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    .line 1950
    return-void
.end method

.method public setRotateAnimationDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 3070
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    .line 3071
    return-void
.end method

.method public setRotateAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 3074
    if-eqz p1, :cond_0

    .line 3075
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 3076
    :cond_0
    return-void
.end method

.method public setShaderParameter(F)V
    .locals 0
    .param p1, "parameter"    # F

    .prologue
    .line 3084
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mShaderParameter:F

    .line 3085
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 3093
    return-void
.end method

.method public setShaderStep(F)V
    .locals 0
    .param p1, "step"    # F

    .prologue
    .line 3102
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mShaderStep:F

    .line 3103
    return-void
.end method

.method public setSize(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v2, 0x1

    .line 3112
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 3113
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 3115
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    .line 3116
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 3118
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 3119
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLView;->setSize(FF)V

    .line 3121
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    .line 3122
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 3125
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    .line 3126
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 3129
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3130
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1970
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mSubTitle:Ljava/lang/String;

    .line 1971
    return-void
.end method

.method public final setTag(I)V
    .locals 0
    .param p1, "viewTag"    # I

    .prologue
    .line 1988
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mViewTag:I

    .line 1989
    return-void
.end method

.method public setTint(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 3136
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mTintColor:I

    .line 3137
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1996
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mTitle:Ljava/lang/String;

    .line 1997
    return-void
.end method

.method public setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$TouchListener;

    .prologue
    .line 3145
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 3146
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 2101
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-eq v0, p1, :cond_1

    .line 2102
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    .line 2103
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v0, :cond_0

    .line 2104
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 2106
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    .line 2108
    :cond_1
    return-void
.end method

.method public setVisibility(IZ)V
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "update"    # Z

    .prologue
    .line 3149
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-ne v0, p1, :cond_0

    .line 3157
    :goto_0
    return-void

    .line 3152
    :cond_0
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    .line 3153
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v0, :cond_1

    .line 3154
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 3156
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    goto :goto_0
.end method

.method public setWidth(F)V
    .locals 3
    .param p1, "width"    # F

    .prologue
    .line 2123
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 2138
    :goto_0
    return-void

    .line 2126
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 2127
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 2128
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setWidth(F)V

    .line 2130
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    .line 2131
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setWidth(F)V

    .line 2134
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_3

    .line 2135
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setWidth(F)V

    .line 2137
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_0
.end method

.method public final startAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3163
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 3177
    :goto_0
    return-void

    .line 3166
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    if-eqz v0, :cond_1

    .line 3167
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 3168
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    .line 3169
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    .line 3174
    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    .line 3176
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0

    .line 3171
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    .line 3172
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    goto :goto_1
.end method

.method public touchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 3187
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    packed-switch v0, :pswitch_data_0

    .line 3196
    const/16 v6, 0x1f4

    .line 3199
    .local v6, "dragHoldTime":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 3200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    .line 3201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragX:F

    .line 3202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragY:F

    .line 3203
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    .line 3204
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    if-eqz v0, :cond_0

    .line 3205
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    .line 3206
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    if-nez v0, :cond_3

    .line 3207
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3212
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    if-eqz v0, :cond_1

    .line 3213
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3287
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    if-eqz v0, :cond_14

    .line 3288
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/glview/GLView$TouchListener;->onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3289
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    if-nez v0, :cond_2

    .line 3290
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    :cond_2
    move v0, v7

    .line 3306
    :goto_3
    return v0

    .line 3189
    .end local v6    # "dragHoldTime":I
    :pswitch_0
    const/4 v6, 0x0

    .line 3190
    .restart local v6    # "dragHoldTime":I
    goto :goto_0

    .line 3192
    .end local v6    # "dragHoldTime":I
    :pswitch_1
    const/16 v6, 0x12c

    .line 3193
    .restart local v6    # "dragHoldTime":I
    goto :goto_0

    .line 3209
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 3215
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 3216
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    if-eqz v0, :cond_a

    .line 3217
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    if-eqz v0, :cond_8

    .line 3218
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOrientation()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 3219
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v0, :cond_5

    .line 3220
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/android/glview/GLView$DragListener;->onDragEnd(Lcom/samsung/android/glview/GLView;FF)V

    .line 3222
    :cond_5
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3223
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    move v0, v7

    .line 3224
    goto :goto_3

    .line 3226
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v0, :cond_7

    .line 3227
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragX:F

    sub-float v4, v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragY:F

    sub-float v5, v1, v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/glview/GLView$DragListener;->onDrag(Lcom/samsung/android/glview/GLView;FFFF)V

    .line 3229
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragX:F

    .line 3230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragY:F

    .line 3231
    if-eqz v6, :cond_1

    move v0, v7

    .line 3232
    goto :goto_3

    .line 3233
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3234
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    goto/16 :goto_2

    .line 3236
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragX:F

    .line 3237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragY:F

    goto/16 :goto_2

    .line 3239
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3241
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    if-eqz v0, :cond_1

    .line 3242
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3243
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    if-eqz v0, :cond_1

    .line 3244
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 3248
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_11

    .line 3249
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    if-eqz v0, :cond_10

    .line 3250
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    if-eqz v0, :cond_d

    .line 3251
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v0, :cond_c

    .line 3252
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/android/glview/GLView$DragListener;->onDragEnd(Lcom/samsung/android/glview/GLView;FF)V

    .line 3254
    :cond_c
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3256
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    .line 3262
    :cond_e
    :goto_4
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    if-eqz v0, :cond_f

    .line 3263
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3264
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    if-eqz v0, :cond_f

    .line 3265
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3268
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->sendAccessibilityEvent()V

    goto/16 :goto_2

    .line 3258
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3259
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_4

    .line 3269
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 3270
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    if-eqz v0, :cond_13

    .line 3271
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    if-eqz v0, :cond_12

    .line 3272
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v0, :cond_12

    .line 3273
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/android/glview/GLView$DragListener;->onDragEnd(Lcom/samsung/android/glview/GLView;FF)V

    .line 3276
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    .line 3278
    :cond_13
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    if-eqz v0, :cond_1

    .line 3279
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3280
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    if-eqz v0, :cond_1

    .line 3281
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 3296
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_15

    .line 3297
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3300
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_17

    .line 3301
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    if-eqz v0, :cond_16

    move v0, v7

    .line 3302
    goto/16 :goto_3

    .line 3304
    :cond_16
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    .line 3306
    :cond_17
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_3

    .line 3187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final translate(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 3316
    cmpl-float v2, p1, v5

    if-nez v2, :cond_0

    cmpl-float v2, p2, v5

    if-nez v2, :cond_0

    .line 3335
    :goto_0
    return-void

    .line 3319
    :cond_0
    move v0, p1

    .line 3320
    .local v0, "alignedX":F
    move v1, p2

    .line 3323
    .local v1, "alignedY":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3324
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 3325
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 3328
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v3, v0}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceX(Lcom/samsung/android/glview/GLContext;F)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v4, v1}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v4

    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3330
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3332
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3333
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3334
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    goto :goto_0
.end method

.method public final translate(FFF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 3362
    cmpl-float v2, p1, v5

    if-nez v2, :cond_0

    cmpl-float v2, p2, v5

    if-nez v2, :cond_0

    .line 3385
    :goto_0
    return-void

    .line 3365
    :cond_0
    move v0, p1

    .line 3366
    .local v0, "alignedX":F
    move v1, p2

    .line 3369
    .local v1, "alignedY":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3370
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 3371
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 3374
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6, v0, v1, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3375
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3377
    cmpl-float v2, p3, v5

    if-eqz v2, :cond_2

    .line 3378
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3382
    :goto_1
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3383
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 3384
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    add-float/2addr v2, p3

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    goto :goto_0

    .line 3380
    :cond_2
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_1
.end method

.method public final translate(FFFZ)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "update"    # Z

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 3388
    cmpl-float v2, p1, v4

    if-nez v2, :cond_0

    cmpl-float v2, p2, v4

    if-nez v2, :cond_0

    cmpl-float v2, p3, v4

    if-nez v2, :cond_0

    .line 3412
    :goto_0
    return-void

    .line 3391
    :cond_0
    move v0, p1

    .line 3392
    .local v0, "alignedX":F
    move v1, p2

    .line 3395
    .local v1, "alignedY":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3396
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 3397
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 3399
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6, v0, v1, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3400
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3402
    if-eqz p4, :cond_2

    .line 3403
    cmpl-float v2, p3, v4

    if-eqz v2, :cond_3

    .line 3404
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3409
    :cond_2
    :goto_1
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3410
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 3411
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    add-float/2addr v2, p3

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    goto :goto_0

    .line 3406
    :cond_3
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_1
.end method

.method public final translate(FFZ)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "update"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 3338
    cmpl-float v2, p1, v5

    if-nez v2, :cond_0

    cmpl-float v2, p2, v5

    if-nez v2, :cond_0

    .line 3359
    :goto_0
    return-void

    .line 3341
    :cond_0
    move v0, p1

    .line 3342
    .local v0, "alignedX":F
    move v1, p2

    .line 3345
    .local v1, "alignedY":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3346
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 3347
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 3350
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v3, v0}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceX(Lcom/samsung/android/glview/GLContext;F)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v4, v1}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v4

    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3352
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3354
    if-eqz p3, :cond_2

    .line 3355
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3357
    :cond_2
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3358
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    goto :goto_0
.end method

.method public final translateAbsolute(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 3415
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    invoke-static {v2, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    invoke-static {v2, p2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3447
    :goto_0
    return-void

    .line 3418
    :cond_0
    move v0, p1

    .line 3419
    .local v0, "alignedX":F
    move v1, p2

    .line 3422
    .local v1, "alignedY":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3423
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3426
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3427
    cmpl-float v2, v0, v5

    if-ltz v2, :cond_2

    .line 3428
    add-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    .line 3432
    :goto_1
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_3

    .line 3433
    add-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    .line 3439
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v3, v0}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceX(Lcom/samsung/android/glview/GLContext;F)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v4, v1}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v4

    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3441
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3443
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3445
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3446
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    goto :goto_0

    .line 3430
    :cond_2
    sub-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    goto :goto_1

    .line 3435
    :cond_3
    sub-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    goto :goto_2
.end method

.method public final translateAbsolute(FFF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 3486
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    invoke-static {v2, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    invoke-static {v2, p2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    invoke-static {v2, p3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3522
    :goto_0
    return-void

    .line 3489
    :cond_0
    move v0, p1

    .line 3490
    .local v0, "alignedX":F
    move v1, p2

    .line 3493
    .local v1, "alignedY":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3494
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3497
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3498
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_2

    .line 3499
    add-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    .line 3503
    :goto_1
    cmpl-float v2, v1, v4

    if-ltz v2, :cond_3

    .line 3504
    add-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    .line 3510
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v3, v0}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceX(Lcom/samsung/android/glview/GLContext;F)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v4, v1}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v5, p3}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v5

    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3512
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3514
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    invoke-static {v2, p3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3515
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3519
    :goto_3
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3520
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 3521
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    goto :goto_0

    .line 3501
    :cond_2
    sub-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    goto :goto_1

    .line 3506
    :cond_3
    sub-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    goto :goto_2

    .line 3517
    :cond_4
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_3
.end method

.method public final translateAbsolute(FFFZ)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "update"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 3525
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    invoke-static {v2, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    invoke-static {v2, p2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    invoke-static {v2, p3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3563
    :goto_0
    return-void

    .line 3528
    :cond_0
    move v0, p1

    .line 3529
    .local v0, "alignedX":F
    move v1, p2

    .line 3532
    .local v1, "alignedY":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3533
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3536
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3537
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_3

    .line 3538
    add-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    .line 3542
    :goto_1
    cmpl-float v2, v1, v4

    if-ltz v2, :cond_4

    .line 3543
    add-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    .line 3549
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v3, v0}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceX(Lcom/samsung/android/glview/GLContext;F)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v4, v1}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v5, p3}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v5

    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3551
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3553
    if-eqz p4, :cond_2

    .line 3554
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    invoke-static {v2, p3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3555
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3560
    :cond_2
    :goto_3
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3561
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 3562
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    goto :goto_0

    .line 3540
    :cond_3
    sub-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    goto :goto_1

    .line 3545
    :cond_4
    sub-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    goto :goto_2

    .line 3557
    :cond_5
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_3
.end method

.method public final translateAbsolute(FFZ)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "update"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 3450
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    invoke-static {v2, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    invoke-static {v2, p2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3483
    :goto_0
    return-void

    .line 3453
    :cond_0
    move v0, p1

    .line 3454
    .local v0, "alignedX":F
    move v1, p2

    .line 3457
    .local v1, "alignedY":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3458
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3461
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3462
    cmpl-float v2, v0, v5

    if-ltz v2, :cond_3

    .line 3463
    add-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    .line 3467
    :goto_1
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_4

    .line 3468
    add-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    .line 3474
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v3, v0}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceX(Lcom/samsung/android/glview/GLContext;F)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v4, v1}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v4

    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3476
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3478
    if-eqz p3, :cond_2

    .line 3479
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3481
    :cond_2
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3482
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    goto :goto_0

    .line 3465
    :cond_3
    sub-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    goto :goto_1

    .line 3470
    :cond_4
    sub-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    goto :goto_2
.end method

.method public updateAlpha()V
    .locals 2

    .prologue
    .line 3566
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 3567
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 3568
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 3569
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 3571
    :cond_0
    return-void
.end method

.method public updateLayout(Z)V
    .locals 2
    .param p1, "depthUpdated"    # Z

    .prologue
    const/4 v1, 0x1

    .line 3574
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    .line 3575
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 3576
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 3577
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 3579
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    .line 3580
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->onLayoutUpdated()V

    .line 3582
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    .line 3583
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->onLayoutUpdated()V

    .line 3585
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_3

    .line 3586
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onDepthUpdated()V

    .line 3588
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 3590
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    if-eqz v0, :cond_4

    .line 3591
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->updateRotationMatrix()V

    .line 3594
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    if-eqz v0, :cond_5

    .line 3595
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->updateScaleMatrix()V

    .line 3597
    :cond_5
    return-void
.end method

.method public final declared-synchronized updateRotationMatrix()V
    .locals 9

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 3600
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3602
    const/4 v0, 0x2

    new-array v6, v0, [F

    .line 3603
    .local v6, "currentPivot":[F
    const/4 v0, 0x2

    new-array v8, v0, [F

    .line 3604
    .local v8, "rotationPivot":[F
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->getLeftTop(I)[F

    move-result-object v7

    .line 3606
    .local v7, "leftTop":[F
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    if-eqz v0, :cond_0

    .line 3607
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    aput v1, v7, v0

    .line 3608
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    aput v1, v7, v0

    .line 3610
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-static {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 3612
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3613
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x4

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 3614
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3629
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3630
    monitor-exit p0

    return-void

    .line 3616
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 3617
    const/4 v0, 0x0

    aget v1, v7, v0

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    add-float/2addr v1, v2

    aput v1, v7, v0

    .line 3618
    const/4 v0, 0x1

    aget v1, v7, v0

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    add-float/2addr v1, v2

    aput v1, v7, v0

    .line 3621
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-static {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 3622
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-static {v0, v8, v1, v2}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 3624
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3625
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x4

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 3626
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3600
    .end local v6    # "currentPivot":[F
    .end local v7    # "leftTop":[F
    .end local v8    # "rotationPivot":[F
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateScaleMatrix()V
    .locals 8

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3633
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    .line 3635
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 3638
    .local v0, "currentPivot":[F
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    aput v2, v1, v5

    .line 3639
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    aput v2, v1, v6

    .line 3641
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v3, v3, v6

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 3643
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    aget v2, v0, v5

    aget v3, v0, v6

    invoke-static {v1, v5, v2, v3, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3644
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v5, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 3645
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    aget v2, v0, v5

    neg-float v2, v2

    aget v3, v0, v6

    neg-float v3, v3

    invoke-static {v1, v5, v2, v3, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3647
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3648
    return-void
.end method

.method protected updateSize(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 3942
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 3943
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 3945
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    .line 3947
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 3948
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLView;->updateSize(FF)V

    .line 3950
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    .line 3951
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->updateSize(FF)V

    .line 3954
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    .line 3955
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->updateSize(FF)V

    .line 3957
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3958
    return-void
.end method
