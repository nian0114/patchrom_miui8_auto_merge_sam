.class Lcom/android/settings_ex/nfc/NfcEnabler$2;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/nfc/NfcEnabler;->makeAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nfc/NfcEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nfc/NfcEnabler;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/settings_ex/nfc/NfcEnabler$2;->this$0:Lcom/android/settings_ex/nfc/NfcEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler$2;->this$0:Lcom/android/settings_ex/nfc/NfcEnabler;

    # getter for: Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/NfcEnabler;->access$200(Lcom/android/settings_ex/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 461
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler$2;->this$0:Lcom/android/settings_ex/nfc/NfcEnabler;

    # getter for: Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/NfcEnabler;->access$200(Lcom/android/settings_ex/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 462
    return-void
.end method
