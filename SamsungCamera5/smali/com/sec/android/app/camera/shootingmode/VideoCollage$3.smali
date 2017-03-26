.class Lcom/sec/android/app/camera/shootingmode/VideoCollage$3;
.super Ljava/lang/Object;
.source "VideoCollage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCameraAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0

    .prologue
    .line 3315
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3318
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCamera()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$3300(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    .line 3319
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->handleSwitchCameraCompleted()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$3400(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    .line 3320
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchingCameraThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->access$3502(Lcom/sec/android/app/camera/shootingmode/VideoCollage;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 3321
    return-void
.end method
