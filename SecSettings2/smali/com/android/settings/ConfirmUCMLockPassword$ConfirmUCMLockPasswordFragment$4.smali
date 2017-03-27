.class Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$4;
.super Ljava/lang/Object;
.source "ConfirmUCMLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;
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
    .line 674
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$4;->this$0:Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$4;->this$0:Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    # getter for: Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->access$1100(Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$4;->this$0:Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    # invokes: Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getDefaultHeader()I
    invoke-static {v1}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->access$1000(Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 681
    return-void
.end method
