.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$11;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$11;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 673
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$11;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->clearToolBox()V
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$3100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    .line 674
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$11;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->prepareToolBoxLinear()V
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$3200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    .line 675
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$11;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z
    invoke-static {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$3302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z

    .line 676
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$11;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    .line 677
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$11;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$11;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$3400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 678
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$11;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$11;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$3400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 679
    return-void
.end method
