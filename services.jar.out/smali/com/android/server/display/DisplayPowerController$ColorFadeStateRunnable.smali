.class public Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorFadeStateRunnable"
.end annotation


# instance fields
.field private mExit:Z

.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 1

    .prologue
    .line 3380
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;->mExit:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3383
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;->mExit:Z

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onColorFadeExit(Z)V

    .line 3384
    return-void
.end method

.method public setState(Z)V
    .locals 1
    .param p1, "exit"    # Z

    .prologue
    .line 3386
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;->mExit:Z

    if-eq p1, v0, :cond_0

    .line 3387
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;->mExit:Z

    .line 3388
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;->run()V

    .line 3390
    :cond_0
    return-void
.end method
