.class Lcom/android/settings_ex/GigaMultiPath$2;
.super Landroid/database/ContentObserver;
.source "GigaMultiPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/GigaMultiPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/GigaMultiPath;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/GigaMultiPath;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings_ex/GigaMultiPath$2;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$2;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # getter for: Lcom/android/settings_ex/GigaMultiPath;->isNetworkEnabling:Z
    invoke-static {v0}, Lcom/android/settings_ex/GigaMultiPath;->access$400(Lcom/android/settings_ex/GigaMultiPath;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$2;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # getter for: Lcom/android/settings_ex/GigaMultiPath;->isMobileDataEnabling:Z
    invoke-static {v0}, Lcom/android/settings_ex/GigaMultiPath;->access$500(Lcom/android/settings_ex/GigaMultiPath;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$2;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # setter for: Lcom/android/settings_ex/GigaMultiPath;->isMobileDataEnabling:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/GigaMultiPath;->access$502(Lcom/android/settings_ex/GigaMultiPath;Z)Z

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$2;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # getter for: Lcom/android/settings_ex/GigaMultiPath;->isWiFiEnabling:Z
    invoke-static {v0}, Lcom/android/settings_ex/GigaMultiPath;->access$600(Lcom/android/settings_ex/GigaMultiPath;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$2;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # setter for: Lcom/android/settings_ex/GigaMultiPath;->isNetworkEnabling:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/GigaMultiPath;->access$402(Lcom/android/settings_ex/GigaMultiPath;Z)Z

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$2;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    iget-object v1, p0, Lcom/android/settings_ex/GigaMultiPath$2;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # getter for: Lcom/android/settings_ex/GigaMultiPath;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings_ex/GigaMultiPath;->access$300(Lcom/android/settings_ex/GigaMultiPath;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v1

    # invokes: Lcom/android/settings_ex/GigaMultiPath;->sendMptcpStartBroadCast(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/GigaMultiPath;->access$700(Lcom/android/settings_ex/GigaMultiPath;Z)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$2;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # getter for: Lcom/android/settings_ex/GigaMultiPath;->isMobileDataEnabling:Z
    invoke-static {v0}, Lcom/android/settings_ex/GigaMultiPath;->access$500(Lcom/android/settings_ex/GigaMultiPath;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$2;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # setter for: Lcom/android/settings_ex/GigaMultiPath;->isMobileDataEnabling:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/GigaMultiPath;->access$502(Lcom/android/settings_ex/GigaMultiPath;Z)Z

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$2;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    iget-object v1, p0, Lcom/android/settings_ex/GigaMultiPath$2;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # getter for: Lcom/android/settings_ex/GigaMultiPath;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings_ex/GigaMultiPath;->access$300(Lcom/android/settings_ex/GigaMultiPath;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v1

    # invokes: Lcom/android/settings_ex/GigaMultiPath;->sendMptcpStartBroadCast(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/GigaMultiPath;->access$700(Lcom/android/settings_ex/GigaMultiPath;Z)V

    goto :goto_0
.end method
