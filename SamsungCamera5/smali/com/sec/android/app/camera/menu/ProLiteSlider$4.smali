.class Lcom/sec/android/app/camera/menu/ProLiteSlider$4;
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

.field final synthetic val$index:I

.field final synthetic val$indicatorExposureLiteValue:[I

.field final synthetic val$indicatorExposureValue:[I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;[II[I)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iput-object p2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->val$indicatorExposureValue:[I

    iput p3, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->val$index:I

    iput-object p4, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->val$indicatorExposureLiteValue:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const v3, 0x3dcccccd    # 0.1f

    .line 376
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSlider:Lcom/samsung/android/glview/GLSlider;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v1

    sget v0, Lcom/sec/android/app/camera/feature/Feature;->EXPOSURE_COMPENSATION_STEP:F

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->val$indicatorExposureValue:[I

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->val$index:I

    aget v0, v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

    if-eqz v0, :cond_0

    .line 379
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    sget v0, Lcom/sec/android/app/camera/feature/Feature;->EXPOSURE_COMPENSATION_STEP:F

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->val$indicatorExposureValue:[I

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->val$index:I

    aget v0, v0, v2

    :goto_1
    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->PROEXPOSURE_VALUE_OFFSET:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$200()I

    move-result v2

    sub-int/2addr v0, v2

    sget v2, Lcom/sec/android/app/camera/feature/Feature;->EXPOSURE_COMPENSATION_STEP:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/2addr v0, v2

    # setter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$102(Lcom/sec/android/app/camera/menu/ProLiteSlider;I)I

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$100(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;->onExposureValueMenuSelect(I)V

    .line 384
    :cond_0
    return v4

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->val$indicatorExposureLiteValue:[I

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->val$index:I

    aget v0, v0, v2

    goto :goto_0

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->val$indicatorExposureLiteValue:[I

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->val$index:I

    aget v0, v0, v2

    goto :goto_1
.end method
