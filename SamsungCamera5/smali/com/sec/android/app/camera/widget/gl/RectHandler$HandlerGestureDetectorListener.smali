.class public Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RectHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/gl/RectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerGestureDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/widget/gl/RectHandler;)V
    .locals 0

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    # getter for: Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->access$000(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    # getter for: Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDisable:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->access$100(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    # getter for: Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->access$000(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;->onLongPressed()V

    .line 1214
    :cond_0
    return-void
.end method
