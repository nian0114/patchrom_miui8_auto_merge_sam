.class Lcom/android/settings_ex/wifi/WifiSettings$12;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettings;->showQrConfirmDialg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 1798
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$12;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$12;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1900(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$12;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mPasswordCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1800(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 1805
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$12;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1900(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$12;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1900(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1806
    return-void

    .line 1801
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method
