.class public Lcom/android/nfc/handover/ConfirmConnectActivity;
.super Landroid/app/Activity;
.source "ConfirmConnectActivity.java"


# instance fields
.field mAlert:Landroid/app/AlertDialog;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mcontext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mAlert:Landroid/app/AlertDialog;

    .line 108
    new-instance v0, Lcom/android/nfc/handover/ConfirmConnectActivity$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/ConfirmConnectActivity$3;-><init>(Lcom/android/nfc/handover/ConfirmConnectActivity;)V

    iput-object v0, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 134
    iget-object v2, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    iput-object p0, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mcontext:Landroid/content/Context;

    .line 43
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x5

    invoke-direct {v0, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 45
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 46
    .local v3, "launchIntent":Landroid/content/Intent;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    iput-object v5, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 47
    iget-object v5, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->finish()V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 49
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "deviceName":Ljava/lang/String;
    :goto_0
    const v5, 0x7f07001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "confirmString":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f07001b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/nfc/handover/ConfirmConnectActivity$2;

    invoke-direct {v7, p0}, Lcom/android/nfc/handover/ConfirmConnectActivity$2;-><init>(Lcom/android/nfc/handover/ConfirmConnectActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f07001c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/nfc/handover/ConfirmConnectActivity$1;

    invoke-direct {v7, p0}, Lcom/android/nfc/handover/ConfirmConnectActivity$1;-><init>(Lcom/android/nfc/handover/ConfirmConnectActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mAlert:Landroid/app/AlertDialog;

    .line 74
    iget-object v5, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 75
    return-void

    .line 49
    .end local v1    # "confirmString":Ljava/lang/String;
    .end local v2    # "deviceName":Ljava/lang/String;
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mcontext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 94
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mcontext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 100
    iget-object v1, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mAlert:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.nfc.handover.action.DENY_CONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "denyIntent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    .end local v0    # "denyIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
