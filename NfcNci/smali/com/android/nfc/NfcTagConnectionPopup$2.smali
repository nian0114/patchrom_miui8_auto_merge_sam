.class Lcom/android/nfc/NfcTagConnectionPopup$2;
.super Ljava/lang/Object;
.source "NfcTagConnectionPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcTagConnectionPopup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcTagConnectionPopup;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcTagConnectionPopup;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/nfc/NfcTagConnectionPopup$2;->this$0:Lcom/android/nfc/NfcTagConnectionPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/nfc/NfcTagConnectionPopup$2;->this$0:Lcom/android/nfc/NfcTagConnectionPopup;

    # getter for: Lcom/android/nfc/NfcTagConnectionPopup;->mNfcTagConnectionPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/nfc/NfcTagConnectionPopup;->access$000(Lcom/android/nfc/NfcTagConnectionPopup;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 85
    iget-object v0, p0, Lcom/android/nfc/NfcTagConnectionPopup$2;->this$0:Lcom/android/nfc/NfcTagConnectionPopup;

    invoke-virtual {v0}, Lcom/android/nfc/NfcTagConnectionPopup;->finish()V

    .line 87
    return-void
.end method
