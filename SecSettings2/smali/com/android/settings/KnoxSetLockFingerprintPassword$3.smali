.class Lcom/android/settings_ex/KnoxSetLockFingerprintPassword$3;
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
    .line 250
    iput-object p1, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword$3;->this$0:Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword$3;->this$0:Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;

    # getter for: Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z
    invoke-static {v0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->access$000(Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword$3;->this$0:Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;

    # invokes: Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->handleNext()V
    invoke-static {v0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->access$600(Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;)V

    .line 258
    const/4 v0, 0x1

    .line 261
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
