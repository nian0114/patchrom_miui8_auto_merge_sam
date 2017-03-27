.class Lcom/android/settings_ex/GigaLteSettings$18;
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
    .line 460
    iput-object p1, p0, Lcom/android/settings_ex/GigaLteSettings$18;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$18;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    # getter for: Lcom/android/settings_ex/GigaLteSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings_ex/GigaLteSettings;->access$300(Lcom/android/settings_ex/GigaLteSettings;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$18;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/GigaLteSettings;->showProgressDialog()V

    .line 464
    iget-object v0, p0, Lcom/android/settings_ex/GigaLteSettings$18;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    iget-object v1, p0, Lcom/android/settings_ex/GigaLteSettings$18;->this$0:Lcom/android/settings_ex/GigaLteSettings;

    # getter for: Lcom/android/settings_ex/GigaLteSettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings_ex/GigaLteSettings;->access$300(Lcom/android/settings_ex/GigaLteSettings;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->isChecked()Z

    move-result v1

    # invokes: Lcom/android/settings_ex/GigaLteSettings;->sendMptcpStartBroadCast(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/GigaLteSettings;->access$700(Lcom/android/settings_ex/GigaLteSettings;Z)V

    .line 465
    return-void
.end method
