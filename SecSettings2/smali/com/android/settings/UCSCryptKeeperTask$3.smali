.class Lcom/android/settings_ex/UCSCryptKeeperTask$3;
.super Ljava/lang/Object;
.source "UCSCryptKeeperTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/UCSCryptKeeperTask;->passwordEntryInitForUCS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/UCSCryptKeeperTask;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$3;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    iput-object p2, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    .line 659
    return-void
.end method
