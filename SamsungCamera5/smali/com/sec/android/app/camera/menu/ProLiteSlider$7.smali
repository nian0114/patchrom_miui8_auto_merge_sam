.class Lcom/sec/android/app/camera/menu/ProLiteSlider$7;
.super Ljava/lang/Object;
.source "ProLiteSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/ProLiteSlider;->initProSlider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$7;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

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

    .line 444
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 445
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$7;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLSlider;->getCurrentStep()I

    move-result v0

    .line 446
    .local v0, "step":I
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$7;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mIsISOAutoDimmed:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$300(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 447
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$7;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 448
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$7;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;
    invoke-static {v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLSlider;->setMarkerPressed(Z)V

    .line 449
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$7;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;->onISOValueMenuSelect(I)V

    .line 453
    .end local v0    # "step":I
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method
