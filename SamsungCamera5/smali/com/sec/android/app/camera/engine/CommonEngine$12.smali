.class Lcom/sec/android/app/camera/engine/CommonEngine$12;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;->startEngineAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0

    .prologue
    .line 6455
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$12;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6458
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$12;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->openCameraDevice()V
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1400(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 6459
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$12;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6460
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$12;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 6464
    :goto_0
    return-void

    .line 6462
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$12;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->changeEngineState(I)V

    goto :goto_0
.end method
