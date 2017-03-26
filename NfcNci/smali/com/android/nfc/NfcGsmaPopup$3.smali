.class Lcom/android/nfc/NfcGsmaPopup$3;
.super Ljava/lang/Object;
.source "NfcGsmaPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcGsmaPopup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcGsmaPopup;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcGsmaPopup;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/nfc/NfcGsmaPopup$3;->this$0:Lcom/android/nfc/NfcGsmaPopup;

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

    .line 58
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/nfc/NfcGsmaPopup$3;->this$0:Lcom/android/nfc/NfcGsmaPopup;

    # setter for: Lcom/android/nfc/NfcGsmaPopup;->mEventDecision:Z
    invoke-static {v0, v1}, Lcom/android/nfc/NfcGsmaPopup;->access$002(Lcom/android/nfc/NfcGsmaPopup;Z)Z

    .line 61
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->sendGsmaPopup(I)V

    .line 62
    iget-object v0, p0, Lcom/android/nfc/NfcGsmaPopup$3;->this$0:Lcom/android/nfc/NfcGsmaPopup;

    invoke-virtual {v0}, Lcom/android/nfc/NfcGsmaPopup;->finish()V

    .line 64
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
