.class Lcom/android/settings_ex/GigaLteSettings$2;
.super Landroid/database/ContentObserver;
.source "GigaLteSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/GigaLteSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/GigaLteSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/GigaLteSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/settings_ex/GigaLteSettings$2;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$2;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    # getter for: Lcom/android/settings_ex/GigaLteSettings;->isNetworkEnabling:Z
    invoke-static {v0}, Lcom/android/settings_ex/GigaLteSettings;->access$400(Lcom/android/settings_ex/GigaLteSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$2;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    # getter for: Lcom/android/settings_ex/GigaLteSettings;->isMobileDataEnabling:Z
    invoke-static {v0}, Lcom/android/settings_ex/GigaLteSettings;->access$500(Lcom/android/settings_ex/GigaLteSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$2;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    # setter for: Lcom/android/settings_ex/GigaLteSettings;->isMobileDataEnabling:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/GigaLteSettings;->access$502(Lcom/android/settings_ex/GigaLteSettings;Z)Z

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$2;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    # getter for: Lcom/android/settings_ex/GigaLteSettings;->isWiFiEnabling:Z
    invoke-static {v0}, Lcom/android/settings_ex/GigaLteSettings;->access$600(Lcom/android/settings_ex/GigaLteSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$2;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    # setter for: Lcom/android/settings_ex/GigaLteSettings;->isNetworkEnabling:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/GigaLteSettings;->access$402(Lcom/android/settings_ex/GigaLteSettings;Z)Z

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$2;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    iget-object v1, p0, Lcom/android/settings_ex/GigaLteSettings$2;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    # getter for: Lcom/android/settings_ex/GigaLteSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings_ex/GigaLteSettings;->access$300(Lcom/android/settings_ex/GigaLteSettings;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v1

    # invokes: Lcom/android/settings_ex/GigaLteSettings;->sendMptcpStartBroadCast(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/GigaLteSettings;->access$700(Lcom/android/settings_ex/GigaLteSettings;Z)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$2;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    # getter for: Lcom/android/settings_ex/GigaLteSettings;->isMobileDataEnabling:Z
    invoke-static {v0}, Lcom/android/settings_ex/GigaLteSettings;->access$500(Lcom/android/settings_ex/GigaLteSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$2;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    # setter for: Lcom/android/settings_ex/GigaLteSettings;->isMobileDataEnabling:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/GigaLteSettings;->access$502(Lcom/android/settings_ex/GigaLteSettings;Z)Z

    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$2;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    iget-object v1, p0, Lcom/android/settings_ex/GigaLteSettings$2;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    # getter for: Lcom/android/settings_ex/GigaLteSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings_ex/GigaLteSettings;->access$300(Lcom/android/settings_ex/GigaLteSettings;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v1

    # invokes: Lcom/android/settings_ex/GigaLteSettings;->sendMptcpStartBroadCast(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/GigaLteSettings;->access$700(Lcom/android/settings_ex/GigaLteSettings;Z)V

    goto :goto_0
.end method
