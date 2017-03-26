.class Lcom/android/nfc/NfcChnEnablePopup$3;
.super Ljava/lang/Object;
.source "NfcChnEnablePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcChnEnablePopup;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/nfc/NfcChnEnablePopup$3;->this$0:Lcom/android/nfc/NfcChnEnablePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "mKeyCode"    # I
    .param p3, "mKeyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 124
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/nfc/NfcChnEnablePopup$3;->this$0:Lcom/android/nfc/NfcChnEnablePopup;

    # setter for: Lcom/android/nfc/NfcChnEnablePopup;->mEventDecision:Z
    invoke-static {v0, v1}, Lcom/android/nfc/NfcChnEnablePopup;->access$002(Lcom/android/nfc/NfcChnEnablePopup;Z)Z

    .line 127
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->sendChnEnableCancel()V

    .line 128
    iget-object v0, p0, Lcom/android/nfc/NfcChnEnablePopup$3;->this$0:Lcom/android/nfc/NfcChnEnablePopup;

    invoke-virtual {v0}, Lcom/android/nfc/NfcChnEnablePopup;->finish()V

    .line 130
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
