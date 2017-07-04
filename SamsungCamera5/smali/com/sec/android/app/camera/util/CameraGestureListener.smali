.class public Lcom/sec/android/app/camera/util/CameraGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CameraGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;,
        Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;
    }
.end annotation


# static fields
.field public static final SWIPE_DIRECTION_LEFT:I = 0x1

.field public static final SWIPE_DIRECTION_RIGHT:I = 0x0

.field public static final SWIPE_DIRECTION_UNKNOWN:I = -0x1

.field public static final SWIPE_THRESHOLD_DISTANCE:F

.field public static final SWIPE_THRESHOLD_VELOCITY:F

.field public static final SWIPE_THRESHOLD_VELOCITY_PORTRAIT:F


# instance fields
.field private mDoubleTapListener:Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;

.field private mFlingListenerLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f09024e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    .line 41
    const v0, 0x7f09024f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_VELOCITY:F

    .line 46
    const v0, 0x7f090250

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_VELOCITY_PORTRAIT:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mFlingListenerLists:Ljava/util/List;

    .line 68
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mFlingListenerLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mDoubleTapListener:Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mDoubleTapListener:Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;->onDoubleTap(FF)Z

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 86
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 141
    :cond_0
    return v3

    .line 90
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-gt v6, v7, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-gt v6, v7, :cond_0

    .line 99
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v0, v6, v7

    .line 100
    .local v0, "deltaX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float v1, v6, v7

    .line 102
    .local v1, "deltaY":F
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v5

    .line 103
    .local v5, "orientation":I
    const/4 v2, -0x1

    .line 105
    .local v2, "direction":I
    rem-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_4

    .line 106
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 111
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_VELOCITY:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 112
    sget v6, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v6, v0, v6

    if-lez v6, :cond_3

    .line 113
    const/4 v2, 0x0

    .line 132
    :cond_2
    :goto_0
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 133
    iget-object v6, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mFlingListenerLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 134
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;>;"
    const/4 v3, 0x0

    .line 135
    .local v3, "handled":Z
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 136
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;

    invoke-interface {v6, v2, v5}, Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;->onFlingDirection(II)Z

    move-result v6

    or-int/2addr v3, v6

    goto :goto_1

    .line 114
    .end local v3    # "handled":Z
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;>;"
    :cond_3
    sget v6, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    neg-float v6, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_2

    .line 115
    const/4 v2, 0x1

    goto :goto_0

    .line 119
    :cond_4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 123
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_VELOCITY_PORTRAIT:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 124
    sget v6, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v6, v1, v6

    if-lez v6, :cond_5

    .line 125
    const/4 v2, 0x1

    goto :goto_0

    .line 126
    :cond_5
    sget v6, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    neg-float v6, v6

    cmpg-float v6, v1, v6

    if-gez v6, :cond_2

    .line 127
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerFlingEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mFlingListenerLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public setDoubleTapEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mDoubleTapListener:Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;

    .line 150
    return-void
.end method

.method public unregisterFlingEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mFlingListenerLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method
