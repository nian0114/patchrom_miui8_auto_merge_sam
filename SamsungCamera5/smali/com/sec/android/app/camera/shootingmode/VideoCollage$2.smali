.class Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;
.super Ljava/lang/Object;
.source "VideoCollage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/VideoCollage;->handleSwitchCameraCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

.field final synthetic val$pInstance:Lcom/sec/android/app/camera/shootingmode/VideoCollage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage;Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0

    .prologue
    .line 1763
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->val$pInstance:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x12

    .line 1766
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    # getter for: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$1400(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->removeMenu(I)V

    .line 1768
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    # getter for: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$1400(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    # setter for: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$1502(Lcom/sec/android/app/camera/shootingmode/VideoCollage;Lcom/sec/android/app/camera/menu/ZoomSliderMenu;)Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .line 1769
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    # getter for: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$1500(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->val$pInstance:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 1770
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    # getter for: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$1500(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;->val$pInstance:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 1772
    :cond_0
    return-void
.end method
