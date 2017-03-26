.class Lcom/sec/android/app/camera/menu/ProSlider$16;
.super Ljava/lang/Object;
.source "ProSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/ProSlider;->initProSlider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ProSlider;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/ProSlider;)V
    .locals 0

    .prologue
    .line 830
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider$16;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 833
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 834
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProSlider$16;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderLoggingListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ProSlider$16;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I
    invoke-static {v4}, Lcom/sec/android/app/camera/menu/ProSlider;->access$100(Lcom/sec/android/app/camera/menu/ProSlider;)I

    move-result v4

    invoke-interface {v3, v4, v2}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;->onProSliderLoggingEvent(II)V

    .line 835
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProSlider$16;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/ProSlider;->restartSliderMenuTimer()V

    .line 836
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProSlider$16;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ProSlider;->access$000(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLSlider;->getCurrentStep()I

    move-result v0

    .line 837
    .local v0, "step":I
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProSlider$16;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mIsISOAutoDimmed:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1000(Lcom/sec/android/app/camera/menu/ProSlider;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 838
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProSlider$16;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ProSlider;->access$000(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 839
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProSlider$16;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ProSlider;->access$000(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLSlider;->setMarkerPressed(Z)V

    .line 840
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider$16;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;->onISOValueMenuSelect(I)V

    .line 846
    .end local v0    # "step":I
    :goto_0
    return v1

    .line 844
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$16;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->stopSliderMenuTimer()V

    :cond_2
    move v1, v2

    .line 846
    goto :goto_0
.end method
