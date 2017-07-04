.class final Lcom/android/server/am/MultiWindowPolicy$TaskController;
.super Ljava/lang/Object;
.source "MultiWindowPolicy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TaskController"
.end annotation


# instance fields
.field stringName:Ljava/lang/String;

.field public final taskController:Lcom/samsung/android/multiwindow/ITaskController;

.field final synthetic this$0:Lcom/android/server/am/MultiWindowPolicy;

.field public final type:I


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowPolicy;Lcom/samsung/android/multiwindow/ITaskController;)V
    .locals 1
    .param p2, "_taskController"    # Lcom/samsung/android/multiwindow/ITaskController;

    .prologue
    .line 2537
    iput-object p1, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2538
    iput-object p2, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    .line 2539
    sget v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->TASK_CONTROLLER_TYPE_RUNNING:I

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->type:I

    .line 2540
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/MultiWindowPolicy;Lcom/samsung/android/multiwindow/ITaskController;I)V
    .locals 0
    .param p2, "_taskController"    # Lcom/samsung/android/multiwindow/ITaskController;
    .param p3, "_type"    # I

    .prologue
    .line 2542
    iput-object p1, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2543
    iput-object p2, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    .line 2544
    iput p3, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->type:I

    .line 2545
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 2548
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    .line 2549
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2552
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2553
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->stringName:Ljava/lang/String;

    .line 2561
    :goto_0
    return-object v1

    .line 2555
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2556
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "TaskController{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2557
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2558
    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2559
    iget v1, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2560
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2561
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->stringName:Ljava/lang/String;

    goto :goto_0
.end method
