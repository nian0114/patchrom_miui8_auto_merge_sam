.class Lcom/android/nfc/NfcTurnOnActivity$3;
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
    .line 108
    iput-object p1, p0, Lcom/android/nfc/NfcTurnOnActivity$3;->this$0:Lcom/android/nfc/NfcTurnOnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 111
    const-string v0, "NfcTurnOnActivity"

    const-string v1, "Nothing happen NfcTurnOnActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/android/nfc/NfcTurnOnActivity$3;->this$0:Lcom/android/nfc/NfcTurnOnActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/nfc/NfcTurnOnActivity;->mNfcTurnOnPopup:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/nfc/NfcTurnOnActivity;->access$102(Lcom/android/nfc/NfcTurnOnActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 113
    iget-object v0, p0, Lcom/android/nfc/NfcTurnOnActivity$3;->this$0:Lcom/android/nfc/NfcTurnOnActivity;

    invoke-virtual {v0}, Lcom/android/nfc/NfcTurnOnActivity;->finish()V

    .line 114
    return-void
.end method
