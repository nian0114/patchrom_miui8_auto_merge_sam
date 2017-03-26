.class Lcom/android/nfc/NfcChnEnablePopup$2;
.super Ljava/lang/Object;
.source "NfcChnEnablePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcChnEnablePopup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcChnEnablePopup;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcChnEnablePopup;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/nfc/NfcChnEnablePopup$2;->this$0:Lcom/android/nfc/NfcChnEnablePopup;

    iput-object p2, p0, Lcom/android/nfc/NfcChnEnablePopup$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 108
    iget-object v1, p0, Lcom/android/nfc/NfcChnEnablePopup$2;->this$0:Lcom/android/nfc/NfcChnEnablePopup;

    # setter for: Lcom/android/nfc/NfcChnEnablePopup;->mEventDecision:Z
    invoke-static {v1, v3}, Lcom/android/nfc/NfcChnEnablePopup;->access$002(Lcom/android/nfc/NfcChnEnablePopup;Z)Z

    .line 109
    iget-object v1, p0, Lcom/android/nfc/NfcChnEnablePopup$2;->val$v:Landroid/view/View;

    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 110
    .local v0, "askOption":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/nfc/NfcChnEnablePopup$2;->this$0:Lcom/android/nfc/NfcChnEnablePopup;

    # getter for: Lcom/android/nfc/NfcChnEnablePopup;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/nfc/NfcChnEnablePopup;->access$100(Lcom/android/nfc/NfcChnEnablePopup;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_chn_enable_dialog"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 112
    iget-object v1, p0, Lcom/android/nfc/NfcChnEnablePopup$2;->this$0:Lcom/android/nfc/NfcChnEnablePopup;

    # getter for: Lcom/android/nfc/NfcChnEnablePopup;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/nfc/NfcChnEnablePopup;->access$100(Lcom/android/nfc/NfcChnEnablePopup;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    :cond_0
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->sendChnEnableDirect()V

    .line 115
    iget-object v1, p0, Lcom/android/nfc/NfcChnEnablePopup$2;->this$0:Lcom/android/nfc/NfcChnEnablePopup;

    invoke-virtual {v1}, Lcom/android/nfc/NfcChnEnablePopup;->finish()V

    .line 116
    return-void
.end method
