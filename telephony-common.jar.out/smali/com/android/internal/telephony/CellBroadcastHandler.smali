.class public Lcom/android/internal/telephony/CellBroadcastHandler;
.super Lcom/android/internal/telephony/WakeLockStateMachine;
.source "CellBroadcastHandler.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const-string v0, "CellBroadcastHandler"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "debugTag"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/WakeLockStateMachine;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    return-void
.end method

.method public static makeCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/CellBroadcastHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    new-instance v0, Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .local v0, "handler":Lcom/android/internal/telephony/CellBroadcastHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->start()V

    return-object v0
.end method


# virtual methods
.method protected checkEcmMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "ecm":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_EnableCdmaCmasOverLte"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "VZW"

    iget-object v2, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {}, Lcom/android/internal/telephony/PhoneBase;->getMainOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V
    .locals 10
    .param p1, "message"    # Landroid/telephony/SmsCbMessage;

    .prologue
    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatching emergency SMS CB, SmsCbMessage is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .local v3, "receiverPermission":Ljava/lang/String;
    const/16 v4, 0x11

    .local v4, "appOp":I
    :goto_0
    const-string v0, "message"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    invoke-static {v1, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, -0x1

    move-object v9, v8

    invoke-virtual/range {v0 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "receiverPermission":Ljava/lang/String;
    .end local v4    # "appOp":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatching SMS CB, SmsCbMessage is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.permission.RECEIVE_SMS"

    .restart local v3    # "receiverPermission":Ljava/lang/String;
    const/16 v4, 0x10

    .restart local v4    # "appOp":I
    goto :goto_0
.end method

.method protected handleLocationInfo(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const-string v0, "handleLocationInfo in CellBroadcastHandler. It will be used in GsmCellBroadcastHandler."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected handleOperatorInfo(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const-string v0, "handleOperatorInfo in CellBroadcastHandler. It will be used in GsmCellBroadcastHandler."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected handleSmsMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/telephony/SmsCbMessage;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->checkEcmMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Disacrd CMAS message in ECM mode"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/CellBroadcastHandler;->log(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage got object of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/CellBroadcastHandler;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method
