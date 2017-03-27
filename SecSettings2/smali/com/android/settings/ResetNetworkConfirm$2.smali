.class Lcom/android/settings_ex/ResetNetworkConfirm$2;
.super Ljava/lang/Object;
.source "ResetNetworkConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ResetNetworkConfirm;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$2;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$2;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->isATTReset:Z
    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$600(Lcom/android/settings_ex/ResetNetworkConfirm;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$2;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-virtual {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "phone_password":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$2;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-virtual {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$2;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$700(Lcom/android/settings_ex/ResetNetworkConfirm;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$2;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # invokes: Lcom/android/settings_ex/ResetNetworkConfirm;->StartPassword()V
    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$800(Lcom/android/settings_ex/ResetNetworkConfirm;)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$2;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # invokes: Lcom/android/settings_ex/ResetNetworkConfirm;->resetNetwork()V
    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$900(Lcom/android/settings_ex/ResetNetworkConfirm;)V

    goto :goto_0

    .line 166
    .end local v0    # "phone_password":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$2;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # invokes: Lcom/android/settings_ex/ResetNetworkConfirm;->resetNetwork()V
    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$900(Lcom/android/settings_ex/ResetNetworkConfirm;)V

    goto :goto_0
.end method
