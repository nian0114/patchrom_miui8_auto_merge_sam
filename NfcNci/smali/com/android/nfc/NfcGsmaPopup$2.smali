.class Lcom/android/nfc/NfcGsmaPopup$2;
.super Ljava/lang/Object;
.source "NfcGsmaPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 45
    iput-object p1, p0, Lcom/android/nfc/NfcGsmaPopup$2;->this$0:Lcom/android/nfc/NfcGsmaPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 48
    iget-object v0, p0, Lcom/android/nfc/NfcGsmaPopup$2;->this$0:Lcom/android/nfc/NfcGsmaPopup;

    # setter for: Lcom/android/nfc/NfcGsmaPopup;->mEventDecision:Z
    invoke-static {v0, v1}, Lcom/android/nfc/NfcGsmaPopup;->access$002(Lcom/android/nfc/NfcGsmaPopup;Z)Z

    .line 49
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->sendGsmaPopup(I)V

    .line 50
    iget-object v0, p0, Lcom/android/nfc/NfcGsmaPopup$2;->this$0:Lcom/android/nfc/NfcGsmaPopup;

    invoke-virtual {v0}, Lcom/android/nfc/NfcGsmaPopup;->finish()V

    .line 51
    return-void
.end method
