.class Lcom/android/nfc/NfcTurnOnActivity$2;
.super Ljava/lang/Object;
.source "NfcTurnOnActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcTurnOnActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcTurnOnActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcTurnOnActivity;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/nfc/NfcTurnOnActivity$2;->this$0:Lcom/android/nfc/NfcTurnOnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 99
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/nfc/NfcService;->mFirstUserTurnOn:Z

    .line 100
    iget-object v0, p0, Lcom/android/nfc/NfcTurnOnActivity$2;->this$0:Lcom/android/nfc/NfcTurnOnActivity;

    # getter for: Lcom/android/nfc/NfcTurnOnActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Lcom/android/nfc/NfcTurnOnActivity;->access$200(Lcom/android/nfc/NfcTurnOnActivity;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 101
    const-string v0, "NfcTurnOnActivity"

    const-string v1, "enable NfcTurnOnActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/nfc/NfcTurnOnActivity$2;->this$0:Lcom/android/nfc/NfcTurnOnActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/nfc/NfcTurnOnActivity;->mNfcTurnOnPopup:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/nfc/NfcTurnOnActivity;->access$102(Lcom/android/nfc/NfcTurnOnActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 104
    iget-object v0, p0, Lcom/android/nfc/NfcTurnOnActivity$2;->this$0:Lcom/android/nfc/NfcTurnOnActivity;

    invoke-virtual {v0}, Lcom/android/nfc/NfcTurnOnActivity;->finish()V

    .line 105
    return-void
.end method
