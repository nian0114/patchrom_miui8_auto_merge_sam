.class Lcom/android/nfc/NfcDispatcher$1;
.super Landroid/os/Handler;
.source "NfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcDispatcher;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcDispatcher;)V
    .locals 0

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher$1;->this$0:Lcom/android/nfc/NfcDispatcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1187
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1189
    :pswitch_0
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$1;->this$0:Lcom/android/nfc/NfcDispatcher;

    # getter for: Lcom/android/nfc/NfcDispatcher;->mPackageReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/android/nfc/NfcDispatcher;->access$000(Lcom/android/nfc/NfcDispatcher;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1190
    const-string v0, "NfcDispatcher"

    const-string v1, "unregister mPackageReceiver!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$1;->this$0:Lcom/android/nfc/NfcDispatcher;

    # getter for: Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/nfc/NfcDispatcher;->access$100(Lcom/android/nfc/NfcDispatcher;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$1;->this$0:Lcom/android/nfc/NfcDispatcher;

    # getter for: Lcom/android/nfc/NfcDispatcher;->mPackageReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/nfc/NfcDispatcher;->access$000(Lcom/android/nfc/NfcDispatcher;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 1187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
