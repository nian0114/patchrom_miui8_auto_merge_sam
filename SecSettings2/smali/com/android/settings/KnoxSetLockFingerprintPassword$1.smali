.class Lcom/android/settings_ex/KnoxSetLockFingerprintPassword$1;
.super Ljava/lang/Object;
.source "KnoxSetLockFingerprintPassword.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword$1;->this$0:Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword$1;->this$0:Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;

    # getter for: Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z
    invoke-static {v0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->access$000(Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword$1;->this$0:Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;

    # getter for: Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->access$100(Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e14c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword$1;->this$0:Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;

    # getter for: Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->access$200(Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 219
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
