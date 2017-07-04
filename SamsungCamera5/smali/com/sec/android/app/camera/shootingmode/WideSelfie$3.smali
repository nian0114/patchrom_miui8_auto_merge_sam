.class Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;
.super Ljava/lang/Object;
.source "WideSelfie.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/WideSelfie;->onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v1, 0x1

    .line 549
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setCaptureError(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1400(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)V

    .line 551
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopWideSelfie()V

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideStopButton()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1500(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    .line 554
    return v1
.end method
