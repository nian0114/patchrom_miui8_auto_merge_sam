.class Lcom/android/settings_ex/GigaMultiPath$3;
.super Ljava/lang/Object;
.source "GigaMultiPath.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/GigaMultiPath;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/GigaMultiPath;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/GigaMultiPath;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/settings_ex/GigaMultiPath$3;->this$0:Lcom/android/settings_ex/GigaMultiPath;

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

    .line 255
    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$3;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # getter for: Lcom/android/settings_ex/GigaMultiPath;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/GigaMultiPath;->access$000(Lcom/android/settings_ex/GigaMultiPath;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_bonding"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$3;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    invoke-virtual {v0}, Lcom/android/settings_ex/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$3;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    invoke-virtual {v0}, Lcom/android/settings_ex/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$3;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/GigaMultiPath;->onSwitchChanged(Landroid/widget/Switch;Z)V

    .line 263
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$3;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # getter for: Lcom/android/settings_ex/GigaMultiPath;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings_ex/GigaMultiPath;->access$300(Lcom/android/settings_ex/GigaMultiPath;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 261
    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$3;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    iget-object v1, p0, Lcom/android/settings_ex/GigaMultiPath$3;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # getter for: Lcom/android/settings_ex/GigaMultiPath;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings_ex/GigaMultiPath;->access$300(Lcom/android/settings_ex/GigaMultiPath;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v1

    # invokes: Lcom/android/settings_ex/GigaMultiPath;->sendMptcpStartBroadCast(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/GigaMultiPath;->access$700(Lcom/android/settings_ex/GigaMultiPath;Z)V

    .line 262
    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$3;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    invoke-virtual {v0}, Lcom/android/settings_ex/GigaMultiPath;->showProgressDialog()V

    goto :goto_0
.end method
