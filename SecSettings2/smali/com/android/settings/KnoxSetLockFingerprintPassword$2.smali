.class Lcom/android/settings/KnoxSetLockFingerprintPassword$2;
.super Ljava/lang/Object;
.source "KnoxSetLockFingerprintPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KnoxSetLockFingerprintPassword;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KnoxSetLockFingerprintPassword;


# direct methods
.method constructor <init>(Lcom/android/settings/KnoxSetLockFingerprintPassword;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/settings/KnoxSetLockFingerprintPassword$2;->this$0:Lcom/android/settings/KnoxSetLockFingerprintPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/settings/KnoxSetLockFingerprintPassword$2;->this$0:Lcom/android/settings/KnoxSetLockFingerprintPassword;

    iget-object v2, p0, Lcom/android/settings/KnoxSetLockFingerprintPassword$2;->this$0:Lcom/android/settings/KnoxSetLockFingerprintPassword;

    # getter for: Lcom/android/settings/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/KnoxSetLockFingerprintPassword;->access$300(Lcom/android/settings/KnoxSetLockFingerprintPassword;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/settings/KnoxSetLockFingerprintPassword;->validatePassword(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/KnoxSetLockFingerprintPassword;->access$400(Lcom/android/settings/KnoxSetLockFingerprintPassword;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "errMsg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/settings/KnoxSetLockFingerprintPassword$2;->this$0:Lcom/android/settings/KnoxSetLockFingerprintPassword;

    # getter for: Lcom/android/settings/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/KnoxSetLockFingerprintPassword;->access$100(Lcom/android/settings/KnoxSetLockFingerprintPassword;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0e14c2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/android/settings/KnoxSetLockFingerprintPassword$2;->this$0:Lcom/android/settings/KnoxSetLockFingerprintPassword;

    # invokes: Lcom/android/settings/KnoxSetLockFingerprintPassword;->setNextEnabled()V
    invoke-static {v1}, Lcom/android/settings/KnoxSetLockFingerprintPassword;->access$500(Lcom/android/settings/KnoxSetLockFingerprintPassword;)V

    .line 234
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 240
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 246
    return-void
.end method
