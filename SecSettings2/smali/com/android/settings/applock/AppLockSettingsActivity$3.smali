.class Lcom/android/settings_ex/applock/AppLockSettingsActivity$3;
.super Ljava/lang/Object;
.source "AppLockSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applock/AppLockSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applock/AppLockSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applock/AppLockSettingsActivity;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity$3;->this$0:Lcom/android/settings_ex/applock/AppLockSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 103
    # getter for: Lcom/android/settings_ex/applock/AppLockSettingsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCheckedChanged : isChecked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-eqz p2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity$3;->this$0:Lcom/android/settings_ex/applock/AppLockSettingsActivity;

    iget-object v2, v2, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/applock/AppLockUtil;->getLockType(Landroid/content/Context;)I

    move-result v0

    .line 106
    .local v0, "lockType":I
    if-nez v0, :cond_0

    .line 107
    iget-object v2, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity$3;->this$0:Lcom/android/settings_ex/applock/AppLockSettingsActivity;

    const/16 v3, 0x2711

    # invokes: Lcom/android/settings_ex/applock/AppLockSettingsActivity;->callLockType(I)V
    invoke-static {v2, v3}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->access$300(Lcom/android/settings_ex/applock/AppLockSettingsActivity;I)V

    .line 111
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity$3;->this$0:Lcom/android/settings_ex/applock/AppLockSettingsActivity;

    # getter for: Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mMasterText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->access$500(Lcom/android/settings_ex/applock/AppLockSettingsActivity;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0e11ec

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 116
    .end local v0    # "lockType":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity$3;->this$0:Lcom/android/settings_ex/applock/AppLockSettingsActivity;

    iget-object v2, v2, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 117
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity$3;->this$0:Lcom/android/settings_ex/applock/AppLockSettingsActivity;

    iget-object v2, v2, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    return-void

    .line 109
    .end local v1    # "msg":Landroid/os/Message;
    .restart local v0    # "lockType":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity$3;->this$0:Lcom/android/settings_ex/applock/AppLockSettingsActivity;

    # getter for: Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mPackageInfoUtil:Lcom/android/settings_ex/applock/PackageInfoUtil;
    invoke-static {v2}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->access$400(Lcom/android/settings_ex/applock/AppLockSettingsActivity;)Lcom/android/settings_ex/applock/PackageInfoUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity$3;->this$0:Lcom/android/settings_ex/applock/AppLockSettingsActivity;

    iget-object v3, v3, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/applock/PackageInfoUtil;->setMasterValue(Landroid/content/Context;Z)V

    goto :goto_0

    .line 113
    .end local v0    # "lockType":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity$3;->this$0:Lcom/android/settings_ex/applock/AppLockSettingsActivity;

    # getter for: Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mPackageInfoUtil:Lcom/android/settings_ex/applock/PackageInfoUtil;
    invoke-static {v2}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->access$400(Lcom/android/settings_ex/applock/AppLockSettingsActivity;)Lcom/android/settings_ex/applock/PackageInfoUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity$3;->this$0:Lcom/android/settings_ex/applock/AppLockSettingsActivity;

    iget-object v3, v3, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/applock/PackageInfoUtil;->setMasterValue(Landroid/content/Context;Z)V

    .line 114
    iget-object v2, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity$3;->this$0:Lcom/android/settings_ex/applock/AppLockSettingsActivity;

    # getter for: Lcom/android/settings_ex/applock/AppLockSettingsActivity;->mMasterText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings_ex/applock/AppLockSettingsActivity;->access$500(Lcom/android/settings_ex/applock/AppLockSettingsActivity;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0e11ed

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
