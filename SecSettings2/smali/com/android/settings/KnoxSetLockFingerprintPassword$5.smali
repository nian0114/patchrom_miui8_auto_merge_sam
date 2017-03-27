.class Lcom/android/settings/KnoxSetLockFingerprintPassword$5;
.super Ljava/lang/Object;
.source "KnoxSetLockFingerprintPassword.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 275
    iput-object p1, p0, Lcom/android/settings/KnoxSetLockFingerprintPassword$5;->this$0:Lcom/android/settings/KnoxSetLockFingerprintPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 279
    iget-object v1, p0, Lcom/android/settings/KnoxSetLockFingerprintPassword$5;->this$0:Lcom/android/settings/KnoxSetLockFingerprintPassword;

    # getter for: Lcom/android/settings/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/KnoxSetLockFingerprintPassword;->access$300(Lcom/android/settings/KnoxSetLockFingerprintPassword;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/settings/KnoxSetLockFingerprintPassword$5;->this$0:Lcom/android/settings/KnoxSetLockFingerprintPassword;

    iget-object v2, p0, Lcom/android/settings/KnoxSetLockFingerprintPassword$5;->this$0:Lcom/android/settings/KnoxSetLockFingerprintPassword;

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

    .line 281
    .local v0, "errMsg":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 282
    iget-object v1, p0, Lcom/android/settings/KnoxSetLockFingerprintPassword$5;->this$0:Lcom/android/settings/KnoxSetLockFingerprintPassword;

    # getter for: Lcom/android/settings/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/KnoxSetLockFingerprintPassword;->access$100(Lcom/android/settings/KnoxSetLockFingerprintPassword;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v1, p0, Lcom/android/settings/KnoxSetLockFingerprintPassword$5;->this$0:Lcom/android/settings/KnoxSetLockFingerprintPassword;

    # setter for: Lcom/android/settings/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z
    invoke-static {v1, v3}, Lcom/android/settings/KnoxSetLockFingerprintPassword;->access$002(Lcom/android/settings/KnoxSetLockFingerprintPassword;Z)Z

    .line 290
    .end local v0    # "errMsg":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 285
    .restart local v0    # "errMsg":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/KnoxSetLockFingerprintPassword$5;->this$0:Lcom/android/settings/KnoxSetLockFingerprintPassword;

    # getter for: Lcom/android/settings/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/KnoxSetLockFingerprintPassword;->access$100(Lcom/android/settings/KnoxSetLockFingerprintPassword;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v1, p0, Lcom/android/settings/KnoxSetLockFingerprintPassword$5;->this$0:Lcom/android/settings/KnoxSetLockFingerprintPassword;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z
    invoke-static {v1, v2}, Lcom/android/settings/KnoxSetLockFingerprintPassword;->access$002(Lcom/android/settings/KnoxSetLockFingerprintPassword;Z)Z

    goto :goto_0
.end method
