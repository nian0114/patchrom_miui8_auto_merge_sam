.class Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$2;
.super Ljava/lang/Object;
.source "WritingBuddyImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$2;->this$1:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$2;->this$1:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    const/4 v1, 0x0

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z
    invoke-static {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$200(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z

    return-void
.end method
