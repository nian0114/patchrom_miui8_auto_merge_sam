.class Lcom/android/nfc/NfcRootActivity$1;
.super Ljava/lang/Object;
.source "NfcRootActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcRootActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcRootActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcRootActivity;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/nfc/NfcRootActivity$1;->this$0:Lcom/android/nfc/NfcRootActivity;

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
    .line 311
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/nfc/NfcRootActivity$1;->this$0:Lcom/android/nfc/NfcRootActivity;

    invoke-virtual {v0}, Lcom/android/nfc/NfcRootActivity;->finish()V

    .line 314
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
