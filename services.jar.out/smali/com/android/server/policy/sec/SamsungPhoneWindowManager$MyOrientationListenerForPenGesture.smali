.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;
.super Lcom/android/server/policy/WindowOrientationListener;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationListenerForPenGesture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2924
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .line 2925
    iget-object v0, p1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p2, v0}, Lcom/android/server/policy/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 2926
    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 2930
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProposedRotationChanged for pen gesture, rotation changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    # invokes: Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateWacomOffset(I)V
    invoke-static {v0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->access$300(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V

    .line 2935
    return-void
.end method
