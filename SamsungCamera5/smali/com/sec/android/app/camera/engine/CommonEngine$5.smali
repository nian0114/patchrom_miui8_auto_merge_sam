.class Lcom/sec/android/app/camera/engine/CommonEngine$5;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;->stopDualCamera()V
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
    .line 4554
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$5;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4557
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$5;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->openCameraDevice()V
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1400(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 4558
    return-void
.end method
