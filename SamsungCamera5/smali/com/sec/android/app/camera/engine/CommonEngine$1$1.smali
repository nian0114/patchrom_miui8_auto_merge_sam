.class Lcom/sec/android/app/camera/engine/CommonEngine$1$1;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/engine/CommonEngine$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/engine/CommonEngine$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine$1;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 399
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendOrientaionInfotoHAL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$1;

    iget-object v2, v2, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mLastOrientation:I
    invoke-static {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$600(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$700(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$700(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$1;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mLastOrientation:I
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$600(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->sendOrientaionInfotoHAL(I)V

    .line 403
    :cond_0
    return-void
.end method
