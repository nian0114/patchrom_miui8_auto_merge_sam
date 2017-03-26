.class Lcom/android/nfc/NfcTurnOnActivity$4;
.super Ljava/lang/Object;
.source "NfcTurnOnActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 119
    iput-object p1, p0, Lcom/android/nfc/NfcTurnOnActivity$4;->this$0:Lcom/android/nfc/NfcTurnOnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 122
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/nfc/NfcTurnOnActivity$4;->this$0:Lcom/android/nfc/NfcTurnOnActivity;

    # getter for: Lcom/android/nfc/NfcTurnOnActivity;->mNfcTurnOnPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/nfc/NfcTurnOnActivity;->access$100(Lcom/android/nfc/NfcTurnOnActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 124
    iget-object v0, p0, Lcom/android/nfc/NfcTurnOnActivity$4;->this$0:Lcom/android/nfc/NfcTurnOnActivity;

    invoke-virtual {v0}, Lcom/android/nfc/NfcTurnOnActivity;->finish()V

    .line 126
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
