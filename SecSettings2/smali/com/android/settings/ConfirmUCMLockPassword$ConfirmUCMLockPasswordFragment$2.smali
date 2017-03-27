.class Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$2;
.super Ljava/lang/Object;
.source "ConfirmUCMLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$2;->this$0:Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$2;->this$0:Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    # invokes: Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->shouldAutoShowSoftKeyboard()Z
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->access$500(Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$2;->this$0:Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    # invokes: Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->resetState()V
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->access$400(Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    .line 469
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$2;->this$0:Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    # getter for: Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->access$700(Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$2;->this$0:Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    # getter for: Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->access$600(Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
