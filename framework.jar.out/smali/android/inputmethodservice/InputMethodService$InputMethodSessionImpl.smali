.class public Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;
.super Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputMethodSessionImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;-><init>(Landroid/inputmethodservice/AbstractInputMethodService;)V

    return-void
.end method


# virtual methods
.method public appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 786
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 790
    :goto_0
    return-void

    .line 789
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 722
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 727
    :goto_0
    return-void

    .line 725
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object p1, v0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 726
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_0
.end method

.method public finishInput()V
    .locals 1

    .prologue
    .line 710
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    :goto_0
    return-void

    .line 714
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    goto :goto_0
.end method

.method public showSideSyncSoftInput(I)V
    .locals 1
    .param p1, "showFlags"    # I

    .prologue
    .line 814
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    # invokes: Landroid/inputmethodservice/InputMethodService;->onShowSideSyncSoftInput(I)V
    invoke-static {v0, p1}, Landroid/inputmethodservice/InputMethodService;->access$500(Landroid/inputmethodservice/InputMethodService;I)V

    .line 815
    return-void
.end method

.method public toggleSoftInput(II)V
    .locals 1
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    .prologue
    .line 796
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    # invokes: Landroid/inputmethodservice/InputMethodService;->onToggleSoftInput(II)V
    invoke-static {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->access$400(Landroid/inputmethodservice/InputMethodService;II)V

    .line 797
    return-void
.end method

.method public updateCursor(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "newCursor"    # Landroid/graphics/Rect;

    .prologue
    .line 775
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    :goto_0
    return-void

    .line 778
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onUpdateCursor(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .prologue
    .line 804
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onUpdateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    goto :goto_0
.end method

.method public updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 734
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    :goto_0
    return-void

    .line 737
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    goto :goto_0
.end method

.method public updateSelection(IIIIII)V
    .locals 7
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    .line 747
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 752
    :goto_0
    return-void

    .line 750
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    goto :goto_0
.end method

.method public viewClicked(Z)V
    .locals 3
    .param p1, "focusChanged"    # Z

    .prologue
    .line 756
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 768
    :goto_0
    return-void

    .line 760
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v0, v0, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->undoMinimizeSoftInput()V

    .line 762
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 763
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    .line 764
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v1, v1, Landroid/inputmethodservice/InputMethodService;->minimized:Z

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/SoftInputWindow;->setMinimizeFlag(Z)V

    .line 767
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onViewClicked(Z)V

    goto :goto_0
.end method
