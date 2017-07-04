.class Lcom/sec/android/app/camera/menu/OverlayHelp$4;
.super Ljava/lang/Object;
.source "OverlayHelp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/OverlayHelp;->showHRMSensorCaptureGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$4;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$4;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$000(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$4;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$200(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$4;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$000(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$4;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$000(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :cond_0
    return-void
.end method
