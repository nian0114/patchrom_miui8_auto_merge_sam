.class Lcom/sec/android/app/camera/engine/CommonEngine$20$1$1;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/camera/engine/CommonEngine$20$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine$20$1;)V
    .locals 0

    .prologue
    .line 7499
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1$1;->this$2:Lcom/sec/android/app/camera/engine/CommonEngine$20$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 7502
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1$1;->this$2:Lcom/sec/android/app/camera/engine/CommonEngine$20$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$20;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine$20;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f080176

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7503
    return-void
.end method
