.class public Lcom/sec/android/app/camera/shootingmode/Food;
.super Ljava/lang/Object;
.source "Food.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/menu/FoodBlurLevelSliderMenu$FoodBlurLevelSliderMenuSelectListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/sec/android/seccamera/SecCamera$FoodShotEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$AutoFocusListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;


# static fields
.field private static final ACTION_FRAME_MOVING:I = 0x2

.field private static final ACTION_FRAME_RESIZING:I = 0x1

.field private static final ACTION_MOVE_AND_DRAG:I = 0x0

.field private static final CIRCLE_EFFECT_GUIDE_FRAME_HEIGHT:F

.field private static final CIRCLE_EFFECT_GUIDE_FRAME_POS_X:F

.field private static final CIRCLE_EFFECT_GUIDE_FRAME_POS_Y:F

.field private static final CIRCLE_EFFECT_GUIDE_FRAME_WIDTH:F

.field private static final CIRCLE_EFFECT_GUIDE_POS_X:F

.field private static final CIRCLE_EFFECT_GUIDE_POS_Y:F

.field private static final DEFAULT_BLUR_EFFECT_MOVING_THRESHOLD:F = 5.0f

.field private static final DELAY_TIME_TO_HIDE_GUIDE_UI:I = 0xbb8

.field private static final DELAY_TIME_TO_HIDE_OPENING_ANIMATION:I = 0x320

.field private static final DELAY_TIME_TO_RESET_TOUCH_FOCUS:I = 0x2328

.field private static final DELAY_TIME_TO_RESET_TOUCH_FOCUS_FROM_SHUTTER:I = 0xbb8

.field private static final DELAY_TIME_TO_TURNOFF_MASKING_EFFECT:I = 0x3e8

.field private static final EFFECT_FRAME_COLOR:I

.field private static final EFFECT_GUIDE_DEFAULT_HEIGHT:F

.field private static final EFFECT_GUIDE_DEFAULT_WIDTH:F

.field private static final EFFECT_GUIDE_HEIGHT_MAX:I = 0x3

.field private static final EFFECT_GUIDE_HEIGHT_MIN:I = 0x1

.field private static final EFFECT_GUIDE_WIDTH_MAX:I = 0x2

.field private static final EFFECT_GUIDE_WIDTH_MIN:I = 0x0

.field private static final MESSAGE_FOOD_CHANGE_TO_CAF:I = 0x5

.field private static final MESSAGE_FOOD_HIDE_GUIDE_UI:I = 0x1

.field private static final MESSAGE_FOOD_HIDE_MASKING_EFFECT:I = 0x3

.field private static final MESSAGE_FOOD_MOVE_EFFECT_CENTER:I = 0x8

.field private static final MESSAGE_FOOD_RESET_CAF_TIMER_FROM_SHUTTER:I = 0x7

.field private static final MESSAGE_FOOD_RESET_CHANGE_TO_CAF_TIMER:I = 0x6

.field private static final MESSAGE_FOOD_RESET_HIDE_GUIDE_UI_TIMER:I = 0x2

.field private static final MESSAGE_FOOD_RESET_HIDE_MASKING_TIMER:I = 0x4

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SECIMAGE_COORDINATE_MAX:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "Food"

.field private static final TOUCH_INSIDE_AREA:I = 0x7

.field private static final TOUCH_OUTSIDE_AREA:I = 0x0

.field private static final TOUCH_VERTEX_AREA_WIDTH:I

.field private static final TOUCH_VERTEX_LB:I = 0x2

.field private static final TOUCH_VERTEX_LT:I = 0x1

.field private static final TOUCH_VERTEX_RB:I = 0x4

.field private static final TOUCH_VERTEX_RT:I = 0x3


# instance fields
.field private mAmountDeltaX:F

.field private mAmountDeltaY:F

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mClipRect:Lcom/samsung/android/glview/GLViewGroup;

.field private mDefaultCenter:Landroid/graphics/PointF;

.field private mEffectCenter:Landroid/graphics/PointF;

.field private mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field protected mFoodMsgHandler:Landroid/os/Handler;

.field private mGuideFrameState:I

.field private mIsZoom:Z

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mMovePoint:Landroid/graphics/PointF;

.field private mPreviewBottom:F

.field private mPreviewLeft:F

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mPreviewRight:F

.field private mPreviewTop:F

.field private mRealPreviewHeight:F

.field private mRealPreviewWidth:F

.field private mScreenCenter:Landroid/graphics/PointF;

.field private mSelectedVertex:I

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const v1, 0x3ecccccd    # 0.4f

    .line 66
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    .line 67
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    .line 69
    sget v0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_WIDTH:F

    .line 70
    sget v0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_HEIGHT:F

    .line 71
    sget v0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_POS_X:F

    .line 72
    sget v0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_POS_Y:F

    .line 74
    sget v0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_WIDTH:F

    .line 75
    sget v0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_HEIGHT:F

    .line 76
    sget v0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_POS_X:F

    sput v0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_POS_X:F

    .line 77
    sget v0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_POS_Y:F

    sput v0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_POS_Y:F

    .line 79
    const v0, 0x7f0c0015

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_FRAME_COLOR:I

    .line 89
    const v0, 0x7f090324

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 5
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsZoom:Z

    .line 118
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    .line 119
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideFrameState:I

    .line 120
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 121
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 122
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mClipRect:Lcom/samsung/android/glview/GLViewGroup;

    .line 123
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 124
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 125
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 126
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 127
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    .line 128
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    .line 129
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    .line 130
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    .line 131
    new-instance v0, Landroid/graphics/PointF;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCenter:Landroid/graphics/PointF;

    .line 132
    new-instance v0, Landroid/graphics/PointF;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mScreenCenter:Landroid/graphics/PointF;

    .line 133
    new-instance v0, Landroid/graphics/PointF;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mDefaultCenter:Landroid/graphics/PointF;

    .line 134
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    .line 135
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Food$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/Food$1;-><init>(Lcom/sec/android/app/camera/shootingmode/Food;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    .line 200
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 201
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/Food;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Food;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->hideAllEffectGuide()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/Food;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Food;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/Food;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Food;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/Food;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Food;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/Food;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Food;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->showCircleEffectFrame()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/Food;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Food;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/Food;Landroid/graphics/PointF;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Food;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Food;->moveCircleEffect(Landroid/graphics/PointF;)V

    return-void
.end method

.method private convertHeight(F)F
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 583
    sget v0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    div-float v0, p1, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private convertPositionForSending(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3
    .param p1, "input"    # Landroid/graphics/PointF;

    .prologue
    .line 925
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 926
    .local v0, "result":Landroid/graphics/PointF;
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewLeft:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mRealPreviewWidth:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 927
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewTop:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mRealPreviewHeight:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 929
    return-object v0
.end method

.method private convertReceivedX(F)F
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 917
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mRealPreviewWidth:F

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewLeft:F

    add-float/2addr v0, v1

    return v0
.end method

.method private convertReceivedY(F)F
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 921
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mRealPreviewHeight:F

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private convertWidth(F)F
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 587
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewLeft:F

    sub-float v0, p1, v1

    .line 588
    .local v0, "positionX":F
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    return v1
.end method

.method private decideSelectedVertex(FF)V
    .locals 6
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 761
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v1

    .line 762
    .local v1, "curGuideLeft":F
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v2

    .line 763
    .local v2, "curGuideRight":F
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentTop()F

    move-result v3

    .line 764
    .local v3, "curGuideTop":F
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentBottom()F

    move-result v0

    .line 766
    .local v0, "curGuideBottom":F
    sget v4, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_0

    sget v4, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    cmpl-float v4, v4, p1

    if-lez v4, :cond_0

    sget v4, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_0

    sget v4, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpl-float v4, v4, p2

    if-lez v4, :cond_0

    .line 770
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    const v5, 0x7f0200c6

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    .line 771
    const/4 v4, 0x1

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    .line 798
    :goto_0
    return-void

    .line 772
    :cond_0
    sget v4, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, v4, p1

    if-lez v4, :cond_1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_1

    sget v4, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpl-float v4, v4, p2

    if-lez v4, :cond_1

    .line 776
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    const v5, 0x7f0200c8

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    .line 777
    const/4 v4, 0x3

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    goto :goto_0

    .line 778
    :cond_1
    sget v4, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, p1

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    sget v4, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    cmpl-float v4, v4, p1

    if-lez v4, :cond_2

    sget v4, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_2

    sget v4, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    cmpl-float v4, v4, p2

    if-lez v4, :cond_2

    .line 782
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    const v5, 0x7f0200c5

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    .line 783
    const/4 v4, 0x2

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    goto :goto_0

    .line 784
    :cond_2
    sget v4, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, v4, p1

    if-lez v4, :cond_3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_3

    sget v4, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    cmpl-float v4, v4, p2

    if-lez v4, :cond_3

    .line 788
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    const v5, 0x7f0200c7

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    .line 789
    const/4 v4, 0x4

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    goto/16 :goto_0

    .line 790
    :cond_3
    cmpl-float v4, p1, v1

    if-lez v4, :cond_4

    cmpg-float v4, p1, v2

    if-gez v4, :cond_4

    cmpl-float v4, p2, v3

    if-lez v4, :cond_4

    cmpg-float v4, p2, v0

    if-gez v4, :cond_4

    .line 794
    const/4 v4, 0x7

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    goto/16 :goto_0

    .line 796
    :cond_4
    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    goto/16 :goto_0
.end method

.method private getSelfieGuideBoxResizeRange(I)F
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 592
    packed-switch p1, :pswitch_data_0

    .line 600
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 595
    :pswitch_0
    sget v0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    goto :goto_0

    .line 598
    :pswitch_1
    sget v0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    goto :goto_0

    .line 592
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private hideAllEffectGuide()V
    .locals 2

    .prologue
    .line 604
    const-string v0, "Food"

    const-string v1, "hideAllEffectGuide"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 610
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    .line 611
    return-void
.end method

.method private isFrameShowing()Z
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 270
    const/4 v0, 0x0

    .line 272
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isValidTouchArea(FF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 866
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewAspectRatio()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v3

    if-nez v3, :cond_1

    .line 867
    const v3, 0x7f090148

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 868
    .local v1, "upperLimit":I
    const v3, 0x7f09020a

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 870
    .local v0, "lowerLimit":I
    int-to-float v3, v0

    cmpl-float v3, p1, v3

    if-gtz v3, :cond_0

    int-to-float v3, v1

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    .line 878
    .end local v0    # "lowerLimit":I
    .end local v1    # "upperLimit":I
    :cond_0
    :goto_0
    return v2

    .line 874
    :cond_1
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewLeft:F

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRight:F

    cmpl-float v3, p1, v3

    if-gtz v3, :cond_0

    .line 878
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private declared-synchronized moveCircleEffect(Landroid/graphics/PointF;)V
    .locals 4
    .param p1, "newCenter"    # Landroid/graphics/PointF;

    .prologue
    .line 614
    monitor-enter p0

    :try_start_0
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v0, v2, v3

    .line 615
    .local v0, "deltaX":F
    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v1, v2, v3

    .line 617
    .local v1, "deltaY":F
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCenter:Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 618
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCenter:Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/PointF;->y:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 620
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    .line 622
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->updateEffectPosition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    monitor-exit p0

    return-void

    .line 614
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private removeMessage()V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 627
    return-void
.end method

.method private repositionByResolution()V
    .locals 5

    .prologue
    .line 630
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mScreenCenter:Landroid/graphics/PointF;

    iget v2, v4, Landroid/graphics/PointF;->x:F

    .line 631
    .local v2, "x":F
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mScreenCenter:Landroid/graphics/PointF;

    iget v3, v4, Landroid/graphics/PointF;->y:F

    .line 633
    .local v3, "y":F
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v0, v2, v4

    .line 634
    .local v0, "deltaX":F
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v1, v3, v4

    .line 636
    .local v1, "deltaY":F
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCenter:Landroid/graphics/PointF;

    iput v2, v4, Landroid/graphics/PointF;->x:F

    .line 637
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCenter:Landroid/graphics/PointF;

    iput v3, v4, Landroid/graphics/PointF;->y:F

    .line 639
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    .line 641
    return-void
.end method

.method private resetBlurEffect()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 645
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    .line 646
    .local v0, "deltaX":F
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    .line 649
    .local v1, "deltaY":F
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/sec/android/app/camera/shootingmode/Food;->resizeEffectWithDrag(IFF)V

    .line 652
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->resetTranslate()V

    .line 655
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCenter:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLNinePatch;->getLeft()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getRight()F

    move-result v4

    add-float/2addr v3, v4

    mul-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 656
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCenter:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLNinePatch;->getTop()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getBottom()F

    move-result v4

    add-float/2addr v3, v4

    mul-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 658
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->repositionByResolution()V

    .line 659
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->hideAllEffectGuide()V

    .line 660
    return-void
.end method

.method private declared-synchronized resizeEffectByDelta(F)V
    .locals 7
    .param p1, "deltaR"    # F

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 726
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Food;->getSelfieGuideBoxResizeRange(I)F

    move-result v1

    .line 727
    .local v1, "MIN_WIDTH":F
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Food;->getSelfieGuideBoxResizeRange(I)F

    move-result v0

    .line 729
    .local v0, "MAX_WIDTH":F
    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p1, v2

    .line 731
    cmpg-float v2, p1, v4

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v2

    mul-float v3, v6, p1

    add-float/2addr v2, v3

    cmpg-float v2, v2, v1

    if-gez v2, :cond_1

    .line 732
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v2

    sub-float v2, v1, v2

    div-float p1, v2, v6

    .line 737
    :cond_0
    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    .line 738
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    .line 739
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    neg-float v3, p1

    neg-float v4, p1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->translate(FFZ)V

    .line 740
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    sget v3, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 741
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->updateEffectPosition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    monitor-exit p0

    return-void

    .line 733
    :cond_1
    cmpl-float v2, p1, v4

    if-lez v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v2

    mul-float v3, v6, p1

    add-float/2addr v2, v3

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    .line 734
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    sub-float v2, v0, v2

    div-float p1, v2, v6

    goto :goto_0

    .line 726
    .end local v0    # "MAX_WIDTH":F
    .end local v1    # "MIN_WIDTH":F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized resizeEffectWithDrag(IFF)V
    .locals 9
    .param p1, "vertexTouchMode"    # I
    .param p2, "deltaX"    # F
    .param p3, "deltaY"    # F

    .prologue
    const/high16 v7, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 663
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Food;->getSelfieGuideBoxResizeRange(I)F

    move-result v3

    .line 664
    .local v3, "MIN_WIDTH":F
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Food;->getSelfieGuideBoxResizeRange(I)F

    move-result v2

    .line 665
    .local v2, "MIN_HEIGHT":F
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Food;->getSelfieGuideBoxResizeRange(I)F

    move-result v1

    .line 666
    .local v1, "MAX_WIDTH":F
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Food;->getSelfieGuideBoxResizeRange(I)F

    move-result v0

    .line 668
    .local v0, "MAX_HEIGHT":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 669
    mul-float v4, p3, p2

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    .line 670
    mul-float p3, p2, v7

    .line 683
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 701
    :goto_1
    :pswitch_0
    cmpl-float v4, p2, v6

    if-ltz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    mul-float v5, v8, p2

    sub-float/2addr v4, v5

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_5

    .line 702
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float/2addr v4, v3

    div-float p2, v4, v8

    .line 706
    :cond_0
    :goto_2
    cmpl-float v4, p3, v6

    if-ltz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    mul-float v5, v8, p3

    sub-float/2addr v4, v5

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_6

    .line 707
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    sub-float/2addr v4, v2

    div-float p3, v4, v8

    .line 712
    :cond_1
    :goto_3
    mul-float v4, p2, p3

    cmpg-float v4, v4, v6

    if-gez v4, :cond_7

    .line 722
    :goto_4
    monitor-exit p0

    return-void

    .line 672
    :cond_2
    move p3, p2

    goto :goto_0

    .line 675
    :cond_3
    mul-float v4, p3, p2

    cmpg-float v4, v4, v6

    if-gez v4, :cond_4

    .line 676
    mul-float p2, p3, v7

    goto :goto_0

    .line 678
    :cond_4
    move p2, p3

    goto :goto_0

    .line 687
    :pswitch_1
    mul-float/2addr p3, v7

    .line 688
    goto :goto_1

    .line 690
    :pswitch_2
    mul-float/2addr p2, v7

    .line 691
    goto :goto_1

    .line 693
    :pswitch_3
    mul-float/2addr p2, v7

    .line 694
    mul-float/2addr p3, v7

    .line 695
    goto :goto_1

    .line 703
    :cond_5
    cmpg-float v4, p2, v6

    if-gtz v4, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    mul-float v5, v8, p2

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_0

    .line 704
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float/2addr v4, v1

    div-float p2, v4, v8

    goto :goto_2

    .line 708
    :cond_6
    cmpg-float v4, p3, v6

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    mul-float v5, v8, p3

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_1

    .line 709
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float/2addr v4, v0

    div-float p3, v4, v8

    goto :goto_3

    .line 716
    :cond_7
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    sub-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    .line 717
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    sub-float/2addr v4, p3

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    .line 718
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, p3, v5}, Lcom/samsung/android/glview/GLNinePatch;->translate(FFZ)V

    .line 719
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    sget v5, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_WIDTH:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 721
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->updateEffectPosition()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 663
    .end local v0    # "MAX_HEIGHT":F
    .end local v1    # "MAX_WIDTH":F
    .end local v2    # "MIN_HEIGHT":F
    .end local v3    # "MIN_WIDTH":F
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 683
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setAnimaitionEffect()V
    .locals 3

    .prologue
    .line 811
    const/4 v0, 0x0

    .line 812
    .local v0, "param":Ljava/lang/String;
    const-string v1, "FOCUS=1"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 814
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    .line 815
    return-void
.end method

.method private setBlurEffect(IFFFF)V
    .locals 4
    .param p1, "effect"    # I
    .param p2, "le"    # F
    .param p3, "ri"    # F
    .param p4, "to"    # F
    .param p5, "bo"    # F

    .prologue
    const/4 v3, 0x0

    .line 745
    const/4 v0, 0x0

    .line 747
    .local v0, "param":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v1

    if-nez v1, :cond_0

    .line 748
    const-string v1, "FOOD=0"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 749
    const-string v1, "Food"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBlurEffect String : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    .line 758
    :goto_0
    return-void

    .line 754
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FOOD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",LE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    float-to-int v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",TO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    float-to-int v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",RI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    float-to-int v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",BO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    float-to-int v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 756
    const-string v1, "Food"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEffect String : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMaskingEffect(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 801
    const/4 v0, 0x0

    .line 802
    .local v0, "param":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    const-string v1, "ENHANCED=1"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 807
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    .line 808
    return-void

    .line 805
    :cond_0
    const-string v1, "ENHANCED=0"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showCircleEffectFrame()V
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 820
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->updateEffectPosition()V

    .line 821
    return-void
.end method

.method private showSwichingAnimation()V
    .locals 4

    .prologue
    .line 824
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->setAnimaitionEffect()V

    .line 825
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->updateEffectPosition()V

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 827
    return-void
.end method

.method private updateDrawingArea()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 846
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    .line 847
    const-string v0, "Food"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preview Resolution changed ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewLeft:F

    .line 850
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRight:F

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewTop:F

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewBottom:F

    .line 854
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mScreenCenter:Landroid/graphics/PointF;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewLeft:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRight:F

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 856
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mRealPreviewWidth:F

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mRealPreviewHeight:F

    .line 859
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mDefaultCenter:Landroid/graphics/PointF;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewLeft:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRight:F

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 861
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mClipRect:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipRect(Landroid/graphics/Rect;)V

    .line 862
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mClipRect:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 863
    return-void
.end method

.method private updateEffectPosition()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 832
    const v0, 0x7f090323

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    .line 834
    .local v6, "frameMargin":I
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v0

    int-to-float v1, v6

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->convertWidth(F)F

    move-result v2

    .line 835
    .local v2, "left":F
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v0

    int-to-float v1, v6

    sub-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->convertWidth(F)F

    move-result v3

    .line 836
    .local v3, "right":F
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentBottom()F

    move-result v0

    int-to-float v1, v6

    sub-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->convertHeight(F)F

    move-result v5

    .line 837
    .local v5, "bottom":F
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentTop()F

    move-result v0

    int-to-float v1, v6

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->convertHeight(F)F

    move-result v4

    .line 839
    .local v4, "top":F
    const-string v0, "LE : %f,    RI : %f,    TO : %f,    BO : %f "

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v1, v8

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v1, v10

    const/4 v8, 0x2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v1, v8

    const/4 v8, 0x3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 840
    .local v7, "param":Ljava/lang/String;
    const-string v0, "Food"

    invoke-static {v0, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 842
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/shootingmode/Food;->setBlurEffect(IFFFF)V

    .line 843
    :cond_0
    return-void
.end method


# virtual methods
.method public getMaxFileSizeOfImage()J
    .locals 2

    .prologue
    .line 207
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomAvailable()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 3
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    .line 222
    const-string v0, "Food"

    const-string v1, "onActivate"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateSideQuickSetting([I)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 229
    const-string v0, "Food"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFoodLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFoodLevel(I)V

    .line 232
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOOD_ADDED_LENS:Z

    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->updateDrawingArea()V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setFoodShotEventListener(Lcom/sec/android/seccamera/SecCamera$FoodShotEventListener;)V

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x8d

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setAutoFocusListener(Lcom/sec/android/app/camera/interfaces/Engine$AutoFocusListener;)V

    .line 239
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    .line 240
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->updateDrawingArea()V

    .line 241
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->repositionByResolution()V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->showSwichingAnimation()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    .line 248
    return-void

    .line 224
    :array_0
    .array-data 4
        0x80
        0x8d
        0x4
    .end array-data
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/camera/shootingmode/Food;->isValidTouchArea(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 321
    :goto_0
    return v1

    .line 281
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 282
    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 319
    goto :goto_0

    .line 286
    :pswitch_1
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsZoom:Z

    .line 287
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    move v1, v2

    .line 288
    goto :goto_0

    .line 290
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    const v4, 0x7f0200c4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    .line 291
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideFrameState:I

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsZoom:Z

    if-nez v3, :cond_2

    .line 292
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 293
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 294
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, v1, Landroid/graphics/PointF;->y:F

    .line 295
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    invoke-interface {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setTouchFocusPosition(II)V

    .line 296
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleAutoFocus()V

    .line 297
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Food;->convertPositionForSending(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 298
    .local v0, "focusPoint":Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    invoke-interface {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setFoodBlurPosition(II)V

    .line 299
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideFrameState:I

    move v1, v2

    .line 300
    goto :goto_0

    .line 301
    .end local v0    # "focusPoint":Landroid/graphics/PointF;
    :cond_2
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideFrameState:I

    if-eqz v3, :cond_3

    .line 302
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    invoke-interface {v3, v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->setTouchFocusPosition(II)V

    .line 303
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleAutoFocus()V

    .line 305
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 306
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 307
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 309
    :cond_3
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideFrameState:I

    .line 310
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsZoom:Z

    goto/16 :goto_0

    :pswitch_3
    move v1, v2

    .line 313
    goto/16 :goto_0

    .line 315
    :pswitch_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    .line 316
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsZoom:Z

    goto/16 :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onAutoFocus(IZ)V
    .locals 3
    .param p1, "afResult"    # I
    .param p2, "isTouchAutoFocusActive"    # Z

    .prologue
    const/4 v2, 0x1

    .line 252
    if-nez p2, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideFrameState:I

    if-nez v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mDefaultCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mDefaultCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    const-string v0, "Food"

    const-string v1, "onAutoFocus : Focus mode is changed as Continuos Auto Focus"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->resetBlurEffect()V

    .line 258
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->repositionByResolution()V

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 260
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->showSwichingAnimation()V

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v0

    if-ne v0, v2, :cond_0

    if-eqz p2, :cond_0

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    goto :goto_0
.end method

.method public onCameraSettingChanged(II)V
    .locals 6
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 327
    const-string v0, "Food"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraSettingsChanged: menuId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", modeId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sparse-switch p1, :sswitch_data_0

    .line 359
    :goto_0
    return-void

    .line 330
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->resetBlurEffect()V

    .line 331
    if-ne p2, v4, :cond_0

    .line 332
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    .line 333
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->showCircleEffectFrame()V

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->hideAllEffectGuide()V

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v1

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/shootingmode/Food;->setBlurEffect(IFFFF)V

    goto :goto_0

    .line 346
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->resetBlurEffect()V

    .line 347
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->updateDrawingArea()V

    .line 348
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->repositionByResolution()V

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 350
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->hideAllEffectGuide()V

    .line 351
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    .line 352
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->showCircleEffectFrame()V

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 328
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8d -> :sswitch_0
    .end sparse-switch
.end method

.method public onChangeShootingModeParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    .line 364
    const-string v0, "cam_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 365
    const-string v0, "focus-mode"

    const-string v1, "continuous-picture"

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v0, "scene-mode"

    const-string v1, "food"

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v0, "wb-level"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodLevel()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 369
    const-string v0, "phase-af"

    const-string v1, "on"

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const/16 v0, 0x2710

    const/16 v1, 0x5dc0

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 371
    const-string v0, "effect_hint"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 372
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 8
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 376
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 377
    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 378
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mClipRect:Lcom/samsung/android/glview/GLViewGroup;

    .line 380
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOOD_ADDED_LENS:Z

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    .line 384
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    sget v2, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_POS_X:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_HEIGHT:F

    const v6, 0x7f0200c4

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCenter:Landroid/graphics/PointF;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v7

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCenter:Landroid/graphics/PointF;

    sget v1, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v1, v7

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLNinePatch;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setClickable(Z)V

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setTitle(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 399
    :cond_0
    return-void
.end method

.method public onEngineStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 403
    return-void
.end method

.method public onFoodBlurLevelSliderMenuSelect(I)V
    .locals 0
    .param p1, "foodBlurLevel"    # I

    .prologue
    .line 407
    return-void
.end method

.method public onFoodShotComplete([B)V
    .locals 14
    .param p1, "bytes"    # [B

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    .line 883
    const-string v9, "Food"

    const-string v10, "onFoodShotComplete"

    invoke-static {v9, v10}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-static {p1, v13}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v9

    int-to-float v4, v9

    .line 886
    .local v4, "left":F
    const/16 v9, 0x8

    invoke-static {p1, v9}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v9

    int-to-float v8, v9

    .line 887
    .local v8, "top":F
    const/16 v9, 0xc

    invoke-static {p1, v9}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v9

    int-to-float v7, v9

    .line 888
    .local v7, "right":F
    const/16 v9, 0x10

    invoke-static {p1, v9}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v9

    int-to-float v0, v9

    .line 892
    .local v0, "bottom":F
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v9

    if-ne v9, v12, :cond_0

    .line 893
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->showCircleEffectFrame()V

    .line 895
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Food;->convertReceivedX(F)F

    move-result v4

    .line 896
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/shootingmode/Food;->convertReceivedX(F)F

    move-result v7

    .line 897
    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/shootingmode/Food;->convertReceivedY(F)F

    move-result v8

    .line 898
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->convertReceivedY(F)F

    move-result v0

    .line 900
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCenter:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCircleFrame:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 902
    .local v6, "oldR":F
    add-float v9, v4, v7

    div-float v1, v9, v11

    .line 903
    .local v1, "centerX":F
    add-float v9, v8, v0

    div-float v2, v9, v11

    .line 905
    .local v2, "centerY":F
    sub-float v9, v7, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 907
    .local v5, "newR":F
    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/shootingmode/Food;->moveCircleEffect(Landroid/graphics/PointF;)V

    .line 908
    sub-float v3, v5, v6

    .line 909
    .local v3, "deltaR":F
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Food;->resizeEffectByDelta(F)V

    .line 910
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    .line 911
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 912
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    invoke-virtual {v9, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 914
    .end local v1    # "centerX":F
    .end local v2    # "centerY":F
    .end local v3    # "deltaR":F
    .end local v5    # "newR":F
    .end local v6    # "oldR":F
    :cond_0
    return-void
.end method

.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 0
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 411
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->clearSideQuickSetting()V

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setFoodShotEventListener(Lcom/sec/android/seccamera/SecCamera$FoodShotEventListener;)V

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    .line 427
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOOD_ADDED_LENS:Z

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x8d

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setAutoFocusListener(Lcom/sec/android/app/camera/interfaces/Engine$AutoFocusListener;)V

    .line 431
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->resetBlurEffect()V

    .line 432
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->removeMessage()V

    .line 434
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method public onNewImageLoggingPrepared(Ljava/util/ArrayList;)V
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
    .line 453
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v0, "Z103"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    const-string v0, "Z102"

    const/16 v1, 0x8d

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    return-void
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 461
    const/4 v0, 0x0

    return v0
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 0
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 467
    return-void
.end method

.method public onShutterKeyLongPressed()Z
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 478
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 481
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 2
    .param p1, "captureMethod"    # I

    .prologue
    .line 486
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(I)V

    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 493
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 497
    const-string v0, "Food"

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

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 504
    :cond_1
    if-nez p1, :cond_3

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 507
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 508
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 515
    :cond_3
    :goto_0
    return-void

    .line 511
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v8, 0x40a00000    # 5.0f

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 519
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v0

    .line 520
    .local v0, "blurType":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    move v5, v6

    .line 574
    :cond_0
    :goto_0
    return v5

    .line 522
    :pswitch_1
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 523
    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideFrameState:I

    .line 524
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->isFrameShowing()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 525
    if-ne v0, v5, :cond_1

    .line 526
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/sec/android/app/camera/shootingmode/Food;->decideSelectedVertex(FF)V

    .line 528
    :cond_1
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_2

    .line 529
    iput v10, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideFrameState:I

    .line 530
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 531
    :cond_2
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    if-eqz v6, :cond_0

    .line 532
    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideFrameState:I

    .line 533
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_3
    move v5, v6

    .line 538
    goto :goto_0

    .line 542
    :pswitch_2
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsZoom:Z

    if-nez v7, :cond_4

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideFrameState:I

    if-nez v7, :cond_5

    :cond_4
    move v5, v6

    .line 543
    goto :goto_0

    .line 546
    :cond_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    .line 547
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float v1, v6, v7

    .line 548
    .local v1, "deltaX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float v2, v6, v7

    .line 550
    .local v2, "deltaY":F
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideFrameState:I

    if-ne v6, v10, :cond_7

    .line 551
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCenter:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float v3, v6, v1

    .line 552
    .local v3, "newCenterX":F
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectCenter:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float v4, v6, v2

    .line 554
    .local v4, "newCenterY":F
    if-ne v0, v5, :cond_6

    .line 555
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/Food;->moveCircleEffect(Landroid/graphics/PointF;)V

    .line 557
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 558
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 559
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 561
    .end local v3    # "newCenterX":F
    .end local v4    # "newCenterY":F
    :cond_7
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideFrameState:I

    if-ne v6, v5, :cond_9

    .line 562
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v8

    if-gez v6, :cond_8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v8

    if-ltz v6, :cond_0

    .line 565
    :cond_8
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    invoke-direct {p0, v6, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Food;->resizeEffectWithDrag(IFF)V

    .line 568
    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 569
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 520
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x0

    return v0
.end method
