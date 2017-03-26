.class Lcom/android/nfc/handover/ConfirmConnectActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "ConfirmConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/ConfirmConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/ConfirmConnectActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/ConfirmConnectActivity;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/nfc/handover/ConfirmConnectActivity$3;->this$0:Lcom/android/nfc/handover/ConfirmConnectActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    iget-object v3, p0, Lcom/android/nfc/handover/ConfirmConnectActivity$3;->this$0:Lcom/android/nfc/handover/ConfirmConnectActivity;

    invoke-virtual {v3}, Lcom/android/nfc/handover/ConfirmConnectActivity;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/android/nfc/handover/ConfirmConnectActivity$3;->this$0:Lcom/android/nfc/handover/ConfirmConnectActivity;

    invoke-virtual {v3}, Lcom/android/nfc/handover/ConfirmConnectActivity;->finish()V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x80000000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 122
    .local v2, "state":I
    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 123
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.nfc.handover.action.DENY_CONNECT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "denyIntent":Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Lcom/android/nfc/handover/ConfirmConnectActivity$3;->this$0:Lcom/android/nfc/handover/ConfirmConnectActivity;

    iget-object v4, v4, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    iget-object v3, p0, Lcom/android/nfc/handover/ConfirmConnectActivity$3;->this$0:Lcom/android/nfc/handover/ConfirmConnectActivity;

    invoke-virtual {v3}, Lcom/android/nfc/handover/ConfirmConnectActivity;->finish()V

    goto :goto_0
.end method
