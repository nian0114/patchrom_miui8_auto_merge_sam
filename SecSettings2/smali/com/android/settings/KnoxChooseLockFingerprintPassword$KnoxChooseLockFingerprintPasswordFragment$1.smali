.class Lcom/android/settings_ex/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$1;
.super Landroid/os/Handler;
.source "KnoxChooseLockFingerprintPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/settings_ex/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$1;->this$0:Lcom/android/settings_ex/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 354
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/android/settings_ex/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$1;->this$0:Lcom/android/settings_ex/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_ex/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->updateStage(Lcom/android/settings_ex/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$Stage;)V

    .line 357
    :cond_0
    return-void
.end method
