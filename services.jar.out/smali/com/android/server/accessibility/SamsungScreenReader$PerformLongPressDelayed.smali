.class final Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;
.super Ljava/lang/Object;
.source "SamsungScreenReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungScreenReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PerformLongPressDelayed"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungScreenReader;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungScreenReader;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/SamsungScreenReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/SamsungScreenReader;

    # getter for: Lcom/android/server/accessibility/SamsungScreenReader;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungScreenReader;->access$200(Lcom/android/server/accessibility/SamsungScreenReader;)Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;->cancel()V

    return-void
.end method

.method private performLongPress()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/SamsungScreenReader;

    # getter for: Lcom/android/server/accessibility/SamsungScreenReader;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungScreenReader;->access$100(Lcom/android/server/accessibility/SamsungScreenReader;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/SamsungScreenReader;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/accessibility/SamsungScreenReader;->isLongPressPerformed:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungScreenReader;->access$002(Lcom/android/server/accessibility/SamsungScreenReader;Z)Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public post(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/SamsungScreenReader;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/accessibility/SamsungScreenReader;->isLongPressPerformed:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungScreenReader;->access$002(Lcom/android/server/accessibility/SamsungScreenReader;Z)Z

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;->clear()V

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;->performLongPress()V

    return-void
.end method
