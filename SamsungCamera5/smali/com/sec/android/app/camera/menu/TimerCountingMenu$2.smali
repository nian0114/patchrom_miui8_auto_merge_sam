.class Lcom/sec/android/app/camera/menu/TimerCountingMenu$2;
.super Ljava/lang/Object;
.source "TimerCountingMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateProgressWheelTime(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/TimerCountingMenu;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$2;->this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 347
    const-string v0, "TimerCountingMenu"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$2;->this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    # setter for: Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressDegree:I
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->access$102(Lcom/sec/android/app/camera/menu/TimerCountingMenu;I)I

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$2;->this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->hideMenu()V

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$2;->this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->progressWheelTimerCompleted()V

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$2;->this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    # getter for: Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->access$300(Lcom/sec/android/app/camera/menu/TimerCountingMenu;)Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setProgress(I)V

    .line 352
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 356
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 360
    return-void
.end method
