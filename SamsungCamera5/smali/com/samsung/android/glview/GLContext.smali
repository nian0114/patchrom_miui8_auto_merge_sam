.class public Lcom/samsung/android/glview/GLContext;
.super Ljava/lang/Object;
.source "GLContext.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/hardware/scontext/SContextListener;
.implements Landroid/view/Choreographer$FrameCallback;
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;,
        Lcom/samsung/android/glview/GLContext$GLInitializeListener;
    }
.end annotation


# static fields
.field public static final FOCUSED:I = 0x1

.field private static final FOCUS_INDICATOR_DEFAULT_THICKNESS:I = 0x2

.field private static final FPS_CALCULATION_INTERVAL_THRESHOLD:I = 0x64

.field public static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field public static final HOVER_ENTER:I = 0x0

.field public static final HOVER_EXIT:I = 0x1

.field private static final HOVER_INDICATOR_DEFAULT_THICKNESS:I = 0x1

.field public static final NOT_FOCUSED:I = 0x0

.field public static final ORIENTATION_CHANGE_MARGIN_IN_DEGREE:I = 0xa

.field private static final SENSORHUB_SERVICE_NAME:Ljava/lang/String; = "scontext"

.field private static final TAG:Ljava/lang/String; = "GLContext"

.field protected static mApplicationContext:Landroid/content/Context;

.field private static mLastOrientation:I

.field private static mOrientationCompensationValue:I

.field private static mResources:Landroid/content/res/Resources;


# instance fields
.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mAccumulatedTime:J

.field private mAlignToPixel:Z

.field private mAutoOrientationStatus:Z

.field private mChoreographer:Landroid/view/Choreographer;

.field private mClipRect:Landroid/graphics/Rect;

.field private mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

.field private mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

.field private mDensity:F

.field private mDirty:Z

.field private mEstimatedFPS:I

.field private mFocusIndicatorColor:I

.field private mFocusIndicatorThickness:I

.field private mFocusIndicatorVisibilityChanged:Z

.field private mFrameCountForFPS:J

.field private final mFrameLock:Ljava/lang/Object;

.field private mFrameNum:J

.field private mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

.field private mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeight:I

.field private mHoverBaseView:Landroid/view/View;

.field private mHoverIndicatorColor:I

.field private mHoverIndicatorThickness:I

.field private mHoverSwipeReceiver:Landroid/content/BroadcastReceiver;

.field private mIdentityMatrix:[F

.field private mIsAccessibilityNodeEnabled:Z

.field private mIsAccessibilityServiceEnabled:Z

.field private mIsFocusIndicatorVisible:Z

.field private mIsFocusNavigationEnabled:Z

.field private mIsSContextListenerAvailable:Z

.field private mIsTouchExplorationEnabled:Z

.field private mLastHoverView:Lcom/samsung/android/glview/GLView;

.field private mLastMotionEvent:Landroid/view/MotionEvent;

.field private mLastTouchView:Lcom/samsung/android/glview/GLView;

.field private mListener:Lcom/samsung/android/glview/GLContext$GLInitializeListener;

.field private mMainHandler:Landroid/os/Handler;

.field protected mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPaused:Z

.field private mPrevFrameTimeStamp:J

.field private mProjMatrix:[F

.field private mRenderRequested:Z

.field private mRippleEffectColor:I

.field private mRippleEffectEnabled:Z

.field private mRootView:Lcom/samsung/android/glview/GLViewGroup;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mScrollBarAutoHide:Z

.field private mSettingInteractionControlObserver:Landroid/database/ContentObserver;

.field private mTapDir:I

.field private mTapDirState:I

.field private mTexturesToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExplorationEnabledContentObserver:Landroid/database/ContentObserver;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    sput v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    .line 108
    sput v0, Lcom/samsung/android/glview/GLContext;->mOrientationCompensationValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/glview/GLContext$GLInitializeListener;Landroid/opengl/GLSurfaceView;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/glview/GLContext$GLInitializeListener;
    .param p3, "surfaceView"    # Landroid/opengl/GLSurfaceView;

    .prologue
    const-wide/16 v6, 0x0

    const/16 v5, 0xff

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mFrameLock:Ljava/lang/Object;

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    .line 122
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    .line 123
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mAutoOrientationStatus:Z

    .line 124
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    .line 125
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    .line 129
    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mIdentityMatrix:[F

    .line 130
    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mProjMatrix:[F

    .line 134
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mClipRect:Landroid/graphics/Rect;

    .line 138
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mMainHandler:Landroid/os/Handler;

    .line 142
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mHandlerThread:Landroid/os/HandlerThread;

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    .line 150
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    .line 151
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mDirty:Z

    .line 152
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mRenderRequested:Z

    .line 153
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    .line 154
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mScrollBarAutoHide:Z

    .line 155
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mAlignToPixel:Z

    .line 156
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectEnabled:Z

    .line 157
    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectColor:I

    .line 158
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mDensity:F

    .line 160
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    .line 161
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 162
    const/16 v1, 0x9e

    invoke-static {v5, v3, v1, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorColor:I

    .line 163
    invoke-static {v5, v3, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorColor:I

    .line 164
    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorThickness:I

    .line 165
    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorThickness:I

    .line 166
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

    .line 167
    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mTapDir:I

    .line 168
    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 169
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    .line 170
    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    .line 171
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityNodeEnabled:Z

    .line 172
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityServiceEnabled:Z

    .line 173
    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameCountForFPS:J

    .line 174
    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    .line 175
    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mPrevFrameTimeStamp:J

    .line 176
    iput v3, p0, Lcom/samsung/android/glview/GLContext;->mEstimatedFPS:I

    .line 177
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mChoreographer:Landroid/view/Choreographer;

    .line 178
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusNavigationEnabled:Z

    .line 179
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 183
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 187
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 191
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mIsSContextListenerAvailable:Z

    .line 200
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 207
    new-instance v1, Lcom/samsung/android/glview/GLContext$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLContext$1;-><init>(Lcom/samsung/android/glview/GLContext;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mHoverSwipeReceiver:Landroid/content/BroadcastReceiver;

    .line 234
    new-instance v1, Lcom/samsung/android/glview/GLContext$2;

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/glview/GLContext$2;-><init>(Lcom/samsung/android/glview/GLContext;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTouchExplorationEnabledContentObserver:Landroid/database/ContentObserver;

    .line 256
    new-instance v1, Lcom/samsung/android/glview/GLContext$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/glview/GLContext$3;-><init>(Lcom/samsung/android/glview/GLContext;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mSettingInteractionControlObserver:Landroid/database/ContentObserver;

    .line 268
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mIdentityMatrix:[F

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 278
    sput-object p1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    .line 279
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    .line 280
    iput-object p2, p0, Lcom/samsung/android/glview/GLContext;->mListener:Lcom/samsung/android/glview/GLContext$GLInitializeListener;

    .line 281
    iput-object p3, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 283
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mDensity:F

    .line 285
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->setOrientationListener()V

    .line 287
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateTouchExplorationEnabled()V

    .line 290
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 291
    .local v0, "outValue":Landroid/util/TypedValue;
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101042c

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 292
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectColor:I

    .line 294
    iget v1, p0, Lcom/samsung/android/glview/GLContext;->mDensity:F

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorThickness:I

    .line 295
    iget v1, p0, Lcom/samsung/android/glview/GLContext;->mDensity:F

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorThickness:I

    .line 297
    new-instance v1, Lcom/samsung/android/glview/GLContext$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLContext$4;-><init>(Lcom/samsung/android/glview/GLContext;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 308
    return-void
.end method

.method private HandlingKeyEventTap()Z
    .locals 9

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1730
    const/4 v0, 0x0

    .line 1731
    .local v0, "result":Z
    iget v1, p0, Lcom/samsung/android/glview/GLContext;->mTapDir:I

    if-nez v1, :cond_14

    .line 1732
    if-nez v0, :cond_0

    iget v1, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    if-nez v1, :cond_0

    .line 1733
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1734
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1735
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v8, v2}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1736
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1737
    iput v4, p0, Lcom/samsung/android/glview/GLContext;->mTapDir:I

    .line 1738
    iput v6, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1756
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget v1, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    if-ne v1, v4, :cond_1

    .line 1757
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1758
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v8, v2}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1759
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1760
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1761
    iput v4, p0, Lcom/samsung/android/glview/GLContext;->mTapDir:I

    .line 1762
    iput v7, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1780
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iget v1, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    if-ne v1, v6, :cond_2

    .line 1781
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v8, v2}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1782
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1783
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1784
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1785
    iput v4, p0, Lcom/samsung/android/glview/GLContext;->mTapDir:I

    .line 1786
    iput v5, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1804
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    iget v1, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    if-ne v1, v7, :cond_3

    .line 1805
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1806
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1807
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1808
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v8, v2}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1809
    iput v4, p0, Lcom/samsung/android/glview/GLContext;->mTapDir:I

    .line 1810
    iput v4, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1926
    :cond_3
    :goto_3
    return v0

    .line 1740
    :cond_4
    iput v7, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1741
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1744
    :cond_5
    iput v6, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1745
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1748
    :cond_6
    iput v4, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1749
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1752
    :cond_7
    iput v5, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1753
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1764
    :cond_8
    iput v5, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1765
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1768
    :cond_9
    iput v7, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1769
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1772
    :cond_a
    iput v6, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1773
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1776
    :cond_b
    iput v4, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1777
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1788
    :cond_c
    iput v4, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1789
    const/4 v0, 0x1

    goto :goto_2

    .line 1792
    :cond_d
    iput v5, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1793
    const/4 v0, 0x1

    goto :goto_2

    .line 1796
    :cond_e
    iput v7, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1797
    const/4 v0, 0x1

    goto :goto_2

    .line 1800
    :cond_f
    iput v6, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1801
    const/4 v0, 0x1

    goto :goto_2

    .line 1812
    :cond_10
    iput v6, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1813
    const/4 v0, 0x1

    goto :goto_3

    .line 1816
    :cond_11
    iput v4, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1817
    const/4 v0, 0x1

    goto :goto_3

    .line 1820
    :cond_12
    iput v5, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1821
    const/4 v0, 0x1

    goto :goto_3

    .line 1824
    :cond_13
    iput v7, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1825
    const/4 v0, 0x1

    goto :goto_3

    .line 1829
    :cond_14
    if-nez v0, :cond_15

    iget v1, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    if-ne v1, v6, :cond_15

    .line 1830
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v8, v2}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1831
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1832
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1833
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1834
    iput v5, p0, Lcom/samsung/android/glview/GLContext;->mTapDir:I

    .line 1835
    iput v4, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1853
    :cond_15
    :goto_4
    if-nez v0, :cond_16

    iget v1, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    if-ne v1, v4, :cond_16

    .line 1854
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1855
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1856
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1857
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v8, v2}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1858
    iput v5, p0, Lcom/samsung/android/glview/GLContext;->mTapDir:I

    .line 1859
    iput v5, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1877
    :cond_16
    :goto_5
    if-nez v0, :cond_17

    iget v1, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    if-nez v1, :cond_17

    .line 1878
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 1879
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1880
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v8, v2}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1881
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1882
    iput v5, p0, Lcom/samsung/android/glview/GLContext;->mTapDir:I

    .line 1883
    iput v7, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1901
    :cond_17
    :goto_6
    if-nez v0, :cond_3

    iget v1, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    if-ne v1, v7, :cond_3

    .line 1902
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1903
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v8, v2}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1904
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x82

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 1905
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/16 v2, 0x42

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 1906
    iput v5, p0, Lcom/samsung/android/glview/GLContext;->mTapDir:I

    .line 1907
    iput v6, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    goto/16 :goto_3

    .line 1837
    :cond_18
    iput v7, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1838
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 1841
    :cond_19
    iput v5, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1842
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 1845
    :cond_1a
    iput v4, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1846
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 1849
    :cond_1b
    iput v6, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1850
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 1861
    :cond_1c
    iput v6, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1862
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 1865
    :cond_1d
    iput v7, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1866
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 1869
    :cond_1e
    iput v5, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1870
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 1873
    :cond_1f
    iput v4, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1874
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 1885
    :cond_20
    iput v4, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1886
    const/4 v0, 0x1

    goto :goto_6

    .line 1889
    :cond_21
    iput v6, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1890
    const/4 v0, 0x1

    goto :goto_6

    .line 1893
    :cond_22
    iput v7, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1894
    const/4 v0, 0x1

    goto :goto_6

    .line 1897
    :cond_23
    iput v5, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1898
    const/4 v0, 0x1

    goto :goto_6

    .line 1909
    :cond_24
    iput v5, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1910
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1913
    :cond_25
    iput v4, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1914
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1917
    :cond_26
    iput v6, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1918
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1921
    :cond_27
    iput v7, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    .line 1922
    const/4 v0, 0x1

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lcom/samsung/android/glview/GLContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateTouchExplorationEnabled()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/glview/GLContext;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/glview/GLContext;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLContext;->enableAccessibilityService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/glview/GLContext;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLContext;->disableAccessibilityService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/glview/GLContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->enableOrientationListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/glview/GLContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->disableOrientationListener()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/glview/GLContext;)Landroid/opengl/GLSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/glview/GLContext;Landroid/view/Choreographer;)Landroid/view/Choreographer;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;
    .param p1, "x1"    # Landroid/view/Choreographer;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mChoreographer:Landroid/view/Choreographer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/android/glview/GLContext;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLContext;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLContext;->handleOrientationChanged(I)V

    return-void
.end method

.method private disableAccessibilityService(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1933
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityServiceEnabled:Z

    if-nez v14, :cond_0

    .line 2005
    :goto_0
    return-void

    .line 1937
    :cond_0
    const-string v14, "GLContext"

    const-string v15, "disableAccessibilityService"

    invoke-static {v14, v15}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    const/16 v1, 0x3a

    .line 1939
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    new-instance v12, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v14, 0x3a

    invoke-direct {v12, v14}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1940
    .local v12, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/glview/GLContext;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v6

    .line 1941
    .local v6, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v14

    if-ne v6, v14, :cond_1

    .line 1942
    new-instance v6, Ljava/util/HashSet;

    .end local v6    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1945
    .restart local v6    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_1
    const-string v14, "com.sec.android.app.camera/com.samsung.android.glview.AccessibilityGestureHandler"

    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    .line 1946
    .local v13, "toggledService":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 1948
    .local v2, "accessibilityEnabled":Z
    invoke-interface {v6, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1951
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1952
    .local v11, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1953
    .local v5, "enabledService":Landroid/content/ComponentName;
    invoke-interface {v11, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1955
    const/4 v2, 0x1

    .line 1961
    .end local v5    # "enabledService":Landroid/content/ComponentName;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1966
    .local v7, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1967
    .restart local v5    # "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1968
    const/16 v14, 0x3a

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1971
    .end local v5    # "enabledService":Landroid/content/ComponentName;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 1972
    .local v8, "enabledServicesBuilderLength":I
    if-lez v8, :cond_5

    .line 1973
    add-int/lit8 v14, v8, -0x1

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1976
    :cond_5
    const/4 v9, 0x0

    .line 1977
    .local v9, "enabledServicesSetting":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1978
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "enabled_accessibility_services"

    invoke-static {v14, v15, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1980
    if-eqz v9, :cond_7

    .line 1981
    move-object v3, v12

    .line 1982
    .local v3, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v3, v9}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1984
    :cond_6
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1985
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 1986
    .local v4, "componentNameString":Ljava/lang/String;
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 1988
    .restart local v5    # "enabledService":Landroid/content/ComponentName;
    if-eqz v5, :cond_6

    .line 1989
    const/4 v2, 0x1

    .line 1995
    .end local v3    # "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v4    # "componentNameString":Ljava/lang/String;
    .end local v5    # "enabledService":Landroid/content/ComponentName;
    :cond_7
    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->isKNOXMode()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1996
    const/4 v2, 0x0

    .line 2000
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "accessibility_enabled"

    if-eqz v2, :cond_9

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2002
    sget-object v14, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLContext;->mHoverSwipeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v14, v15}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2004
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityServiceEnabled:Z

    goto/16 :goto_0

    .line 2000
    :cond_9
    const/4 v14, 0x0

    goto :goto_2
.end method

.method private disableOrientationListener()V
    .locals 2

    .prologue
    .line 2011
    const-string v0, "GLContext"

    const-string v1, "disableOrientationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsSContextListenerAvailable:Z

    if-eqz v0, :cond_0

    .line 2013
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 2017
    :goto_0
    return-void

    .line 2015
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

.method private enableAccessibilityService(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    .line 2023
    iget-boolean v8, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityServiceEnabled:Z

    if-eqz v8, :cond_0

    .line 2061
    :goto_0
    return-void

    .line 2027
    :cond_0
    iput-boolean v10, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityServiceEnabled:Z

    .line 2029
    const-string v8, "GLContext"

    const-string v9, "enableAccessibilityService"

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    const/16 v0, 0x3a

    .line 2031
    .local v0, "ENABLED_SERVICES_SEPARATOR":C
    invoke-static {p1}, Lcom/samsung/android/glview/GLContext;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 2032
    .local v2, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    if-ne v2, v8, :cond_1

    .line 2033
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2036
    .restart local v2    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_1
    const-string v8, "com.sec.android.app.camera/com.samsung.android.glview.AccessibilityGestureHandler"

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 2038
    .local v7, "toggledService":Landroid/content/ComponentName;
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2041
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2042
    .local v3, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2043
    .local v1, "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2044
    const/16 v8, 0x3a

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2047
    .end local v1    # "enabledService":Landroid/content/ComponentName;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 2048
    .local v4, "enabledServicesBuilderLength":I
    if-lez v4, :cond_3

    .line 2049
    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 2052
    :cond_3
    const/4 v5, 0x0

    .line 2053
    .local v5, "enabledServicesSetting":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2055
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enabled_accessibility_services"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2057
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "accessibility_enabled"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2059
    sget-object v8, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/glview/GLContext;->mHoverSwipeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "com.samsung.android.glview.ACCESSIBILITY_GESTURE_DETECTED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method private enableOrientationListener()V
    .locals 3

    .prologue
    .line 2067
    const-string v1, "GLContext"

    const-string v2, "enableOrientationListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsSContextListenerAvailable:Z

    if-eqz v1, :cond_0

    .line 2069
    new-instance v0, Landroid/hardware/scontext/SContextAutoRotationAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/hardware/scontext/SContextAutoRotationAttribute;-><init>(I)V

    .line 2070
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/4 v2, 0x6

    invoke-virtual {v1, p0, v2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    .line 2074
    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :goto_0
    return-void

    .line 2072
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 316
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private getAudioSoundOfTapDirection()I
    .locals 1

    .prologue
    .line 2077
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mTapDirState:I

    packed-switch v0, :pswitch_data_0

    .line 2087
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2079
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 2081
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 2083
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 2085
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 2077
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getColor(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 320
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getDimension(I)F
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 324
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private static getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    const/16 v0, 0x3a

    .line 333
    .local v0, "ENABLED_SERVICES_SEPARATOR":C
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3a

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 335
    .local v6, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enabled_accessibility_services"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 336
    .local v5, "enabledServicesSetting":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 337
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    .line 352
    :cond_0
    return-object v4

    .line 340
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 341
    .local v4, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    move-object v1, v6

    .line 342
    .local v1, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 344
    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 345
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "componentNameString":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 347
    .local v3, "enabledService":Landroid/content/ComponentName;
    if-eqz v3, :cond_2

    .line 348
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getInteger(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 356
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getLastOrientation()I
    .locals 1

    .prologue
    .line 365
    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    return v0
.end method

.method public static getOrientationCompensationValue()I
    .locals 1

    .prologue
    .line 369
    sget v0, Lcom/samsung/android/glview/GLContext;->mOrientationCompensationValue:I

    return v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 377
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleOrientationChanged(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 2096
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 2097
    const-string v1, "GLContext"

    const-string v2, "handleOrientationChanged - ORIENTATION_UNKNOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    :cond_0
    :goto_0
    return-void

    .line 2101
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/glview/GLUtil;->getGLOrientationBySystemOrientation(I)I

    move-result v0

    .line 2102
    .local v0, "newOrientation":I
    sget v1, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    if-eq v1, v0, :cond_0

    .line 2103
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_2

    .line 2104
    const-string v1, "GLContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOrientationChanged, newOrientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    .line 2106
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 2108
    :cond_2
    sput v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    goto :goto_0
.end method

.method public static hasHardwareKeyPad()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 414
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 423
    .local v0, "config":Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return v1

    .line 418
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_1
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 419
    .restart local v0    # "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 420
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isScreenOrientationLandscape()Z
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public static isTalkBackEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 381
    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 395
    .local v0, "accesibilityService":Ljava/lang/String;
    .local v1, "talkbackEnabled":Z
    :goto_0
    return v2

    .line 385
    .end local v0    # "accesibilityService":Ljava/lang/String;
    .end local v1    # "talkbackEnabled":Z
    :cond_0
    const/4 v1, 0x0

    .line 386
    .restart local v1    # "talkbackEnabled":Z
    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .restart local v0    # "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 391
    const-string v3, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_1
    move v2, v1

    .line 395
    goto :goto_0

    :cond_3
    move v1, v2

    .line 391
    goto :goto_1
.end method

.method public static setOrientationCompensationValue(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 373
    sput p0, Lcom/samsung/android/glview/GLContext;->mOrientationCompensationValue:I

    .line 374
    return-void
.end method

.method private setOrientationListener()V
    .locals 3

    .prologue
    .line 2116
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2117
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2118
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    const-string v2, "scontext"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/scontext/SContextManager;

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 2119
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v1, :cond_0

    .line 2120
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsSContextListenerAvailable:Z

    .line 2124
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsSContextListenerAvailable:Z

    if-eqz v1, :cond_1

    .line 2125
    const-string v1, "GLContext"

    const-string v2, "using SContextListener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    :goto_0
    return-void

    .line 2127
    :cond_1
    const-string v1, "GLContext"

    const-string v2, "using OrientationEventListener of android"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    new-instance v1, Lcom/samsung/android/glview/GLContext$6;

    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/glview/GLContext$6;-><init>(Lcom/samsung/android/glview/GLContext;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    goto :goto_0
.end method

.method private updateTouchExplorationEnabled()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2143
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 2144
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "touch_exploration_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    .line 2146
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2144
    goto :goto_0
.end method


# virtual methods
.method public addTextureToDelete(Lcom/samsung/android/glview/GLTexture;)V
    .locals 2
    .param p1, "texture"    # Lcom/samsung/android/glview/GLTexture;

    .prologue
    .line 427
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v1

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    monitor-exit v1

    .line 430
    return-void

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 436
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 438
    :cond_0
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    .line 440
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mListener:Lcom/samsung/android/glview/GLContext$GLInitializeListener;

    .line 442
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v1

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 444
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    .line 447
    return-void

    .line 444
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 450
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->onFocusStatusChanged(I)V

    .line 452
    iput-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    .line 456
    iput-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    .line 458
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    .line 459
    return-void
.end method

.method public disableFocusNavigation()V
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusNavigationEnabled:Z

    .line 463
    return-void
.end method

.method public doFrame(J)V
    .locals 2
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 471
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mFrameLock:Ljava/lang/Object;

    monitor-enter v1

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mRenderRequested:Z

    .line 474
    monitor-exit v1

    .line 475
    return-void

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dumpViewHierarchy()V
    .locals 2

    .prologue
    .line 478
    const-string v0, "GLContext"

    const-string v1, "=======================DUMP_START======================="

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->dumpViewHierarchy(I)V

    .line 482
    :cond_0
    const-string v0, "GLContext"

    const-string v1, "=======================DUMP_END======================="

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void
.end method

.method public enableAccessibilityNode(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 490
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityNodeEnabled:Z

    .line 491
    return-void
.end method

.method public enableFocusNavigation()V
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusNavigationEnabled:Z

    .line 495
    return-void
.end method

.method public enableRippleEffect(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectEnabled:Z

    .line 504
    return-void
.end method

.method public findNextFocusFromView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;
    .locals 2
    .param p1, "rootView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p2, "focusedView"    # Lcom/samsung/android/glview/GLView;
    .param p3, "direction"    # I

    .prologue
    .line 507
    const/4 v0, 0x0

    .line 508
    .local v0, "resultView":Lcom/samsung/android/glview/GLView;
    if-nez p1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;->findNextFocusFromView(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    .line 513
    :goto_0
    return-object v0

    .line 511
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;->findNextFocusFromView(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_0
.end method

.method public findViewById(I)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 523
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    .line 526
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findViewByObjectTag(Ljava/lang/String;)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "objectTag"    # Ljava/lang/String;

    .prologue
    .line 536
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->findViewByObjectTag(Ljava/lang/String;)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    .line 539
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findViewByTag(I)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 549
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->findViewByTag(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    .line 552
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public getAlignToPixel()Z
    .locals 1

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mAlignToPixel:Z

    return v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mDensity:F

    return v0
.end method

.method public getEstimatedFPS()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mEstimatedFPS:I

    return v0
.end method

.method public getFocusIndicatorColor()I
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorColor:I

    return v0
.end method

.method public getFocusIndicatorThickness()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorThickness:I

    return v0
.end method

.method public getGLPreviewData()Lcom/samsung/android/glview/GLPreviewData;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

    return-object v0
.end method

.method public getGLSurfaceView()Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method public getHoverBaseView()Landroid/view/View;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    return-object v0
.end method

.method public getHoverIndicatorColor()I
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorColor:I

    return v0
.end method

.method public getHoverIndicatorThickness()I
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mHoverIndicatorThickness:I

    return v0
.end method

.method public getLastHoverView()Lcom/samsung/android/glview/GLView;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getProgramStorage()Lcom/samsung/android/glview/GLProgramStorage;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    return-object v0
.end method

.method public getProjMatrix()[F
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mProjMatrix:[F

    return-object v0
.end method

.method public getRippleEffectColor()I
    .locals 1

    .prologue
    .line 657
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectColor:I

    return v0
.end method

.method public getRootView()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method public getScreenAspectRatio()F
    .locals 2

    .prologue
    .line 684
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/glview/GLContext;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected final getScreenGeometry()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 693
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    return v0
.end method

.method public getScrollBarAutoHide()Z
    .locals 1

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mScrollBarAutoHide:Z

    return v0
.end method

.method public getTts()Landroid/speech/tts/TextToSpeech;
    .locals 3

    .prologue
    .line 714
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    .line 715
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 717
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method public isEnableAccessibilityNode()Z
    .locals 3

    .prologue
    .line 729
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 730
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 731
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 732
    :cond_0
    const/4 v1, 0x0

    .line 734
    .end local v0    # "manager":Landroid/view/accessibility/AccessibilityManager;
    :goto_0
    return v1

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsAccessibilityNodeEnabled:Z

    goto :goto_0
.end method

.method public isFocusIndicatorVisible()Z
    .locals 1

    .prologue
    .line 738
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    return v0
.end method

.method public isFocusNavigationEnabled()Z
    .locals 1

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusNavigationEnabled:Z

    return v0
.end method

.method public isHoveringEnabled()Z
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x0

    return v0
.end method

.method protected isHoveringIconLabelEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1703
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_icon_label"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1706
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected isHoveringPointerEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1711
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_pointer"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1714
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isRippleEffectEnabled()Z
    .locals 1

    .prologue
    .line 755
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectEnabled:Z

    return v0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 759
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    return v0
.end method

.method protected notifyHoverEventChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1719
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    monitor-enter v2

    .line 1720
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1722
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1723
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;->onHoverEventChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1725
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;>;"
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1726
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const-wide/16 v12, 0x5

    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    .line 769
    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v6

    if-nez v6, :cond_0

    .line 771
    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v7

    .line 772
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLTexture;

    .line 773
    .local v3, "texture":Lcom/samsung/android/glview/GLTexture;
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLTexture;->clearTexture()V

    goto :goto_0

    .line 776
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "texture":Lcom/samsung/android/glview/GLTexture;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 775
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 776
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 777
    iget-boolean v6, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-eqz v6, :cond_3

    .line 813
    :cond_2
    :goto_1
    return-void

    .line 781
    :cond_3
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLContext;->mDirty:Z

    .line 783
    const/16 v6, 0x4100

    invoke-static {v6}, Landroid/opengl/GLES20;->glClear(I)V

    .line 791
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 792
    .local v0, "currentTime":J
    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mPrevFrameTimeStamp:J

    sub-long v4, v0, v6

    .line 794
    .local v4, "interval":J
    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mPrevFrameTimeStamp:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    const-wide/16 v6, 0x64

    cmp-long v6, v4, v6

    if-gez v6, :cond_4

    .line 795
    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameCountForFPS:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameCountForFPS:J

    .line 796
    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    .line 797
    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 798
    const-wide/16 v6, 0x3e8

    iget-wide v8, p0, Lcom/samsung/android/glview/GLContext;->mFrameCountForFPS:J

    mul-long/2addr v6, v8

    iget-wide v8, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Lcom/samsung/android/glview/GLContext;->mEstimatedFPS:I

    .line 800
    :cond_4
    iput-wide v0, p0, Lcom/samsung/android/glview/GLContext;->mPrevFrameTimeStamp:J

    .line 801
    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    cmp-long v6, v6, v12

    if-gez v6, :cond_5

    .line 802
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 803
    const-string v6, "GLContext"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start drawing frame #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v6, :cond_6

    .line 807
    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v7, p0, Lcom/samsung/android/glview/GLContext;->mIdentityMatrix:[F

    iget-object v8, p0, Lcom/samsung/android/glview/GLContext;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->draw([FLandroid/graphics/Rect;)V

    .line 810
    :cond_6
    iget-wide v6, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    cmp-long v6, v6, v12

    if-gez v6, :cond_2

    .line 811
    const-string v6, "GLContext"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "End drawing frame #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Elapsed time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onFocusChanged(Lcom/samsung/android/glview/GLView;)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v2, 0x1

    .line 816
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->onFocusStatusChanged(I)V

    .line 819
    :cond_0
    if-eqz p1, :cond_1

    .line 820
    invoke-virtual {p1, v2}, Lcom/samsung/android/glview/GLView;->onFocusStatusChanged(I)V

    .line 822
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    .line 823
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 824
    if-nez p1, :cond_4

    .line 825
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_2

    .line 826
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    .line 828
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    .line 833
    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 834
    return-void

    .line 830
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/glview/GLContext;->onHoverChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 838
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isFocusNavigationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 844
    :cond_0
    :goto_0
    return v0

    .line 841
    :cond_1
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 842
    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/glview/GLContext;->onHoverEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method public onHoverChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 848
    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_4

    .line 852
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 853
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    .line 854
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    .line 856
    :cond_2
    invoke-virtual {p1, v3}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    .line 857
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 858
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTtsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 860
    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 861
    .local v0, "vibrator":Landroid/os/Vibrator;
    const v1, 0xc369

    const/4 v2, -0x1

    sget-object v3, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 863
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_3
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    .line 864
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    .line 865
    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0

    .line 867
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isHoveringEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 868
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_5

    .line 869
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    .line 871
    :cond_5
    invoke-virtual {p1, v3}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    .line 872
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;I)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "orientation"    # I

    .prologue
    const/4 v5, 0x1

    .line 877
    iget v2, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    iget v3, p0, Lcom/samsung/android/glview/GLContext;->mHeight:I

    invoke-static {p1, p2, v2, v3}, Lcom/samsung/android/glview/GLUtil;->transformEventByGLOrientation(Landroid/view/MotionEvent;III)V

    .line 879
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v2, :cond_0

    .line 880
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    .line 881
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    .line 882
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_2

    .line 883
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/glview/GLContext;->notifyHoverEventChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    .line 884
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/glview/GLContext;->onHoverChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    .line 925
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 928
    :cond_1
    return v5

    .line 886
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 887
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_0

    .line 888
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    goto :goto_0

    .line 893
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    .line 894
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    .line 895
    .local v1, "tempView":Lcom/samsung/android/glview/GLView;
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    if-eq v1, v2, :cond_1

    .line 898
    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    .line 899
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_4

    .line 900
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/glview/GLContext;->onHoverChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 901
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isHoveringEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 902
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_0

    .line 903
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    goto :goto_0

    .line 907
    .end local v1    # "tempView":Lcom/samsung/android/glview/GLView;
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 908
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isHoveringEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 909
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_0

    .line 910
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    goto :goto_0

    .line 913
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    .line 914
    .restart local v1    # "tempView":Lcom/samsung/android/glview/GLView;
    if-nez v1, :cond_0

    .line 915
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 916
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 917
    .local v0, "originEvent":Landroid/view/MotionEvent;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/glview/GLContext;->notifyHoverEventChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    .line 918
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0
.end method

.method public onHoverSwipeEvent(I)V
    .locals 6
    .param p1, "hoverEvent"    # I

    .prologue
    const/16 v5, 0x62

    const/16 v4, 0x41

    const/16 v3, 0x31

    const/16 v2, 0x52

    .line 933
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-nez v0, :cond_0

    .line 934
    sparse-switch p1, :sswitch_data_0

    .line 946
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 947
    sparse-switch p1, :sswitch_data_1

    .line 1014
    :cond_1
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 1015
    return-void

    .line 939
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->requestFocus(I)Z

    goto :goto_0

    .line 949
    :sswitch_1
    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 951
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 954
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 957
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 960
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 965
    :sswitch_2
    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 967
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 970
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 973
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 976
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 981
    :sswitch_3
    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v0, :pswitch_data_2

    goto :goto_1

    .line 983
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 986
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 989
    :pswitch_a
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 992
    :pswitch_b
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto :goto_1

    .line 997
    :sswitch_4
    sget v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_1

    .line 999
    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_1

    .line 1002
    :pswitch_d
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_1

    .line 1005
    :pswitch_e
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_1

    .line 1008
    :pswitch_f
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_1

    .line 934
    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_0
        0x41 -> :sswitch_0
        0x52 -> :sswitch_0
        0x62 -> :sswitch_0
    .end sparse-switch

    .line 947
    :sswitch_data_1
    .sparse-switch
        0x31 -> :sswitch_1
        0x41 -> :sswitch_3
        0x52 -> :sswitch_4
        0x62 -> :sswitch_2
    .end sparse-switch

    .line 949
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 965
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 981
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 997
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public onHoverTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1029
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-eqz v5, :cond_0

    .line 1088
    :goto_0
    return v3

    .line 1033
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1035
    .local v0, "action":I
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1036
    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/glview/GLViewGroup;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1037
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    :goto_1
    move v3, v4

    .line 1041
    goto :goto_0

    .line 1038
    :cond_2
    if-ne v0, v4, :cond_1

    .line 1039
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1044
    :cond_3
    if-nez v0, :cond_4

    .line 1045
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 1047
    :cond_4
    const/4 v5, 0x2

    if-ne v0, v5, :cond_6

    .line 1048
    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_5

    .line 1049
    iget-object v4, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1051
    :cond_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1052
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 1054
    :cond_6
    if-ne v0, v4, :cond_a

    .line 1055
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-nez v5, :cond_7

    .line 1056
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v3, v4

    .line 1057
    goto :goto_0

    .line 1060
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_9

    .line 1061
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mLastHoverView:Lcom/samsung/android/glview/GLView;

    if-eqz v5, :cond_8

    .line 1062
    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getClipRectArea()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getClipRectArea()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v5

    div-float v1, v3, v7

    .line 1063
    .local v1, "currentHoverFocusedViewX":F
    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getClipRectArea()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getClipRectArea()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v5

    div-float v2, v3, v7

    .line 1065
    .local v2, "currentHoverFocusedViewY":F
    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1066
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1069
    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v3}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1070
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1080
    iput-object v8, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    move v3, v4

    .line 1081
    goto/16 :goto_0

    .line 1072
    .end local v1    # "currentHoverFocusedViewX":F
    .end local v2    # "currentHoverFocusedViewY":F
    :cond_8
    iput-object v8, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 1076
    :cond_9
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 1082
    :cond_a
    const/4 v5, 0x6

    if-ne v0, v5, :cond_b

    .line 1083
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 1087
    :cond_b
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/glview/GLContext;->mLastMotionEvent:Landroid/view/MotionEvent;

    move v3, v4

    .line 1088
    goto/16 :goto_0
.end method

.method public onInit(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 1093
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v10, 0x82

    const/16 v9, 0x42

    const/16 v8, 0x21

    const/16 v7, 0x11

    const/4 v4, 0x1

    .line 1096
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isFocusNavigationEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1097
    :cond_0
    const/4 v2, 0x0

    .line 1279
    :goto_0
    return v2

    .line 1099
    :cond_1
    const/4 v2, 0x0

    .line 1100
    .local v2, "result":Z
    const/4 v1, 0x0

    .line 1102
    .local v1, "res":Z
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-nez v5, :cond_2

    .line 1103
    sparse-switch p1, :sswitch_data_0

    .line 1121
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v5, :cond_5

    .line 1123
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    if-nez v5, :cond_3

    .line 1124
    sparse-switch p1, :sswitch_data_1

    .line 1139
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, p1, p2}, Lcom/samsung/android/glview/GLView;->keyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 1140
    if-nez v2, :cond_4

    .line 1141
    sparse-switch p1, :sswitch_data_2

    .line 1234
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 1235
    sparse-switch p1, :sswitch_data_3

    .line 1253
    :cond_5
    :goto_2
    if-nez v2, :cond_6

    if-eqz v1, :cond_7

    .line 1254
    :cond_6
    sget-object v5, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1255
    .local v0, "audioManager":Landroid/media/AudioManager;
    sparse-switch p1, :sswitch_data_4

    .line 1278
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_7
    :goto_3
    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0

    .line 1112
    :sswitch_0
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->requestFocus()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1113
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    .line 1114
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 1115
    const/4 v2, 0x0

    goto :goto_0

    .line 1117
    :cond_8
    const/4 v2, 0x0

    goto :goto_0

    .line 1133
    :sswitch_1
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    .line 1134
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 1135
    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    move v2, v4

    .line 1136
    goto :goto_0

    .line 1143
    :sswitch_2
    iget v5, p0, Lcom/samsung/android/glview/GLContext;->mTapDir:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/samsung/android/glview/GLContext;->mTapDir:I

    .line 1144
    const/4 v1, 0x1

    .line 1145
    goto :goto_1

    .line 1147
    :sswitch_3
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->HandlingKeyEventTap()Z

    move-result v1

    .line 1148
    goto :goto_1

    :sswitch_4
    move v2, v4

    .line 1150
    goto :goto_0

    .line 1152
    :sswitch_5
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1153
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1154
    goto :goto_1

    .line 1156
    :cond_9
    sget v5, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 1158
    :pswitch_0
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1159
    goto :goto_1

    .line 1161
    :pswitch_1
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v9, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1162
    goto :goto_1

    .line 1164
    :pswitch_2
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v8, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1165
    goto :goto_1

    .line 1167
    :pswitch_3
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v10, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    .line 1172
    :sswitch_6
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1173
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v9, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1174
    goto/16 :goto_1

    .line 1176
    :cond_a
    sget v5, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_1

    .line 1178
    :pswitch_4
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v9, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1179
    goto/16 :goto_1

    .line 1181
    :pswitch_5
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1182
    goto/16 :goto_1

    .line 1184
    :pswitch_6
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v10, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1185
    goto/16 :goto_1

    .line 1187
    :pswitch_7
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v8, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    .line 1192
    :sswitch_7
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1193
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v8, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1194
    goto/16 :goto_1

    .line 1196
    :cond_b
    sget v5, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v5, :pswitch_data_2

    goto/16 :goto_1

    .line 1198
    :pswitch_8
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v8, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1199
    goto/16 :goto_1

    .line 1201
    :pswitch_9
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v10, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1202
    goto/16 :goto_1

    .line 1204
    :pswitch_a
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v9, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1205
    goto/16 :goto_1

    .line 1207
    :pswitch_b
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    .line 1212
    :sswitch_8
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1213
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v10, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1214
    goto/16 :goto_1

    .line 1216
    :cond_c
    sget v5, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    packed-switch v5, :pswitch_data_3

    goto/16 :goto_1

    .line 1218
    :pswitch_c
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v10, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1219
    goto/16 :goto_1

    .line 1221
    :pswitch_d
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v8, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1222
    goto/16 :goto_1

    .line 1224
    :pswitch_e
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    .line 1225
    goto/16 :goto_1

    .line 1227
    :pswitch_f
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    iget-object v6, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5, v9, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v2

    goto/16 :goto_1

    .line 1244
    :sswitch_9
    iget-object v5, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->findViewFromLeftMostTop()Lcom/samsung/android/glview/GLView;

    move-result-object v3

    .line 1245
    .local v3, "tempView":Lcom/samsung/android/glview/GLView;
    if-eqz v3, :cond_5

    .line 1246
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->requestFocus()Z

    .line 1247
    iput-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    goto/16 :goto_2

    .line 1257
    .end local v3    # "tempView":Lcom/samsung/android/glview/GLView;
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :sswitch_a
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    .line 1260
    :sswitch_b
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    .line 1263
    :sswitch_c
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    .line 1266
    :sswitch_d
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    .line 1269
    :sswitch_e
    if-eqz v1, :cond_7

    .line 1270
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->getAudioSoundOfTapDirection()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    .line 1274
    :sswitch_f
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_3

    .line 1103
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 1124
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_1
        0x3d -> :sswitch_1
        0x3e -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch

    .line 1141
    :sswitch_data_2
    .sparse-switch
        0x13 -> :sswitch_7
        0x14 -> :sswitch_8
        0x15 -> :sswitch_5
        0x16 -> :sswitch_6
        0x17 -> :sswitch_4
        0x3d -> :sswitch_3
        0x3e -> :sswitch_2
    .end sparse-switch

    .line 1235
    :sswitch_data_3
    .sparse-switch
        0x13 -> :sswitch_9
        0x14 -> :sswitch_9
        0x15 -> :sswitch_9
        0x16 -> :sswitch_9
        0x17 -> :sswitch_9
        0x3d -> :sswitch_9
        0x3e -> :sswitch_9
        0x42 -> :sswitch_9
    .end sparse-switch

    .line 1255
    :sswitch_data_4
    .sparse-switch
        0x13 -> :sswitch_c
        0x14 -> :sswitch_d
        0x15 -> :sswitch_a
        0x16 -> :sswitch_b
        0x3d -> :sswitch_e
        0x3e -> :sswitch_f
    .end sparse-switch

    .line 1156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 1176
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 1196
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 1216
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1283
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isFocusNavigationEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v0, v1

    .line 1344
    :goto_0
    return v0

    .line 1286
    :cond_1
    const/4 v0, 0x0

    .line 1287
    .local v0, "result":Z
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->hasHardwareKeyPad()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1288
    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-nez v3, :cond_2

    .line 1289
    sparse-switch p1, :sswitch_data_0

    .line 1307
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_3

    .line 1308
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    if-nez v1, :cond_3

    .line 1309
    sparse-switch p1, :sswitch_data_1

    .line 1332
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_4

    .line 1333
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/glview/GLView;->keyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1335
    :cond_4
    if-nez v0, :cond_5

    .line 1336
    packed-switch p1, :pswitch_data_0

    .line 1343
    :cond_5
    :goto_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0

    .line 1298
    :sswitch_0
    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1299
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    .line 1300
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    move v0, v1

    .line 1301
    goto :goto_0

    :cond_6
    move v0, v1

    .line 1303
    goto :goto_0

    .line 1318
    :sswitch_1
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    .line 1319
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 1320
    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    move v0, v2

    .line 1321
    goto :goto_0

    .line 1326
    :cond_7
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    if-eqz v3, :cond_3

    .line 1327
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mFocusIndicatorVisibilityChanged:Z

    move v0, v1

    .line 1328
    goto :goto_0

    .line 1338
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->dumpViewHierarchy()V

    goto :goto_1

    .line 1289
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 1309
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_1
        0x3d -> :sswitch_1
        0x3e -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch

    .line 1336
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 1348
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    .line 1350
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mChoreographer:Landroid/view/Choreographer;

    .line 1352
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLContext;->disableAccessibilityService(Landroid/content/Context;)V

    .line 1354
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getPreserveEGLContextOnPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1356
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1357
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1358
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1359
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    invoke-static {v0}, Lcom/samsung/android/glview/GLProgramStorage;->releaseInstance(Lcom/samsung/android/glview/GLProgramStorage;)V

    .line 1360
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->reset()V

    .line 1362
    :cond_0
    invoke-static {}, Lcom/samsung/android/glview/GLPreviewData;->releaseInstance()V

    .line 1364
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 1365
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 1366
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1369
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_2

    .line 1370
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 1371
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 1372
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 1375
    :cond_2
    iput-wide v4, p0, Lcom/samsung/android/glview/GLContext;->mFrameNum:J

    .line 1376
    iput-wide v4, p0, Lcom/samsung/android/glview/GLContext;->mFrameCountForFPS:J

    .line 1377
    iput-wide v4, p0, Lcom/samsung/android/glview/GLContext;->mAccumulatedTime:J

    .line 1379
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1381
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-eq v0, v3, :cond_3

    .line 1382
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->disableOrientationListener()V

    .line 1385
    :cond_3
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mTouchExplorationEnabledContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1386
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mSettingInteractionControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1387
    return-void

    .line 1358
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1390
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "GLContextHandlerThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1391
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 1392
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mMainHandler:Landroid/os/Handler;

    .line 1394
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/glview/GLContext$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/glview/GLContext$5;-><init>(Lcom/samsung/android/glview/GLContext;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1401
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mRenderRequested:Z

    .line 1403
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    .line 1405
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-eq v2, v5, :cond_0

    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 1406
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->enableOrientationListener()V

    .line 1409
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1411
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(?i).*talkback.*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1414
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    sget-object v3, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 1416
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    .line 1422
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v2, :cond_2

    .line 1423
    iget-object v2, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 1426
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/glview/GLContext;->updateTouchExplorationEnabled()V

    .line 1428
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v2, :cond_3

    .line 1429
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/samsung/android/glview/GLContext;->enableAccessibilityService(Landroid/content/Context;)V

    .line 1432
    :cond_3
    const-string v2, "touch_exploration_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1433
    .local v1, "touchExplorationEnabledURI":Landroid/net/Uri;
    if-eqz v1, :cond_4

    .line 1434
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mTouchExplorationEnabledContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1437
    :cond_4
    const-string v2, "access_control_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1438
    .local v0, "interactioncontrolURI":Landroid/net/Uri;
    if-eqz v0, :cond_5

    .line 1439
    sget-object v2, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLContext;->mSettingInteractionControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1441
    :cond_5
    return-void
.end method

.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    .line 1450
    iget-object v3, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 1452
    .local v3, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {v3}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1485
    :goto_0
    return-void

    .line 1455
    :pswitch_0
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;

    move-result-object v1

    .line 1456
    .local v1, "autoRotation":Landroid/hardware/scontext/SContextAutoRotation;
    invoke-virtual {v1}, Landroid/hardware/scontext/SContextAutoRotation;->getAngle()I

    move-result v0

    .line 1458
    .local v0, "angle":I
    const/4 v2, 0x0

    .line 1459
    .local v2, "changedOrientation":I
    packed-switch v0, :pswitch_data_1

    .line 1476
    const-string v4, "GLContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This value is not defined : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :goto_1
    invoke-direct {p0, v2}, Lcom/samsung/android/glview/GLContext;->handleOrientationChanged(I)V

    goto :goto_0

    .line 1461
    :pswitch_1
    const/4 v2, -0x1

    .line 1462
    goto :goto_1

    .line 1464
    :pswitch_2
    const/4 v2, 0x0

    .line 1465
    goto :goto_1

    .line 1467
    :pswitch_3
    const/16 v2, 0x10e

    .line 1468
    goto :goto_1

    .line 1470
    :pswitch_4
    const/16 v2, 0xb4

    .line 1471
    goto :goto_1

    .line 1473
    :pswitch_5
    const/16 v2, 0x5a

    .line 1474
    goto :goto_1

    .line 1452
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    .line 1459
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 8
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1494
    const-string v0, "GLContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSurfaceChanged width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    const-string v0, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GLSurfaceChanged**EndU["

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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    iput p2, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    .line 1499
    iput p3, p0, Lcom/samsung/android/glview/GLContext;->mHeight:I

    .line 1501
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mProjMatrix:[F

    iget v3, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/glview/GLContext;->mHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    neg-int v5, v5

    int-to-float v6, v5

    iget v5, p0, Lcom/samsung/android/glview/GLContext;->mWidth:I

    int-to-float v7, v5

    move v5, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 1503
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1504
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1506
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1510
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mListener:Lcom/samsung/android/glview/GLContext$GLInitializeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 1511
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mListener:Lcom/samsung/android/glview/GLContext$GLInitializeListener;

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {v0, v1}, Lcom/samsung/android/glview/GLContext$GLInitializeListener;->onGLInitialized(Lcom/samsung/android/glview/GLViewGroup;)V

    .line 1513
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 1514
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "arg1"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v2, 0x0

    .line 1523
    const-string v0, "GLContext"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1528
    const/16 v0, 0xc11

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1532
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1533
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 1535
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    .line 1536
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1537
    const/16 v0, 0x203

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    .line 1540
    invoke-static {p0}, Lcom/samsung/android/glview/GLPreviewData;->getInstance(Lcom/samsung/android/glview/GLContext;)Lcom/samsung/android/glview/GLPreviewData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

    .line 1542
    invoke-static {}, Lcom/samsung/android/glview/GLProgramStorage;->getInstance()Lcom/samsung/android/glview/GLProgramStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    .line 1543
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1544
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1545
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1546
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1547
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1548
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1549
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLProgramStorage:Lcom/samsung/android/glview/GLProgramStorage;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgramStorage;->addProgram(I)Z

    .line 1551
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v0, :cond_0

    .line 1552
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-direct {v0, p0, v2, v2}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    .line 1554
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1563
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1564
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1567
    :cond_0
    const/4 v0, 0x0

    .line 1568
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1569
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsFocusIndicatorVisible:Z

    .line 1572
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_2

    .line 1573
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    .line 1574
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    .line 1575
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    .line 1576
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_3

    .line 1577
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    .line 1578
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1608
    :cond_2
    :goto_0
    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 1609
    return v0

    .line 1581
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1584
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 1585
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_2

    .line 1586
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_5

    .line 1587
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    .line 1588
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1589
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    goto :goto_0

    .line 1592
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1593
    iput-object v2, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    goto :goto_0

    .line 1597
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_2

    .line 1598
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_7

    .line 1599
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_2

    .line 1600
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1603
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mLastTouchView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public queueGLEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/Runnable;

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1614
    return-void
.end method

.method public refreshOrientation()V
    .locals 2

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mAutoOrientationStatus:Z

    if-eqz v0, :cond_0

    .line 1621
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    .line 1622
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 1624
    :cond_0
    return-void
.end method

.method public registerHoverEventChangedObserver(Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;)V
    .locals 2
    .param p1, "o"    # Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;

    .prologue
    .line 1627
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 1628
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1629
    monitor-exit v1

    .line 1630
    return-void

    .line 1629
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rotationFocusView()V
    .locals 2

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentFocusedView:Lcom/samsung/android/glview/GLView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->onFocusStatusChanged(I)V

    .line 1636
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1637
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 1638
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mCurrentHoverFocusedView:Lcom/samsung/android/glview/GLView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->onHoverStatusChanged(I)V

    .line 1641
    :cond_1
    return-void
.end method

.method public setAlignToPixel(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 564
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLContext;->mAlignToPixel:Z

    .line 565
    return-void
.end method

.method public setDirty(Z)V
    .locals 2
    .param p1, "dirty"    # Z

    .prologue
    .line 1644
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mFrameLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1645
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1646
    monitor-exit v1

    .line 1654
    :goto_0
    return-void

    .line 1648
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLContext;->mDirty:Z

    .line 1649
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mDirty:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mRenderRequested:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 1650
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 1651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLContext;->mRenderRequested:Z

    .line 1653
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFirstOrientation(I)V
    .locals 2
    .param p1, "firstOrientation"    # I

    .prologue
    .line 1657
    invoke-static {p1}, Lcom/samsung/android/glview/GLUtil;->getGLOrientationByDisplayOrientation(I)I

    move-result v0

    sput v0, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    .line 1658
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1659
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mRootView:Lcom/samsung/android/glview/GLViewGroup;

    sget v1, Lcom/samsung/android/glview/GLContext;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    .line 1661
    :cond_0
    return-void
.end method

.method public setHoverBaseView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext;->mHoverBaseView:Landroid/view/View;

    .line 610
    return-void
.end method

.method public declared-synchronized setPreviewData(II[B)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "data"    # [B

    .prologue
    .line 1664
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLPreviewData:Lcom/samsung/android/glview/GLPreviewData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/glview/GLPreviewData;->setPreviewData(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1666
    :cond_0
    monitor-exit p0

    return-void

    .line 1664
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 1
    .param p1, "renderMode"    # I

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 1670
    return-void
.end method

.method public setRippleEffectColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 666
    iput p1, p0, Lcom/samsung/android/glview/GLContext;->mRippleEffectColor:I

    .line 667
    return-void
.end method

.method public setScrollBarAutoHide(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 710
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLContext;->mScrollBarAutoHide:Z

    .line 711
    return-void
.end method

.method public speakTts(Ljava/lang/String;)V
    .locals 3
    .param p1, "ttsMsg"    # Ljava/lang/String;

    .prologue
    .line 1678
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1679
    const-string v0, "GLContext"

    const-string v1, "speckTts isTalkBackEnabled false"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    :cond_0
    :goto_0
    return-void

    .line 1682
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1683
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0
.end method

.method public unregisterHoverEventChangedObserver(Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;)V
    .locals 2
    .param p1, "o"    # Lcom/samsung/android/glview/GLContext$HoverEventChangedObserver;

    .prologue
    .line 1688
    iget-object v1, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    monitor-enter v1

    .line 1689
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1690
    monitor-exit v1

    .line 1691
    return-void

    .line 1690
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
