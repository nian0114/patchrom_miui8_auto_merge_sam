.class public Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "CdmaInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;
    }
.end annotation


# static fields
.field private static final ALLRECEIVE_MODE:B = 0x3t

.field private static final COMMERCIAL_MODE:B = 0x0t

.field static final ETWS_NOTIFICATION:I = 0x6f

.field private static final KDDITEST_MODE:B = 0x2t

.field private static final MANUFACTURETEST_MODE:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "CdmaInboundSmsHandler"


# instance fields
.field private final DEBUG:Z

.field private mDuplicateFilter:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B

.field private mNotification:Landroid/app/Notification;

.field private final mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

.field private final mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p4, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    const/4 v6, 0x1

    const-string v1, "CdmaInboundSmsHandler"

    invoke-static {p1, p3}, Lcom/android/internal/telephony/CellBroadcastHandler;->makeCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/CellBroadcastHandler;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->DEBUG:Z

    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    iget-object v0, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->makeScpHandler(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;-><init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mDuplicateFilter:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

    iget-object v0, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v6, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # Z

    .prologue
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->storeLatestSmsInfo(Ljava/lang/String;JZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;JZ)Z
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # Z

    .prologue
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->isDuplicatedLatestSms(Ljava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method private static checkDuplicatePortOmadmWapPush([BI)Z
    .locals 6
    .param p0, "origPdu"    # [B
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    add-int/lit8 p1, p1, 0x4

    array-length v5, p0

    sub-int/2addr v5, p1

    new-array v1, v5, [B

    .local v1, "omaPdu":[B
    array-length v5, v1

    invoke-static {p0, p1, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v2, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .local v2, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 v3, 0x2

    .local v3, "wspIndex":I
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v0

    .local v0, "mimeType":Ljava/lang/String;
    const-string v4, "application/vnd.syncml.notification"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method private handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 8
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getVoiceMessageCount()I

    move-result v1

    .local v1, "preVoicemailCount":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessagePriority()I

    move-result v4

    .local v4, "voicemailPriority":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v3

    .local v3, "voicemailCount":I
    if-gez v3, :cond_2

    const/4 v3, -0x1

    :cond_0
    :goto_0
    const-string v5, "CdmaInboundSmsHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VM count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "CdmaInboundSmsHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VM prev : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "CdmaInboundSmsHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VM priority : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v5

    if-eq v1, v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vm_count_key_cdma"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v5, "vm_priority_key_cdma"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->storeVoiceMailCount()V

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->updateVoicemailCount(I)V

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    return-void

    :cond_2
    const/16 v5, 0x63

    if-le v3, v5, :cond_0

    const/16 v3, 0x63

    goto/16 :goto_0
.end method

.method private static isInEmergencyCallMode()Z
    .locals 3

    .prologue
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SprEcmIncomingSms"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "inEcm":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    .end local v0    # "inEcm":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p3, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    .local v0, "handler":Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->start()V

    return-object v0
.end method

.method private processCdmaWapPdu([BILjava/lang/String;J)I
    .locals 18
    .param p1, "pdu"    # [B
    .param p2, "referenceNumber"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    .prologue
    const/4 v13, 0x0

    .local v13, "index":I
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .local v14, "index":I
    aget-byte v4, p1, v13

    and-int/lit16 v15, v4, 0xff

    .local v15, "msgType":I
    if-eqz v15, :cond_0

    const-string v4, "Received a WAP SMS which is not WDP. Discard."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    const/4 v4, 0x1

    move v13, v14

    .end local v14    # "index":I
    .restart local v13    # "index":I
    :goto_0
    return v4

    .end local v13    # "index":I
    .restart local v14    # "index":I
    :cond_0
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "index":I
    .restart local v13    # "index":I
    aget-byte v4, p1, v14

    and-int/lit16 v11, v4, 0xff

    .local v11, "totalSegments":I
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .restart local v14    # "index":I
    aget-byte v4, p1, v13

    and-int/lit16 v10, v4, 0xff

    .local v10, "segment":I
    if-lt v10, v11, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WDP bad segment #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " expecting 0-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v11, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    const/4 v4, 0x1

    move v13, v14

    .end local v14    # "index":I
    .restart local v13    # "index":I
    goto :goto_0

    .end local v13    # "index":I
    .restart local v14    # "index":I
    :cond_1
    const/16 v16, 0x0

    .local v16, "sourcePort":I
    const/4 v6, 0x0

    .local v6, "destinationPort":I
    if-nez v10, :cond_2

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "index":I
    .restart local v13    # "index":I
    aget-byte v4, p1, v14

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v16, v4, 0x8

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .restart local v14    # "index":I
    aget-byte v4, p1, v13

    and-int/lit16 v4, v4, 0xff

    or-int v16, v16, v4

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "index":I
    .restart local v13    # "index":I
    aget-byte v4, p1, v14

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v6, v4, 0x8

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .restart local v14    # "index":I
    aget-byte v4, p1, v13

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v6, v4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->checkDuplicatePortOmadmWapPush([BI)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v13, v14, 0x4

    .end local v14    # "index":I
    .restart local v13    # "index":I
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received WAP PDU. Type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", originator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", src-port = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dst-port = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", segment# = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    move-object/from16 v0, p1

    array-length v4, v0

    sub-int/2addr v4, v13

    new-array v3, v4, [B

    .local v3, "userData":[B
    const/4 v4, 0x0

    move-object/from16 v0, p1

    array-length v5, v0

    sub-int/2addr v5, v13

    move-object/from16 v0, p1

    invoke-static {v0, v13, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v2, Lcom/android/internal/telephony/InboundSmsTracker;

    const/4 v7, 0x1

    const/4 v12, 0x1

    move-wide/from16 v4, p4

    move-object/from16 v8, p3

    move/from16 v9, p2

    invoke-direct/range {v2 .. v12}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZ)V

    .local v2, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v4

    goto/16 :goto_0

    .end local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v3    # "userData":[B
    .end local v13    # "index":I
    .restart local v14    # "index":I
    :cond_2
    move v13, v14

    .end local v14    # "index":I
    .restart local v13    # "index":I
    goto :goto_1
.end method

.method private static resultToCause(I)I
    .locals 1
    .param p0, "rc"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x60

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x23

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setNotification()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x0

    const-string v5, "CdmaInboundSmsHandler"

    const-string v6, "setNotification: create notification "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mNotification:Landroid/app/Notification;

    iput v9, v5, Landroid/app/Notification;->flags:I

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mNotification:Landroid/app/Notification;

    const v6, 0x108008a

    iput v6, v5, Landroid/app/Notification;->icon:I

    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "enabled"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "flag"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const-string v4, "Enable Emergency mode"

    .local v4, "title":Ljava/lang/CharSequence;
    const-string v0, "Tap here to enable Emergency mode to save battery power."

    .local v0, "details":Ljava/lang/CharSequence;
    const/16 v2, 0x6f

    .local v2, "notificationId":I
    const-string v5, "CdmaInboundSmsHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNotification: put notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mNotification:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6, v4, v0, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .local v3, "notificationManager":Landroid/app/NotificationManager;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v2, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method protected ETWSJudgeDeliveryFromMessageID(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 4
    .param p1, "smsb"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v0

    .local v0, "serviceCategory":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SmsCml"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eq v0, v1, :cond_1

    const/16 v2, 0x28

    if-ne v0, v2, :cond_0

    goto :goto_0
.end method

.method protected KddiNotifiyCDMASmsToWIFI([[B)V
    .locals 2
    .param p1, "pdus"    # [[B

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_CB_WIFI_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->checkEcmPolicy(ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->resultToCause(I)I

    move-result v0

    .local v0, "causeCode":I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    :cond_1
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    goto :goto_0
.end method

.method protected dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 31
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v7, v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->checkEcmPolicy(ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_0
    move-object/from16 v28, p1

    check-cast v28, Lcom/android/internal/telephony/cdma/SmsMessage;

    .local v28, "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    const/4 v4, 0x1

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCDMAMessageType()I

    move-result v7

    if-ne v4, v7, :cond_1

    const/16 v21, 0x1

    .local v21, "isBroadcastType":Z
    :goto_1
    if-eqz v21, :cond_5

    const-string v4, "Broadcast type message"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_RIL_SmsCml"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseBroadcastSms()Landroid/telephony/SmsCbMessage;

    move-result-object v15

    .local v15, "cbMessage":Landroid/telephony/SmsCbMessage;
    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v4, v15}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispatchSmsMessage(Ljava/lang/Object;)V

    :goto_2
    const/4 v4, 0x1

    goto :goto_0

    .end local v15    # "cbMessage":Landroid/telephony/SmsCbMessage;
    .end local v21    # "isBroadcastType":Z
    :cond_1
    const/16 v21, 0x0

    goto :goto_1

    .restart local v21    # "isBroadcastType":Z
    :cond_2
    const/4 v4, 0x1

    new-array v0, v4, [[B

    move-object/from16 v27, v0

    .local v27, "pdus":[[B
    const/4 v4, 0x0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v7

    aput-object v7, v27, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->kddiJudgeDeliveryFromServiceCategory(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, -0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->kddiJudgeDeliveryFromServiceCategoryForWIFI(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->KddiNotifiyCDMASmsToWIFI([[B)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->ETWSJudgeDeliveryFromMessageID(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->setNotification()V

    .end local v27    # "pdus":[[B
    :cond_5
    if-eqz v28, :cond_6

    const-string v4, "CdmaInboundSmsHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pdu : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto/16 :goto_0

    .restart local v15    # "cbMessage":Landroid/telephony/SmsCbMessage;
    :cond_7
    const-string v4, "error trying to parse broadcast SMS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v15    # "cbMessage":Landroid/telephony/SmsCbMessage;
    :cond_8
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v30

    .local v30, "teleService":I
    const-string v4, "CdmaInboundSmsHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "teleService : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/util/GeneralUtil;->isPhone()Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {}, Lcom/android/internal/telephony/PhoneBase;->isUsaCdmaModel()Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0x1002

    move/from16 v0, v30

    if-eq v0, v4, :cond_9

    const/16 v4, 0x1004

    move/from16 v0, v30

    if-eq v0, v4, :cond_9

    const-string v4, "CdmaInboundSmsHandler"

    const-string v7, "Tablet doesn\'t support WMT and WAP messages"

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_9
    sparse-switch v30, :sswitch_data_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_RIL_SmsTidMessage"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_RIL_SmsCml"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsupported teleservice 0x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    const/4 v4, 0x4

    goto/16 :goto_0

    :sswitch_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_RIL_SmsTidMessage"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->dispatchSmsMessage(Ljava/lang/Object;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_a
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v4

    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v4, v7, :cond_b

    const/4 v4, 0x3

    goto/16 :goto_0

    :cond_b
    const/16 v4, 0x1004

    move/from16 v0, v30

    if-ne v4, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v10

    invoke-virtual {v4, v7, v10, v11}, Lcom/android/internal/telephony/WapPushOverSms;->setWpaPushAddressTimeStamp(Ljava/lang/String;J)V

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v5

    move-object/from16 v0, v28

    iget v6, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v8

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;J)I

    move-result v4

    goto/16 :goto_0

    :cond_c
    const-string v4, "CTC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v10, "CscFeature_RIL_WapPushFormat4"

    invoke-virtual {v7, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const v4, 0xfdea

    move/from16 v0, v30

    if-ne v4, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v10

    invoke-virtual {v4, v7, v10, v11}, Lcom/android/internal/telephony/WapPushOverSms;->setWpaPushAddressTimeStamp(Ljava/lang/String;J)V

    new-instance v20, Lcom/android/internal/util/BitwiseInputStream;

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .local v20, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v5

    .local v5, "userData":[B
    const/4 v6, 0x0

    .local v6, "messageReference":I
    const-string v4, "CTC Push Message Decoding"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    const/16 v4, 0x14

    :try_start_0
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    shl-int/lit8 v6, v4, 0x8

    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    or-int/2addr v6, v4

    const/4 v4, 0x4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CTC Wap Push Reference Id:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v19

    .local v19, "id":I
    const/4 v4, 0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ERR] CTC Wap Push ID is wrong! "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    :cond_d
    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v22

    .local v22, "length":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[CTCPush]length = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    const/4 v4, 0x5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v26

    .local v26, "num_fileds":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CTC Wap Push num_fileds: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    add-int/lit8 v4, v22, -0x2

    move/from16 v0, v26

    if-ge v0, v4, :cond_e

    const-string v4, "[ERR] CTC Wap Push num_fileds is set wrong!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    add-int/lit8 v26, v22, -0x2

    :cond_e
    move/from16 v0, v26

    new-array v5, v0, [B

    const/16 v23, 0x0

    .local v23, "loop":I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_f

    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v5, v23
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .end local v19    # "id":I
    .end local v22    # "length":I
    .end local v23    # "loop":I
    .end local v26    # "num_fileds":I
    :catch_0
    move-exception v18

    .local v18, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BearerData decode failed: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .end local v18    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :cond_f
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v8

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;J)I

    move-result v4

    goto/16 :goto_0

    .end local v5    # "userData":[B
    .end local v6    # "messageReference":I
    .end local v20    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :cond_10
    const-string v4, "CTC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v10, "CscFeature_RIL_WapPushFormat4"

    invoke-virtual {v7, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const v4, 0xfdf1

    move/from16 v0, v30

    if-ne v4, v0, :cond_12

    const-string v4, "CTC DM Message Decoding"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseCtcFota()V

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->isCtcFota()Z

    move-result v4

    if-eqz v4, :cond_11

    new-instance v8, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v9

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v10

    const/16 v12, 0xb84

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZZ)V

    .local v8, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v4

    goto/16 :goto_0

    .end local v8    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_11
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_12
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_Common_SupportHuxAppDirectedSms"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/16 v4, 0x1002

    move/from16 v0, v30

    if-ne v0, v4, :cond_16

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v29

    .local v29, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v29, :cond_13

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v4, :cond_16

    :cond_13
    const/16 v25, 0x0

    .local v25, "msginfo":Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v24

    .local v24, "msgbody":Ljava/lang/String;
    if-eqz v24, :cond_14

    sget-object v4, Lcom/android/internal/telephony/AppDirectedSMS;->INSTANCE:Lcom/android/internal/telephony/AppDirectedSMS;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-virtual {v4, v7, v0}, Lcom/android/internal/telephony/AppDirectedSMS;->checkIfAppDirSMS(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;

    move-result-object v25

    :cond_14
    if-eqz v25, :cond_16

    const/4 v4, 0x1

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->getappdirsmsstatus()Z

    move-result v7

    if-ne v4, v7, :cond_16

    const/4 v4, 0x1

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->checkifcomponentpresent()Z

    move-result v7

    if-ne v4, v7, :cond_15

    const-string v4, "CdmaInboundSmsHandler"

    const-string v7, "[DirectedSMS] Dispatch App Directed SMS message"

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->getcomponentnameDirectedSms()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->getappMsgBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->getAppPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispatchAppDirectedSMS(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_15
    const-string v4, "CdmaInboundSmsHandler"

    const-string v7, "[DirectedSMS] matched package not found or not a valid format"

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v24    # "msgbody":Ljava/lang/String;
    .end local v25    # "msginfo":Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
    .end local v29    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_16
    invoke-static {}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isLimitedMode()Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "CdmaInboundSmsHandler"

    const-string v7, "limited mode normal sms reject"

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_17
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_RIL_SmsTidMessage"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    :cond_18
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v29

    .restart local v29    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v10

    invoke-virtual {v4, v7, v10, v11}, Lcom/android/internal/telephony/WapPushOverSms;->setWpaPushAddressTimeStamp(Ljava/lang/String;J)V

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v17

    .local v17, "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    if-eqz v29, :cond_1c

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v4, :cond_1c

    const/16 v4, 0xb84

    move-object/from16 v0, v29

    iget-object v7, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v7, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne v4, v7, :cond_1c

    const/4 v4, 0x1

    :goto_4
    if-nez v4, :cond_1e

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v4, 0xa

    goto/16 :goto_0

    .end local v17    # "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    .end local v29    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_19
    const/16 v4, 0x1002

    move/from16 v0, v30

    if-eq v0, v4, :cond_1a

    const/16 v4, 0x1005

    move/from16 v0, v30

    if-eq v0, v4, :cond_1a

    const/16 v4, 0x1003

    move/from16 v0, v30

    if-eq v0, v4, :cond_1a

    const/high16 v4, 0x40000

    move/from16 v0, v30

    if-eq v0, v4, :cond_1a

    const/16 v4, 0x1001

    move/from16 v0, v30

    if-eq v0, v4, :cond_1a

    const v4, 0xc00e

    move/from16 v0, v30

    if-eq v0, v4, :cond_1a

    const v4, 0xc00f

    move/from16 v0, v30

    if-eq v0, v4, :cond_1a

    const v4, 0xc010

    move/from16 v0, v30

    if-eq v0, v4, :cond_1a

    const v4, 0xc263

    move/from16 v0, v30

    if-eq v0, v4, :cond_1a

    const v4, 0xc265

    move/from16 v0, v30

    if-eq v0, v4, :cond_1a

    const v4, 0xc267

    move/from16 v0, v30

    if-eq v0, v4, :cond_1a

    const v4, 0xc00a

    move/from16 v0, v30

    if-eq v0, v4, :cond_1a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispatchLGTTeleserviceMessage(Lcom/android/internal/telephony/SmsMessageBase;I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1a
    const/high16 v4, 0x40000

    move/from16 v0, v30

    if-eq v0, v4, :cond_1b

    const/16 v4, 0x1003

    move/from16 v0, v30

    if-ne v0, v4, :cond_18

    :cond_1b
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v4

    if-nez v4, :cond_18

    const-string v4, "Received voice SMS with count 0"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .restart local v17    # "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    .restart local v29    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_1d
    invoke-virtual/range {v17 .. v17}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v9

    .local v9, "phoneRestriction":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    invoke-virtual {v9}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled()Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v10, 0x1

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getEncoding()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    const/16 v4, 0xa

    goto/16 :goto_0

    :catch_1
    move-exception v16

    .local v16, "e":Ljava/lang/Exception;
    const-string v4, "fail to store blocked sms on mdm database"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_5

    .end local v9    # "phoneRestriction":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_1e
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v4

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_1
        0x1002 -> :sswitch_1
        0x1003 -> :sswitch_0
        0x1004 -> :sswitch_3
        0x1005 -> :sswitch_1
        0x1006 -> :sswitch_2
        0xfdea -> :sswitch_3
        0xfdf1 -> :sswitch_3
        0x40000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getEncoding()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    return v0
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "3gpp2"

    return-object v0
.end method

.method protected handleBlockedSms([BI)V
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "sendType"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getEncoding()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispatchBlockedSms([BI)V

    :cond_0
    return-void
.end method

.method protected is3gpp2()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected isDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 2
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mDuplicateFilter:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->isDuplicated(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CdmaInboundSmsHandler"

    const-string v1, "Duplicate found. Samsung"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mDuplicateFilter:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->addMessage(Lcom/android/internal/telephony/SmsMessageBase;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected kddiJudgeDeliveryFromServiceCategory(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 14
    .param p1, "smsb"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    const v13, 0x8021

    const v12, 0x8001

    const/16 v11, 0x3f

    const/16 v10, 0x21

    const/4 v9, 0x1

    const/4 v3, 0x0

    .local v3, "maintenanceMode":I
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "com.kddi.maintenanceMode"

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    const-string v6, "pref"

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v7, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .local v4, "pref":Landroid/content/SharedPreferences;
    const-string v6, "maintenanceMode"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v5

    .local v5, "serviceCategory":I
    const/4 v2, 0x0

    .local v2, "isDelivery":Z
    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    const-string v6, "CdmaInboundSmsHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "kddiJudgeDeliveryFromServiceCategory maintenanceMode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " serviceCategory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isDelivery: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .end local v2    # "isDelivery":Z
    .end local v5    # "serviceCategory":I
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "CdmaInboundSmsHandler"

    const-string v7, "maintenanceMode app not found"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "isDelivery":Z
    .restart local v5    # "serviceCategory":I
    :pswitch_0
    if-eq v5, v9, :cond_1

    if-gt v10, v5, :cond_0

    if-gt v5, v11, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_1
    if-eq v5, v12, :cond_2

    if-gt v13, v5, :cond_0

    const v6, 0x803f

    if-gt v5, v6, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_2
    const v6, 0xc001

    if-eq v5, v6, :cond_3

    const v6, 0xc021

    if-gt v6, v5, :cond_0

    const v6, 0xc03f

    if-gt v5, v6, :cond_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_3
    if-eq v5, v9, :cond_6

    if-gt v10, v5, :cond_4

    if-le v5, v11, :cond_6

    :cond_4
    if-eq v5, v12, :cond_6

    if-gt v13, v5, :cond_5

    const v6, 0x803f

    if-le v5, v6, :cond_6

    :cond_5
    const v6, 0xc001

    if-eq v5, v6, :cond_6

    const v6, 0xc021

    if-gt v6, v5, :cond_0

    const v6, 0xc03f

    if-gt v5, v6, :cond_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected kddiJudgeDeliveryFromServiceCategoryForWIFI(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 9
    .param p1, "smsb"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v5

    .local v5, "serviceCategory":I
    const/4 v3, 0x0

    .local v3, "maintenanceMode":I
    const/4 v2, 0x0

    .local v2, "isDelivery":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "com.kddi.maintenanceMode"

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    const-string v6, "pref"

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v7, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .local v4, "pref":Landroid/content/SharedPreferences;
    const-string v6, "maintenanceMode"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    packed-switch v3, :pswitch_data_0

    const v6, 0x8001

    if-eq v5, v6, :cond_0

    const v6, 0x8028

    if-ne v5, v6, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    :goto_1
    const-string v6, "CdmaInboundSmsHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "kddiJudgeDeliveryFromServiceCategoryForWIFI: serviceCategory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isDelivery: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "CdmaInboundSmsHandler"

    const-string v7, "maintenanceMode app not found"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/16 v6, 0x26

    if-eq v5, v6, :cond_2

    const/16 v6, 0x28

    if-ne v5, v6, :cond_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSms(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    const-string v0, "unregistered for 3GPP2 SMS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    return-void
.end method
