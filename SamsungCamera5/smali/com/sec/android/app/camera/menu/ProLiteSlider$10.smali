.class Lcom/sec/android/app/camera/menu/ProLiteSlider$10;
.super Ljava/lang/Object;
.source "ProLiteSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLSlider$SliderChangeListener;


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
    .line 531
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$10;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepChanged(I)V
    .locals 1
    .param p1, "step"    # I

    .prologue
    .line 534
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$10;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->restartSliderMenuTimer()V

    .line 535
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$10;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # setter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValue:I
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$102(Lcom/sec/android/app/camera/menu/ProLiteSlider;I)I

    .line 536
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$10;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;->onWBValueMenuSelect(I)V

    .line 537
    return-void
.end method
