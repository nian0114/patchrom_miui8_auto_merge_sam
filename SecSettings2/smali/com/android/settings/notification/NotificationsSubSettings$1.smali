.class Lcom/android/settings_ex/notification/NotificationsSubSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationsSubSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NotificationsSubSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NotificationsSubSettings;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationsSubSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 156
    const-string v3, "NotificationsSubSettings"

    const-string v4, "mAoBleChangeReceiver called"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-nez p2, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    const-string v3, "NotificationsSubSettings"

    const-string v4, "Receive Action : BluetoothLeAudio Connection changed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 164
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 165
    .local v1, "previous_state":I
    const-string v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 166
    .local v2, "state":I
    const-string v3, "NotificationsSubSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ++ DEVICE ADDRESS : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v3, "NotificationsSubSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ++ BluetoothLeAudio_PREVIOUS -> CURRENT :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-nez v2, :cond_2

    if-ne v1, v7, :cond_2

    .line 170
    const/4 v2, -0x1

    .line 171
    :cond_2
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 212
    :pswitch_0
    const-string v3, "NotificationsSubSettings"

    const-string v4, "BluetoothLeAudio_STATE_CHANGE : Connection FAIL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 173
    :pswitch_1
    const-string v3, "NotificationsSubSettings"

    const-string v4, "BluetoothLeAudio_STATE_CHANGED : STATE_DISCONNECTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationsSubSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationsSubSettings;->mTouchSounds:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings_ex/notification/NotificationsSubSettings;->access$000(Lcom/android/settings_ex/notification/NotificationsSubSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 175
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationsSubSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationsSubSettings;->mTouchSounds:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings_ex/notification/NotificationsSubSettings;->access$000(Lcom/android/settings_ex/notification/NotificationsSubSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 177
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationsSubSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationsSubSettings;->mDialKeypadTone:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings_ex/notification/NotificationsSubSettings;->access$100(Lcom/android/settings_ex/notification/NotificationsSubSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 178
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationsSubSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationsSubSettings;->mDialKeypadTone:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings_ex/notification/NotificationsSubSettings;->access$100(Lcom/android/settings_ex/notification/NotificationsSubSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 180
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationsSubSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationsSubSettings;->mScreenLockSound:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings_ex/notification/NotificationsSubSettings;->access$200(Lcom/android/settings_ex/notification/NotificationsSubSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 181
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationsSubSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationsSubSettings;->mScreenLockSound:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings_ex/notification/NotificationsSubSettings;->access$200(Lcom/android/settings_ex/notification/NotificationsSubSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 183
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationsSubSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationsSubSettings;->mKeyboardSound:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings_ex/notification/NotificationsSubSettings;->access$300(Lcom/android/settings_ex/notification/NotificationsSubSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 184
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationsSubSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationsSubSettings;->mKeyboardSound:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings_ex/notification/NotificationsSubSettings;->access$300(Lcom/android/settings_ex/notification/NotificationsSubSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 190
    :pswitch_2
    const-string v3, "NotificationsSubSettings"

    const-string v4, "BluetoothLeAudio_STATE_CHANGED : STATE_CONNECTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationsSubSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationsSubSettings;->mTouchSounds:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings_ex/notification/NotificationsSubSettings;->access$000(Lcom/android/settings_ex/notification/NotificationsSubSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 192
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationsSubSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationsSubSettings;->mTouchSounds:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings_ex/notification/NotificationsSubSettings;->access$000(Lcom/android/settings_ex/notification/NotificationsSubSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 194
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationsSubSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationsSubSettings;->mDialKeypadTone:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings_ex/notification/NotificationsSubSettings;->access$100(Lcom/android/settings_ex/notification/NotificationsSubSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 195
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationsSubSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationsSubSettings;->mDialKeypadTone:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings_ex/notification/NotificationsSubSettings;->access$100(Lcom/android/settings_ex/notification/NotificationsSubSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 197
    :cond_7
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationsSubSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationsSubSettings;->mScreenLockSound:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings_ex/notification/NotificationsSubSettings;->access$200(Lcom/android/settings_ex/notification/NotificationsSubSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 198
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationsSubSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationsSubSettings;->mScreenLockSound:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings_ex/notification/NotificationsSubSettings;->access$200(Lcom/android/settings_ex/notification/NotificationsSubSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 200
    :cond_8
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationsSubSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationsSubSettings;->mKeyboardSound:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings_ex/notification/NotificationsSubSettings;->access$300(Lcom/android/settings_ex/notification/NotificationsSubSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 201
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationsSubSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationsSubSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationsSubSettings;->mKeyboardSound:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings_ex/notification/NotificationsSubSettings;->access$300(Lcom/android/settings_ex/notification/NotificationsSubSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 207
    :pswitch_3
    const-string v3, "NotificationsSubSettings"

    const-string v4, "BluetoothLeAudio_STATE_CHANGED : STATE_CONNECTING"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
