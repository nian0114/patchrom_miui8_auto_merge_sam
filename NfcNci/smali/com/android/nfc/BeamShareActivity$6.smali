.class Lcom/android/nfc/BeamShareActivity$6;
.super Ljava/lang/Object;
.source "BeamShareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/BeamShareActivity;->showNfcDialogAndExitForVzw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/BeamShareActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/BeamShareActivity;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/nfc/BeamShareActivity$6;->this$0:Lcom/android/nfc/BeamShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 336
    const-string v0, "BeamShareActivity"

    const-string v1, "Nothing happen NfcTurnOnActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$6;->this$0:Lcom/android/nfc/BeamShareActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/nfc/BeamShareActivity;->mNfcTurnOnPopup:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/nfc/BeamShareActivity;->access$202(Lcom/android/nfc/BeamShareActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 338
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$6;->this$0:Lcom/android/nfc/BeamShareActivity;

    # getter for: Lcom/android/nfc/BeamShareActivity;->mIsReceiverRegistered:Z
    invoke-static {v0}, Lcom/android/nfc/BeamShareActivity;->access$000(Lcom/android/nfc/BeamShareActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$6;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity$6;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v1, v1, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/nfc/BeamShareActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 341
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$6;->this$0:Lcom/android/nfc/BeamShareActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/nfc/BeamShareActivity;->mIsReceiverRegistered:Z
    invoke-static {v0, v1}, Lcom/android/nfc/BeamShareActivity;->access$002(Lcom/android/nfc/BeamShareActivity;Z)Z

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$6;->this$0:Lcom/android/nfc/BeamShareActivity;

    invoke-virtual {v0}, Lcom/android/nfc/BeamShareActivity;->finish()V

    .line 344
    return-void
.end method
