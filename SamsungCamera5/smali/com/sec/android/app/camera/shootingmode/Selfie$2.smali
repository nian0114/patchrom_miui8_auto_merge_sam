.class Lcom/sec/android/app/camera/shootingmode/Selfie$2;
.super Ljava/lang/Object;
.source "Selfie.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/Selfie;->onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Selfie;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 508
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$200(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    const/16 v1, 0x81

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(IZ)Lcom/sec/android/app/camera/interfaces/MenuBase;

    .line 509
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$300(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$400(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 511
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsActivatedSpotLightSlider:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$502(Lcom/sec/android/app/camera/shootingmode/Selfie;Z)Z

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$600(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    .line 514
    :cond_0
    return v2
.end method
