.class public Lcom/sec/android/app/camera/widget/gl/RectHandler;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "RectHandler.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$DragListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;,
        Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;,
        Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;
    }
.end annotation


# static fields
.field private static final BOUND_RECT_THICKNESS:I

.field public static final HANDLER_4POINT:I = 0x4

.field public static final HANDLER_8POINT:I = 0x8

.field private static final HANDLER_AREA_PADDING:I

.field public static final LEFT_LOCK:I = 0x1

.field private static final MOVE_BOTTOM:I = 0x8

.field private static final MOVE_LEFT:I = 0x1

.field private static final MOVE_RIGHT:I = 0x2

.field private static final MOVE_TOP:I = 0x4

.field private static final MOVE_WHOLERECT:I = 0x10

.field public static final NONE_LOCK:I = 0x0

.field private static final OUTER_BOUND_RECT_THICKNESS:I

.field private static final RESIZE_HANDLE_OFFSET:I

.field private static final RESIZE_HANDLE_SIZE:I

.field public static final RIGHT_LOCK:I = 0x2

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "RectHandler"

.field protected static final TRACKING_START:I = 0x1

.field public static final TRACKING_START_TIMEOUT:I = 0x3e8


# instance fields
.field private HANDLE_SIZE:F

.field private mAspectRatio:F

.field private mBackGround:Lcom/samsung/android/glview/GLImage;

.field private mBoundRect:Landroid/graphics/RectF;

.field private mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mDisable:Z

.field private mDragStartPoint:Landroid/graphics/PointF;

.field private mDraggable:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGrowBoundry:Z

.field private mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

.field private mHandlerType:I

.field private mHandler_area_bottom_boundary:I

.field private mHandler_area_left_boundary:I

.field private mHandler_area_right_boundary:I

.field private mHandler_area_top_boundary:I

.field private mInnerBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

.field private mIsAspectRatioLocked:Z

.field private mMaxRect:Landroid/graphics/RectF;

.field private mMinRect:Landroid/graphics/RectF;

.field private mOuterBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

.field private mRect:Landroid/graphics/RectF;

.field private mRectBeforeDragged:Landroid/graphics/RectF;

.field private mRectBeforeInvisible:Landroid/graphics/RectF;

.field private mRectHandlerClickListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;

.field private mResizeHandle:[Lcom/samsung/android/glview/GLImage;

.field private mResizeHandleType:[I

.field private mShowBoundry:Z

.field private mSideLock:I

.field private mWidthOffsetForhandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f09009c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->BOUND_RECT_THICKNESS:I

    .line 53
    const v0, 0x7f09009d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    .line 54
    const v0, 0x7f09009f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->RESIZE_HANDLE_SIZE:I

    .line 55
    const v0, 0x7f09009e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->RESIZE_HANDLE_OFFSET:I

    .line 56
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->SCREEN_WIDTH:I

    .line 57
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->SCREEN_HEIGHT:I

    .line 58
    const v0, 0x7f090019

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLER_AREA_PADDING:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;I)V
    .locals 13
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "type"    # I

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, v2, v2}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 60
    iput v12, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerType:I

    .line 61
    iput-boolean v10, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mIsAspectRatioLocked:Z

    .line 62
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    .line 63
    iput-object v6, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    .line 64
    iput-object v6, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mOuterBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    .line 65
    iput-object v6, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mInnerBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    .line 66
    new-array v0, v12, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    .line 67
    iput-object v6, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    .line 71
    iput-object v6, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDragStartPoint:Landroid/graphics/PointF;

    .line 72
    iput-boolean v11, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDraggable:Z

    .line 73
    iput-boolean v11, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mShowBoundry:Z

    .line 74
    iput-boolean v11, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mGrowBoundry:Z

    .line 75
    iput-boolean v10, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDisable:Z

    .line 76
    iput v10, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    .line 77
    iput-object v6, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    .line 78
    iput-object v6, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectBeforeDragged:Landroid/graphics/RectF;

    .line 79
    iput-object v6, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectBeforeInvisible:Landroid/graphics/RectF;

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    const v1, -0x3a63c000    # -5000.0f

    const v3, -0x3a63c000    # -5000.0f

    const v4, 0x459c4000    # 5000.0f

    const v5, 0x459c4000    # 5000.0f

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x43160000    # 150.0f

    const/high16 v3, 0x43160000    # 150.0f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    .line 82
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x43fa0000    # 500.0f

    const/high16 v3, 0x43fa0000    # 500.0f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    .line 83
    const/16 v0, 0xf0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mWidthOffsetForhandle:I

    .line 84
    sget v0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLER_AREA_PADDING:I

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_left_boundary:I

    .line 85
    sget v0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_right_boundary:I

    .line 86
    sget v0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLER_AREA_PADDING:I

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_top_boundary:I

    .line 87
    sget v0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_bottom_boundary:I

    .line 88
    iput-object v6, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    .line 89
    iput-object v6, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectHandlerClickListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;

    .line 97
    iput p2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerType:I

    .line 98
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 100
    new-instance v0, Landroid/view/GestureDetector;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;-><init>(Lcom/sec/android/app/camera/widget/gl/RectHandler;)V

    invoke-direct {v0, v1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mGestureDetector:Landroid/view/GestureDetector;

    .line 102
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const v3, 0x7f0c0001

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    sget v3, Lcom/sec/android/app/camera/widget/gl/RectHandler;->BOUND_RECT_THICKNESS:I

    int-to-float v7, v3

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    .line 103
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const v3, 0x7f0c0002

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    sget v3, Lcom/sec/android/app/camera/widget/gl/RectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    int-to-float v7, v3

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mOuterBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    .line 104
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const v3, 0x7f0c0002

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    sget v3, Lcom/sec/android/app/camera/widget/gl/RectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    int-to-float v7, v3

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mInnerBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mOuterBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mInnerBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 109
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, v10}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    const-string v1, "Rect"

    iput-object v1, v0, Lcom/samsung/android/glview/GLImage;->mTitle:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLImage;->setDraggable(Z)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLImage;->setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLImage;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLImage;->setDragSensitivity(I)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 117
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getDualHandlerOffset()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mWidthOffsetForhandle:I

    .line 119
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerType:I

    if-ge v8, v0, :cond_0

    .line 120
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/widget/gl/RectHandler;->RESIZE_HANDLE_SIZE:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/widget/gl/RectHandler;->RESIZE_HANDLE_SIZE:I

    int-to-float v5, v3

    const v7, 0x7f02008f

    move v3, v2

    move v6, v10

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    aput-object v0, v9, v8

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v8

    sget v1, Lcom/sec/android/app/camera/widget/gl/RectHandler;->RESIZE_HANDLE_OFFSET:I

    int-to-float v1, v1

    sget v3, Lcom/sec/android/app/camera/widget/gl/RectHandler;->RESIZE_HANDLE_OFFSET:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/glview/GLImage;->setImageOffset(FF)Z

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v8

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLImage;->setDraggable(Z)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v8

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLImage;->setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v8

    invoke-virtual {v0, v10}, Lcom/samsung/android/glview/GLImage;->setDragSensitivity(I)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 119
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    const/4 v1, 0x5

    aput v1, v0, v10

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    const/4 v1, 0x6

    aput v1, v0, v11

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    const/4 v1, 0x2

    const/16 v2, 0xa

    aput v2, v0, v1

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    const/4 v1, 0x3

    const/16 v2, 0x9

    aput v2, v0, v1

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    const/16 v1, 0x10

    aput v1, v0, v12

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/RectHandler;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/RectHandler;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDisable:Z

    return v0
.end method

.method private applyMovement(Landroid/graphics/PointF;I)V
    .locals 8
    .param p1, "delta_in"    # Landroid/graphics/PointF;
    .param p2, "index"    # I

    .prologue
    .line 580
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    .line 581
    .local v6, "delta":Landroid/graphics/PointF;
    new-instance v7, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectBeforeDragged:Landroid/graphics/RectF;

    invoke-direct {v7, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 582
    .local v7, "rect":Landroid/graphics/RectF;
    invoke-virtual {v6, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v0, v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDraggable:Z

    if-eqz v0, :cond_1

    .line 585
    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget v1, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v7, v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->moveBy(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object v7

    .line 592
    :goto_0
    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget v1, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setPosition(FFFF)V

    .line 594
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    iget v2, v7, Landroid/graphics/RectF;->left:F

    iget v3, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;->onMove(Lcom/samsung/android/glview/GLView;FFFF)V

    .line 597
    :cond_0
    return-void

    .line 586
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mGrowBoundry:Z

    if-eqz v0, :cond_0

    .line 587
    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget v1, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v7, v0, v1, p2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->growBy(Landroid/graphics/RectF;FFI)Landroid/graphics/RectF;

    move-result-object v7

    goto :goto_0
.end method

.method private filterMovement(Landroid/graphics/PointF;I)V
    .locals 2
    .param p1, "delta"    # Landroid/graphics/PointF;
    .param p2, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v0, v0, p2

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v0, v0, p2

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 604
    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v0, v0, p2

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v0, v0, p2

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 607
    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 609
    :cond_1
    return-void
.end method

.method private getHandleIndex(Lcom/samsung/android/glview/GLView;)I
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 612
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 613
    const/4 v0, 0x4

    .line 617
    :cond_0
    :goto_0
    return v0

    .line 614
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerType:I

    if-ge v0, v1, :cond_2

    .line 615
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_0

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 617
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private growBy(Landroid/graphics/RectF;FFI)Landroid/graphics/RectF;
    .locals 9
    .param p1, "in"    # Landroid/graphics/RectF;
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "index"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    .line 621
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 623
    .local v2, "ret":Landroid/graphics/RectF;
    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mIsAspectRatioLocked:Z

    if-eqz v3, :cond_3d

    .line 624
    packed-switch p4, :pswitch_data_0

    .line 767
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 768
    .local v0, "mHeight":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 770
    .local v1, "mWidth":F
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 773
    :cond_1
    packed-switch p4, :pswitch_data_1

    .line 859
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v3, v1, v3

    if-gtz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    .line 860
    :cond_3
    packed-switch p4, :pswitch_data_2

    .line 934
    :cond_4
    :goto_2
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 935
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 937
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 938
    packed-switch p4, :pswitch_data_3

    .line 978
    :cond_5
    :goto_3
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 980
    :cond_6
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    .line 981
    packed-switch p4, :pswitch_data_4

    .line 1021
    :cond_7
    :goto_4
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1023
    :cond_8
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a

    .line 1024
    packed-switch p4, :pswitch_data_5

    .line 1083
    :cond_9
    :goto_5
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1085
    :cond_a
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_c

    .line 1086
    packed-switch p4, :pswitch_data_6

    .line 1145
    :cond_b
    :goto_6
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1195
    :cond_c
    :goto_7
    return-object v2

    .line 626
    .end local v0    # "mHeight":F
    .end local v1    # "mWidth":F
    :pswitch_2
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-eq v3, v7, :cond_0

    .line 628
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_e

    .line 629
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_d

    .line 630
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 631
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 632
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 634
    :cond_d
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 635
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 636
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 639
    :cond_e
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_0

    .line 640
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_f

    .line 641
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 642
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 644
    :cond_f
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 645
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    .line 650
    :pswitch_3
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-eq v3, v8, :cond_0

    .line 652
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_11

    .line 653
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_10

    .line 654
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 655
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 656
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 658
    :cond_10
    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 659
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 660
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    .line 663
    :cond_11
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_0

    .line 664
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_12

    .line 665
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 666
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 668
    :cond_12
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 669
    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 674
    :pswitch_4
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-eq v3, v8, :cond_0

    .line 676
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_14

    .line 677
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_13

    .line 678
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 679
    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 680
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 682
    :cond_13
    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 683
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 684
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    .line 687
    :cond_14
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_0

    .line 688
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_15

    .line 689
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 690
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 692
    :cond_15
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 693
    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 698
    :pswitch_5
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-eq v3, v7, :cond_0

    .line 700
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_17

    .line 701
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_16

    .line 702
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 703
    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 704
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 706
    :cond_16
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 707
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 708
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 711
    :cond_17
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_0

    .line 712
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_18

    .line 713
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 714
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 716
    :cond_18
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 717
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 722
    :pswitch_6
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_19

    .line 723
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 724
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 725
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 726
    :cond_19
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_1a

    .line 727
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 728
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 729
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 730
    :cond_1a
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_0

    .line 731
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 732
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 733
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 737
    :pswitch_7
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-eq v3, v8, :cond_0

    .line 739
    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 740
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 741
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    .line 744
    :pswitch_8
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_1b

    .line 745
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 746
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 747
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 748
    :cond_1b
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_1c

    .line 749
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 750
    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 751
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 752
    :cond_1c
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_0

    .line 753
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 754
    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 755
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 759
    :pswitch_9
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-eq v3, v7, :cond_0

    .line 761
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 762
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 763
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 775
    .restart local v0    # "mHeight":F
    .restart local v1    # "mWidth":F
    :pswitch_a
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_1d

    .line 776
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 777
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_1

    .line 778
    :cond_1d
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_2

    .line 779
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 780
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 781
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 785
    :pswitch_b
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_1e

    .line 786
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 787
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_1

    .line 788
    :cond_1e
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_2

    .line 789
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 790
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 791
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 795
    :pswitch_c
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_1f

    .line 796
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 797
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 798
    :cond_1f
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_2

    .line 799
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 800
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 801
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 805
    :pswitch_d
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_20

    .line 806
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 807
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 808
    :cond_20
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_2

    .line 809
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 810
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 811
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 815
    :pswitch_e
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_21

    .line 816
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 817
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 818
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_1

    .line 819
    :cond_21
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_22

    .line 820
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 821
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 822
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_1

    .line 823
    :cond_22
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_2

    .line 824
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 825
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 826
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_1

    .line 830
    :pswitch_f
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 831
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 832
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_1

    .line 835
    :pswitch_10
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_23

    .line 836
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 837
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 838
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 839
    :cond_23
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_24

    .line 840
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 841
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 842
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_1

    .line 843
    :cond_24
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_2

    .line 844
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 845
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 846
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_1

    .line 850
    :pswitch_11
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 851
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 852
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_1

    .line 862
    :pswitch_12
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_25

    .line 863
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 864
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2

    .line 865
    :cond_25
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_4

    .line 866
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 867
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 868
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 872
    :pswitch_13
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_26

    .line 873
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 874
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2

    .line 875
    :cond_26
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_4

    .line 876
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 877
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 878
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 882
    :pswitch_14
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_27

    .line 883
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 884
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 885
    :cond_27
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_4

    .line 886
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 887
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 888
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 892
    :pswitch_15
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_28

    .line 893
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 894
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 895
    :cond_28
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_4

    .line 896
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 897
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 898
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 902
    :pswitch_16
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_29

    .line 903
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 904
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 905
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2

    .line 906
    :cond_29
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_2a

    .line 907
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 908
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 909
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_2

    .line 910
    :cond_2a
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_4

    .line 911
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 912
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 913
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_2

    .line 917
    :pswitch_17
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 918
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 919
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_2

    .line 922
    :pswitch_18
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 923
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 924
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 927
    :pswitch_19
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 928
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 929
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_2

    .line 940
    :pswitch_1a
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_2b

    .line 941
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    .line 942
    :cond_2b
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_5

    .line 943
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 944
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_3

    .line 948
    :pswitch_1b
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_2c

    .line 949
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_3

    .line 950
    :cond_2c
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_5

    .line 951
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 952
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_3

    .line 956
    :pswitch_1c
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_2d

    .line 957
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 958
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_3

    .line 959
    :cond_2d
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_5

    .line 960
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 961
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    .line 965
    :pswitch_1d
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_2e

    .line 966
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 967
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_3

    .line 968
    :cond_2e
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_5

    .line 969
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 970
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    .line 974
    :pswitch_1e
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 975
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_3

    .line 983
    :pswitch_1f
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_2f

    .line 984
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_4

    .line 985
    :cond_2f
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_7

    .line 986
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 987
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    .line 991
    :pswitch_20
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_30

    .line 992
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    .line 993
    :cond_30
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_7

    .line 994
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 995
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    .line 999
    :pswitch_21
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_31

    .line 1000
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1001
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_4

    .line 1002
    :cond_31
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_7

    .line 1003
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1004
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    .line 1008
    :pswitch_22
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1009
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    .line 1012
    :pswitch_23
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_32

    .line 1013
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1014
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_4

    .line 1015
    :cond_32
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_7

    .line 1016
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1017
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    .line 1026
    :pswitch_24
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_33

    .line 1027
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_5

    .line 1028
    :cond_33
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_9

    .line 1029
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1030
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 1034
    :pswitch_25
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_34

    .line 1035
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_5

    .line 1036
    :cond_34
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_9

    .line 1037
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1038
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 1042
    :pswitch_26
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_9

    .line 1043
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1044
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 1048
    :pswitch_27
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_9

    .line 1049
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1050
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 1054
    :pswitch_28
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_35

    .line 1055
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1056
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_5

    .line 1057
    :cond_35
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_36

    .line 1058
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1059
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 1060
    :cond_36
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_9

    .line 1061
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1062
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 1066
    :pswitch_29
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1067
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_5

    .line 1070
    :pswitch_2a
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_37

    .line 1071
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1072
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 1073
    :cond_37
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_9

    .line 1074
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1075
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 1079
    :pswitch_2b
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1080
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_5

    .line 1088
    :pswitch_2c
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_b

    .line 1089
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1090
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 1094
    :pswitch_2d
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_b

    .line 1095
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1096
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 1100
    :pswitch_2e
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_38

    .line 1101
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_6

    .line 1102
    :cond_38
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_b

    .line 1103
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1104
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 1108
    :pswitch_2f
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_39

    .line 1109
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_6

    .line 1110
    :cond_39
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_b

    .line 1111
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1112
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 1116
    :pswitch_30
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_3a

    .line 1117
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1118
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 1119
    :cond_3a
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_b

    .line 1120
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1121
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 1125
    :pswitch_31
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1126
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_6

    .line 1129
    :pswitch_32
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-nez v3, :cond_3b

    .line 1130
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1131
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_6

    .line 1132
    :cond_3b
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v7, :cond_3c

    .line 1133
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1134
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 1135
    :cond_3c
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-ne v3, v8, :cond_b

    .line 1136
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1137
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 1141
    :pswitch_33
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1142
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/util/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_6

    .line 1148
    .end local v0    # "mHeight":F
    .end local v1    # "mWidth":F
    :cond_3d
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 1149
    .restart local v0    # "mHeight":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 1151
    .restart local v1    # "mWidth":F
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_3e

    .line 1152
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1153
    :cond_3e
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3f

    .line 1154
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1155
    :cond_3f
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_40

    .line 1156
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1157
    :cond_40
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_41

    .line 1158
    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1160
    :cond_41
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_43

    .line 1161
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_42

    .line 1162
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1163
    :cond_42
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_43

    .line 1164
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1166
    :cond_43
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_45

    .line 1167
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_44

    .line 1168
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1169
    :cond_44
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_45

    .line 1170
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1173
    :cond_45
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_47

    .line 1174
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_46

    .line 1175
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1176
    :cond_46
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_47

    .line 1177
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1179
    :cond_47
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_49

    .line 1180
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_48

    .line 1181
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1182
    :cond_48
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_49

    .line 1183
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1186
    :cond_49
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4a

    .line 1187
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1188
    :cond_4a
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4b

    .line 1189
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1190
    :cond_4b
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4c

    .line 1191
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1192
    :cond_4c
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_c

    .line 1193
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_7

    .line 624
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 773
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 860
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 938
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
    .end packed-switch

    .line 981
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_20
        :pswitch_1
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch

    .line 1024
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
    .end packed-switch

    .line 1086
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
    .end packed-switch
.end method


# virtual methods
.method public applyInvisible()V
    .locals 7

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 148
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectBeforeInvisible:Landroid/graphics/RectF;

    .line 150
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 152
    .local v6, "rect":Landroid/graphics/RectF;
    iget v0, v6, Landroid/graphics/RectF;->left:F

    iget v1, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setPosition(FFFF)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    iget v2, v6, Landroid/graphics/RectF;->left:F

    iget v3, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;->onMove(Lcom/samsung/android/glview/GLView;FFFF)V

    .line 157
    :cond_0
    return-void
.end method

.method public calcBoundary(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4
    .param p1, "in"    # Landroid/graphics/RectF;

    .prologue
    .line 160
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 162
    .local v0, "out":Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 163
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 166
    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 167
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 168
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 170
    :cond_1
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 171
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 172
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 174
    :cond_2
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 175
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 178
    :cond_3
    return-object v0
.end method

.method public calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;
    .locals 24
    .param p1, "in"    # Landroid/graphics/RectF;
    .param p2, "rotationIndex"    # I
    .param p3, "Boundrycheck"    # Z

    .prologue
    .line 182
    const-wide/16 v16, 0x0

    .line 183
    .local v16, "theta":D
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 185
    .local v6, "out":Landroid/graphics/RectF;
    packed-switch p2, :pswitch_data_0

    .line 199
    const-wide/16 v16, 0x0

    .line 203
    :goto_0
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    add-float v7, v7, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v7, v7, v18

    float-to-double v2, v7

    .line 204
    .local v2, "Tx":D
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    add-float v7, v7, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v7, v7, v18

    float-to-double v4, v7

    .line 206
    .local v4, "Ty":D
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v7

    move-wide/from16 v18, v0

    sub-double v18, v18, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->top:F

    float-to-double v0, v7

    move-wide/from16 v20, v0

    sub-double v20, v20, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    add-double v10, v18, v2

    .line 207
    .local v10, "pleft":D
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v7

    move-wide/from16 v18, v0

    sub-double v18, v18, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->top:F

    float-to-double v0, v7

    move-wide/from16 v20, v0

    sub-double v20, v20, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    add-double v14, v18, v4

    .line 208
    .local v14, "ptop":D
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->right:F

    float-to-double v0, v7

    move-wide/from16 v18, v0

    sub-double v18, v18, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v7

    move-wide/from16 v20, v0

    sub-double v20, v20, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    add-double v12, v18, v2

    .line 209
    .local v12, "pright":D
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->right:F

    float-to-double v0, v7

    move-wide/from16 v18, v0

    sub-double v18, v18, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v7

    move-wide/from16 v20, v0

    sub-double v20, v20, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    add-double v8, v18, v4

    .line 212
    .local v8, "pbottom":D
    cmpg-double v7, v10, v12

    if-gez v7, :cond_3

    move-wide/from16 v18, v10

    :goto_1
    move-wide/from16 v0, v18

    double-to-float v7, v0

    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 213
    cmpg-double v7, v14, v8

    if-gez v7, :cond_4

    move-wide/from16 v18, v14

    :goto_2
    move-wide/from16 v0, v18

    double-to-float v7, v0

    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 216
    cmpl-double v7, v10, v12

    if-lez v7, :cond_5

    .end local v10    # "pleft":D
    :goto_3
    double-to-float v7, v10

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 217
    cmpl-double v7, v14, v8

    if-lez v7, :cond_6

    .end local v14    # "ptop":D
    :goto_4
    double-to-float v7, v14

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 225
    iget v7, v6, Landroid/graphics/RectF;->left:F

    const/16 v18, 0x0

    cmpg-float v7, v7, v18

    if-gez v7, :cond_0

    .line 226
    iget v7, v6, Landroid/graphics/RectF;->right:F

    iget v0, v6, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    sub-float v7, v7, v18

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 227
    const/4 v7, 0x0

    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 229
    :cond_0
    iget v7, v6, Landroid/graphics/RectF;->top:F

    const/16 v18, 0x0

    cmpg-float v7, v7, v18

    if-gez v7, :cond_1

    .line 230
    iget v7, v6, Landroid/graphics/RectF;->bottom:F

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    sub-float v7, v7, v18

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 231
    const/4 v7, 0x0

    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 234
    :cond_1
    if-eqz p3, :cond_2

    .line 235
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->calcBoundary(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    .line 237
    .end local v6    # "out":Landroid/graphics/RectF;
    :cond_2
    return-object v6

    .line 187
    .end local v2    # "Tx":D
    .end local v4    # "Ty":D
    .end local v8    # "pbottom":D
    .end local v12    # "pright":D
    .restart local v6    # "out":Landroid/graphics/RectF;
    :pswitch_0
    const-wide/16 v16, 0x0

    .line 188
    goto/16 :goto_0

    .line 190
    :pswitch_1
    const-wide v16, 0x4012d97c7f3321d2L    # 4.71238898038469

    .line 191
    goto/16 :goto_0

    .line 193
    :pswitch_2
    const-wide v16, 0x400921fb54442d18L    # Math.PI

    .line 194
    goto/16 :goto_0

    .line 196
    :pswitch_3
    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 197
    goto/16 :goto_0

    .restart local v2    # "Tx":D
    .restart local v4    # "Ty":D
    .restart local v8    # "pbottom":D
    .restart local v10    # "pleft":D
    .restart local v12    # "pright":D
    .restart local v14    # "ptop":D
    :cond_3
    move-wide/from16 v18, v12

    .line 212
    goto :goto_1

    :cond_4
    move-wide/from16 v18, v8

    .line 213
    goto :goto_2

    :cond_5
    move-wide v10, v12

    .line 216
    goto :goto_3

    .end local v10    # "pleft":D
    :cond_6
    move-wide v14, v8

    .line 217
    goto :goto_4

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_1

    .line 243
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerType:I

    if-ge v0, v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 245
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aput-object v2, v1, v0

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_0
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    .line 249
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v1, :cond_2

    .line 250
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mGestureDetector:Landroid/view/GestureDetector;

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_3

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 254
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    .line 256
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_4

    .line 257
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    .line 259
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_5

    .line 260
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    .line 262
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_6

    .line 263
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    .line 265
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_7

    .line 266
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    .line 268
    :cond_7
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    .line 269
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mOuterBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    .line 270
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mInnerBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    .line 271
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 272
    return-void
.end method

.method public getBackGroundImage()Lcom/samsung/android/glview/GLImage;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    return-object v0
.end method

.method public getBoundryShowed()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mShowBoundry:Z

    return v0
.end method

.method public getDisable()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDisable:Z

    return v0
.end method

.method public getDraggable()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDraggable:Z

    return v0
.end method

.method public getDualHandlerOffset()I
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 307
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x50

    goto :goto_0
.end method

.method public getGrowable()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mGrowBoundry:Z

    return v0
.end method

.method public getPosition()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getPositionForVisible()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectBeforeInvisible:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRectBeforeDragged()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 327
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectBeforeDragged:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 328
    .local v0, "rect":Landroid/graphics/RectF;
    return-object v0
.end method

.method public getSideLock()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    return v0
.end method

.method public getonHandlerMoveListener()Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    return-object v0
.end method

.method public hideBoundryRect()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 346
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 347
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mOuterBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 348
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mInnerBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerType:I

    if-ge v0, v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mShowBoundry:Z

    .line 353
    return-void
.end method

.method public moveBy(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;
    .locals 5
    .param p1, "in"    # Landroid/graphics/RectF;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    const/4 v4, 0x0

    .line 356
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 358
    .local v0, "ret":Landroid/graphics/RectF;
    invoke-virtual {v0, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    .line 359
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 360
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 362
    return-object v0
.end method

.method public onDrag(Lcom/samsung/android/glview/GLView;FFFF)V
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F

    .prologue
    .line 367
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDragStartPoint:Landroid/graphics/PointF;

    if-nez v2, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 372
    .local v1, "point":Landroid/graphics/PointF;
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 374
    .local v0, "delta":Landroid/graphics/PointF;
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDragStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 375
    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDragStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 378
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getHandleIndex(Lcom/samsung/android/glview/GLView;)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->filterMovement(Landroid/graphics/PointF;I)V

    .line 380
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getHandleIndex(Lcom/samsung/android/glview/GLView;)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->applyMovement(Landroid/graphics/PointF;I)V

    goto :goto_0
.end method

.method public onDragEnd(Lcom/samsung/android/glview/GLView;FF)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 386
    const-string v0, "RectHandler"

    const-string v1, "onDragEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDragStartPoint:Landroid/graphics/PointF;

    .line 388
    return-void
.end method

.method public onDragStart(Lcom/samsung/android/glview/GLView;FF)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 392
    const-string v0, "RectHandler"

    const-string v1, "onDragStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMaxBound()V

    .line 394
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDragStartPoint:Landroid/graphics/PointF;

    .line 397
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectBeforeDragged:Landroid/graphics/RectF;

    .line 399
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 403
    iget-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDisable:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_1

    .line 418
    :cond_0
    :goto_0
    return v0

    .line 407
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 408
    goto :goto_0

    .line 410
    :catch_0
    move-exception v2

    .line 413
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectHandlerClickListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;

    if-eqz v2, :cond_0

    .line 414
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectHandlerClickListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;

    invoke-interface {v2, p2}, Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;->onRectHandlerClick(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 415
    goto :goto_0
.end method

.method public resetHandler()V
    .locals 3

    .prologue
    const/high16 v2, 0x43fa0000    # 500.0f

    const/high16 v1, 0x42c80000    # 100.0f

    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setAspectRatioLocked(Z)V

    .line 423
    invoke-virtual {p0, v1, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMinSizeF(FF)V

    .line 424
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMaxSizeF(FF)V

    .line 425
    return-void
.end method

.method public setAspectRatioLocked(Z)V
    .locals 4
    .param p1, "locked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 429
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mIsAspectRatioLocked:Z

    .line 431
    iget-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mIsAspectRatioLocked:Z

    if-eqz v2, :cond_0

    .line 432
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    .line 437
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 438
    .local v1, "width":F
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 440
    .local v0, "height":F
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v0

    .line 441
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 443
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 444
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 446
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v0

    .line 447
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public setBackGroundInvisible()V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 454
    return-void
.end method

.method public setBackGroundVisible()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 458
    return-void
.end method

.method public setDisable(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDisable:Z

    .line 289
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDisable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLImage;->setDraggable(Z)V

    .line 290
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "drag"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDraggable:Z

    .line 300
    return-void
.end method

.method public setGrowable(Z)V
    .locals 0
    .param p1, "grow"    # Z

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mGrowBoundry:Z

    .line 316
    return-void
.end method

.method public setHandlerAreaBottomBoundary(I)V
    .locals 0
    .param p1, "bottom_boundary"    # I

    .prologue
    .line 461
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_bottom_boundary:I

    .line 462
    return-void
.end method

.method public setHandlerAreaTopBoundary(I)V
    .locals 0
    .param p1, "top_boundary"    # I

    .prologue
    .line 465
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_top_boundary:I

    .line 466
    return-void
.end method

.method public setMaxBound()V
    .locals 5

    .prologue
    .line 469
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v1, :cond_0

    .line 484
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getDualHandlerOffset()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mWidthOffsetForhandle:I

    .line 473
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    .line 474
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mWidthOffsetForhandle:I

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_left_boundary:I

    .line 479
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sget v2, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLER_AREA_PADDING:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_right_boundary:I

    .line 482
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_top_boundary:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 483
    .local v0, "boundRecf":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    goto :goto_0

    .line 476
    .end local v0    # "boundRecf":Landroid/graphics/RectF;
    :cond_1
    sget v1, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLER_AREA_PADDING:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mWidthOffsetForhandle:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandler_area_left_boundary:I

    goto :goto_1
.end method

.method public setMaxBoundRectF(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "bound"    # Landroid/graphics/RectF;

    .prologue
    .line 487
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRect:Landroid/graphics/RectF;

    .line 488
    return-void
.end method

.method public setMaxSizeF(FF)V
    .locals 4
    .param p1, "in_width"    # F
    .param p2, "in_height"    # F

    .prologue
    const/4 v3, 0x0

    .line 491
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    .line 493
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 494
    .local v1, "width":F
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 496
    .local v0, "height":F
    iget-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mIsAspectRatioLocked:Z

    if-eqz v2, :cond_0

    .line 497
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v0

    .line 498
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMaxRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 500
    :cond_0
    return-void
.end method

.method public setMinSizeF(FF)V
    .locals 4
    .param p1, "in_width"    # F
    .param p2, "in_height"    # F

    .prologue
    const/4 v3, 0x0

    .line 503
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    .line 505
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 506
    .local v1, "width":F
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 508
    .local v0, "height":F
    iget-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mIsAspectRatioLocked:Z

    if-eqz v2, :cond_0

    .line 509
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mAspectRatio:F

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/Util;->floatDivide(FF)F

    move-result v0

    .line 510
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mMinRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 514
    :cond_0
    return-void
.end method

.method public setPosition(FFFF)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 522
    new-instance v1, Landroid/graphics/RectF;

    add-float v2, p1, p3

    add-float v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    .line 524
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, p3, p4}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 525
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBackGround:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    div-float/2addr v2, v6

    add-float/2addr v2, v7

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    div-float/2addr v3, v6

    add-float/2addr v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 527
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    add-float/2addr v1, p3

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    add-float/2addr v2, p4

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setSize(FF)V

    .line 528
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    div-float/2addr v1, v6

    sub-float v1, p1, v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    div-float/2addr v2, v6

    sub-float v2, p2, v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->moveLayoutAbsolute(FF)V

    .line 530
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    sget v2, Lcom/sec/android/app/camera/widget/gl/RectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/widget/gl/RectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/RectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, p3, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/RectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, p4, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    .line 532
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mOuterBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    div-float/2addr v2, v6

    add-float/2addr v2, v7

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    div-float/2addr v3, v6

    add-float/2addr v3, v7

    invoke-virtual {v1, v2, v3, p3, p4}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    .line 533
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mInnerBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    sget v2, Lcom/sec/android/app/camera/widget/gl/RectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    sget v3, Lcom/sec/android/app/camera/widget/gl/RectHandler;->BOUND_RECT_THICKNESS:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/widget/gl/RectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    sget v4, Lcom/sec/android/app/camera/widget/gl/RectHandler;->BOUND_RECT_THICKNESS:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->HANDLE_SIZE:F

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/widget/gl/RectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    sget v5, Lcom/sec/android/app/camera/widget/gl/RectHandler;->BOUND_RECT_THICKNESS:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    sub-float v4, p3, v4

    sget v5, Lcom/sec/android/app/camera/widget/gl/RectHandler;->OUTER_BOUND_RECT_THICKNESS:I

    sget v6, Lcom/sec/android/app/camera/widget/gl/RectHandler;->BOUND_RECT_THICKNESS:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x2

    int-to-float v5, v5

    sub-float v5, p4, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    .line 537
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerType:I

    if-ge v0, v1, :cond_0

    .line 538
    packed-switch v0, :pswitch_data_0

    .line 537
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v7, v7}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    goto :goto_1

    .line 544
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, v7}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    goto :goto_1

    .line 547
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, p4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    goto :goto_1

    .line 550
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v7, p4}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    goto :goto_1

    .line 554
    :cond_0
    return-void

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setRectHandlerClickListener(Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectHandlerClickListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;

    .line 558
    return-void
.end method

.method public setSideLock(I)V
    .locals 1
    .param p1, "lock"    # I

    .prologue
    .line 336
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    .line 337
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mSideLock:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mIsAspectRatioLocked:Z

    if-nez v0, :cond_0

    .line 338
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setAspectRatioLocked(Z)V

    .line 339
    :cond_0
    return-void
.end method

.method public setonHandlerMoveListener(Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    .line 562
    return-void
.end method

.method public showBoundryRect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 565
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 566
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mOuterBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 567
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mInnerBoundRectImage:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 568
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerType:I

    if-ge v0, v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mResizeHandle:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 571
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mShowBoundry:Z

    .line 572
    return-void
.end method

.method public updateRectBeforeDragged()V
    .locals 2

    .prologue
    .line 575
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectBeforeDragged:Landroid/graphics/RectF;

    .line 576
    return-void
.end method
