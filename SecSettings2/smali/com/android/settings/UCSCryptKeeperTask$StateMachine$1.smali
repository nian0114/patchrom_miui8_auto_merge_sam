.class Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine$1;
.super Ljava/lang/Object;
.source "UCSCryptKeeperTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->next()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine$1;->this$1:Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 379
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine$1;->this$1:Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;

    iget-object v1, v1, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$500(Lcom/android/settings_ex/UCSCryptKeeperTask;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine$1;->this$1:Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;

    iget-object v2, v2, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$500(Lcom/android/settings_ex/UCSCryptKeeperTask;)Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 380
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine$1;->this$1:Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;

    iget-object v1, v1, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$400(Lcom/android/settings_ex/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 381
    return-void
.end method
