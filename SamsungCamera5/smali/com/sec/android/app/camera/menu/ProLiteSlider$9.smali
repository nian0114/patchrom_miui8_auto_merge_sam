.class Lcom/sec/android/app/camera/menu/ProLiteSlider$9;
.super Ljava/lang/Object;
.source "ProLiteSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$KeyListener;


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

.field final synthetic val$index:I

.field final synthetic val$indicatorISOLiteValue:[I

.field final synthetic val$indicatorISOValue:[I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;[II[I)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$9;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iput-object p2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$9;->val$indicatorISOLiteValue:[I

    iput p3, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$9;->val$index:I

    iput-object p4, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$9;->val$indicatorISOValue:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 495
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_3

    .line 496
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$9;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v1

    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_MAX_ISO:Ljava/lang/String;

    const-string v2, "400"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$9;->val$indicatorISOLiteValue:[I

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$9;->val$index:I

    aget v0, v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 497
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$9;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$9;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_MAX_ISO:Ljava/lang/String;

    const-string v2, "400"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$9;->val$indicatorISOLiteValue:[I

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$9;->val$index:I

    aget v0, v0, v2

    :goto_1
    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;->onISOValueMenuSelect(I)V

    .line 500
    :cond_0
    const/4 v0, 0x1

    .line 502
    :goto_2
    return v0

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$9;->val$indicatorISOValue:[I

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$9;->val$index:I

    aget v0, v0, v2

    goto :goto_0

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$9;->val$indicatorISOValue:[I

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$9;->val$index:I

    aget v0, v0, v2

    goto :goto_1

    .line 502
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 508
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 509
    const/4 v0, 0x1

    .line 511
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
