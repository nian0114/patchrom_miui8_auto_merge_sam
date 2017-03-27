.class Lcom/android/settings_ex/GigaLteSettings$14;
.super Ljava/lang/Object;
.source "GigaLteSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/GigaLteSettings;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/GigaLteSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/GigaLteSettings;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/settings_ex/GigaLteSettings$14;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 421
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$14;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    # getter for: Lcom/android/settings_ex/GigaLteSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/GigaLteSettings;->access$000(Lcom/android/settings_ex/GigaLteSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_bonding"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 422
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$14;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$14;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$14;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/GigaLteSettings;->onSwitchChanged(Landroid/widget/Switch;Z)V

    .line 429
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$14;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    # getter for: Lcom/android/settings_ex/GigaLteSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings_ex/GigaLteSettings;->access$300(Lcom/android/settings_ex/GigaLteSettings;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 427
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$14;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    iget-object v1, p0, Lcom/android/settings_ex/GigaLteSettings$14;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    # getter for: Lcom/android/settings_ex/GigaLteSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings_ex/GigaLteSettings;->access$300(Lcom/android/settings_ex/GigaLteSettings;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v1

    # invokes: Lcom/android/settings_ex/GigaLteSettings;->sendMptcpStartBroadCast(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/GigaLteSettings;->access$700(Lcom/android/settings_ex/GigaLteSettings;Z)V

    .line 428
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$14;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/GigaLteSettings;->showProgressDialog()V

    goto :goto_0
.end method
