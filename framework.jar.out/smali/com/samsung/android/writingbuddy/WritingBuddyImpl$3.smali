.class Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;
.super Ljava/lang/Object;
.source "WritingBuddyImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->createPopupCue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Lcom/samsung/android/writingbuddy/PopupCue;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Lcom/samsung/android/writingbuddy/PopupCue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Lcom/samsung/android/writingbuddy/PopupCue;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/writingbuddy/PopupCue;->switchCueButton(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v6}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$100(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z
    invoke-static {v2, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$200(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # setter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsWaitingHideSoftInput:Z
    invoke-static {v2, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$302(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$1;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;)V

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    :goto_0
    return v6

    .restart local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    const-string v2, "WritingBuddyImpl"

    const-string v3, "Can not find IMM"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->showWritingBuddy()Z
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$400(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Z

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3$2;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;)V

    const-wide/16 v4, 0x1c2

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    if-ne v0, v4, :cond_2

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I
    invoke-static {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$500(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # invokes: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z
    invoke-static {v2, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$200(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z

    goto :goto_0
.end method
