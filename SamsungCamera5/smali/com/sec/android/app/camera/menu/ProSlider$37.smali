.class Lcom/sec/android/app/camera/menu/ProSlider$37;
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

.field final synthetic val$index:I

.field final synthetic val$indicatorShutterValue:[I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/ProSlider;I[I)V
    .locals 0

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider$37;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    iput p2, p0, Lcom/sec/android/app/camera/menu/ProSlider$37;->val$index:I

    iput-object p3, p0, Lcom/sec/android/app/camera/menu/ProSlider$37;->val$indicatorShutterValue:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 1348
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$37;->val$index:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 1349
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$37;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->restartSliderMenuTimer()V

    .line 1350
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$37;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->access$900(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$37;->val$indicatorShutterValue:[I

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider$37;->val$index:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setCurrentStep(I)Z

    .line 1351
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$37;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$37;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$37;->val$indicatorShutterValue:[I

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProSlider$37;->val$index:I

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;->onRecordingShutterSpeedValueMenuSelect(I)V

    .line 1357
    :cond_0
    :goto_0
    return v3

    .line 1355
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$37;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->stopSliderMenuTimer()V

    goto :goto_0
.end method
