.class Lcom/android/server/usb/UsbHostRestrictor$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbHostRestrictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostRestrictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x5

    .line 212
    const-string v4, "UsbHostRestrictor"

    const-string/jumbo v5, "mTelephonyIntentReceiver2 onReceive"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 218
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getSimState(I)I

    move-result v2

    .line 219
    .local v2, "state_slot1":I
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getSimState(I)I

    move-result v3

    .line 225
    .local v3, "state_slot2":I
    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$100(Lcom/android/server/usb/UsbHostRestrictor;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v1

    .line 229
    .local v1, "cardCount":I
    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$200(Lcom/android/server/usb/UsbHostRestrictor;)Landroid/telephony/TelephonyManager;

    if-eq v6, v2, :cond_0

    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$200(Lcom/android/server/usb/UsbHostRestrictor;)Landroid/telephony/TelephonyManager;

    if-ne v6, v3, :cond_5

    :cond_0
    if-lez v1, :cond_5

    .line 232
    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z
    invoke-static {v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 233
    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$400(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ON_ALL_SIM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 234
    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    const-string v5, "OFF"

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/usb/UsbHostRestrictor;->access$500(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    .line 236
    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;
    invoke-static {v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$600(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/usb/UsbDeviceManager;->updateUsbNotificationRefresh()V

    .line 257
    .end local v1    # "cardCount":I
    .end local v2    # "state_slot1":I
    .end local v3    # "state_slot2":I
    :cond_1
    :goto_0
    return-void

    .line 237
    .restart local v1    # "cardCount":I
    .restart local v2    # "state_slot1":I
    .restart local v3    # "state_slot2":I
    :cond_2
    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$400(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ON_ALL_BOTH"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 238
    const-string v4, "UsbHostRestrictor"

    const-string v5, "USB is blocked by both. Unblock by SIM"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    const-string v5, "ON_ALL_UPSM"

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/usb/UsbHostRestrictor;->access$500(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    .line 242
    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;
    invoke-static {v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$600(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v4

    const-string/jumbo v5, "none"

    invoke-virtual {v4, v5}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_3
    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$400(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "OFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 244
    const-string v4, "UsbHostRestrictor"

    const-string v5, "Receiver2 USB is already UNBLOCKED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    :cond_4
    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z
    invoke-static {v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 247
    const-string v4, "UsbHostRestrictor"

    const-string v5, "Receiver2 Cannot write for USB DISABLE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :cond_5
    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$200(Lcom/android/server/usb/UsbHostRestrictor;)Landroid/telephony/TelephonyManager;

    if-eq v6, v2, :cond_6

    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$200(Lcom/android/server/usb/UsbHostRestrictor;)Landroid/telephony/TelephonyManager;

    if-ne v6, v3, :cond_7

    :cond_6
    if-nez v1, :cond_7

    .line 250
    const-string v4, "UsbHostRestrictor"

    const-string v5, "Receiver2 Newly inserted SIM CARD is not recognized. SIM needs to be checked."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :cond_7
    const-string v4, "UsbHostRestrictor"

    const-string v5, "Receiver2 No new inserted SIM."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
