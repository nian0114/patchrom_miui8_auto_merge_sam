.class public Lcom/android/nfc/beam/BeamStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BeamStatusReceiver.java"


# static fields
.field public static final ACTION_CANCEL_HANDOVER_TRANSFER:Ljava/lang/String; = "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

.field private static final ACTION_HANDOVER_SESSION_COMPLETE:Ljava/lang/String; = "android.nfc.handover.intent.action.HANDOVER_SESSION_COMPLETE"

.field private static final ACTION_HANDOVER_SESSION_STARTED:Ljava/lang/String; = "android.nfc.handover.intent.action.HANDOVER_SESSION_STARTED"

.field private static final ACTION_HANDOVER_STARTED:Ljava/lang/String; = "android.nfc.handover.intent.action.HANDOVER_STARTED"

.field private static final ACTION_STOP_BLUETOOTH_TRANSFER:Ljava/lang/String; = "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

.field private static final ACTION_TRANSFER_DONE:Ljava/lang/String; = "android.nfc.handover.intent.action.TRANSFER_DONE"

.field private static final ACTION_TRANSFER_PROGRESS:Ljava/lang/String; = "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

.field public static final BEAM_STATUS_PERMISSION:Ljava/lang/String; = "android.permission.NFC_HANDOVER_STATUS"

.field public static final BIGDATA_LOGGING_P2P:Ljava/lang/String; = "com.samsung.nfc.p2p.ERROR"

.field private static final DBG:Z = true

.field public static final DIRECTION_INCOMING:I = 0x0

.field public static final DIRECTION_OUTGOING:I = 0x1

.field public static final EXTRA_ADDRESS:Ljava/lang/String; = "android.nfc.handover.intent.extra.ADDRESS"

.field private static final EXTRA_HANDOVER_DATA_LINK_TYPE:Ljava/lang/String; = "android.nfc.handover.intent.extra.HANDOVER_DATA_LINK_TYPE"

.field public static final EXTRA_INCOMING:Ljava/lang/String; = "com.android.nfc.handover.extra.INCOMING"

.field private static final EXTRA_OBJECT_COUNT:Ljava/lang/String; = "android.nfc.handover.intent.extra.OBJECT_COUNT"

.field public static final EXTRA_TRANSFER_ID:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_ID"

.field private static final EXTRA_TRANSFER_MIMETYPE:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_MIME_TYPE"

.field private static final EXTRA_TRANSFER_PROGRESS:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_PROGRESS"

.field private static final EXTRA_TRANSFER_STATUS:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_STATUS"

.field private static final EXTRA_TRANSFER_URI:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_URI"

.field private static final HANDOVER_TRANSFER_STATUS_FAILURE:I = 0x1

.field private static final HANDOVER_TRANSFER_STATUS_FAILURE_SDCARD_FULL:I = 0x1ee

.field private static final HANDOVER_TRANSFER_STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BeamStatusReceiver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transferManager"    # Lcom/android/nfc/beam/BeamTransferManager;

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    .line 100
    return-void
.end method

.method private handleTransferEvent(Landroid/content/Intent;I)V
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "deviceType"    # I

    .prologue
    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "action":Ljava/lang/String;
    const-string v14, "android.nfc.handover.intent.extra.TRANSFER_ID"

    const/4 v15, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 137
    .local v7, "id":I
    const-string v14, "android.nfc.handover.intent.extra.ADDRESS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 139
    .local v11, "sourceAddress":Ljava/lang/String;
    if-nez v11, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    if-nez v14, :cond_2

    .line 144
    const/4 v14, -0x1

    if-eq v7, v14, :cond_0

    .line 145
    const/4 v14, 0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_0

    .line 146
    const-string v14, "BeamStatusReceiver"

    const-string v15, "Didn\'t find transfer, stopping"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v3, Landroid/content/Intent;

    const-string v14, "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v3, "cancelIntent":Landroid/content/Intent;
    const-string v14, "android.nfc.handover.intent.extra.TRANSFER_ID"

    invoke-virtual {v3, v14, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 155
    .end local v3    # "cancelIntent":Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v14, v7}, Lcom/android/nfc/beam/BeamTransferManager;->setBluetoothTransferId(I)V

    .line 157
    const-string v14, "android.nfc.handover.intent.action.TRANSFER_DONE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 158
    const-string v14, "android.nfc.handover.intent.extra.TRANSFER_STATUS"

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 160
    .local v6, "handoverStatus":I
    const-string v14, "BeamStatusReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "transfer done, handoverstatus is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-nez v6, :cond_4

    .line 162
    const-string v14, "android.nfc.handover.intent.extra.TRANSFER_URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 163
    .local v13, "uriString":Ljava/lang/String;
    const-string v14, "android.nfc.handover.intent.extra.TRANSFER_MIME_TYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 164
    .local v9, "mimeType":Ljava/lang/String;
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 165
    .local v12, "uri":Landroid/net/Uri;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_3

    .line 168
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    .line 171
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v12, v9}, Lcom/android/nfc/beam/BeamTransferManager;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v12    # "uri":Landroid/net/Uri;
    .end local v13    # "uriString":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/android/nfc/beam/BeamTransferManager;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    .line 175
    const/4 v14, 0x1

    if-ne v6, v14, :cond_5

    const/16 v14, 0x1ea

    if-eq v6, v14, :cond_6

    .line 176
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v14, "com.samsung.nfc.p2p.ERROR"

    invoke-direct {v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v2, "bigdataIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mContext:Landroid/content/Context;

    const-string v15, "com.samsung.permission.ABEAM_ERROR"

    invoke-virtual {v14, v2, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 181
    .end local v2    # "bigdataIntent":Landroid/content/Intent;
    :cond_6
    const/16 v14, 0x1ee

    if-ne v6, v14, :cond_0

    .line 182
    :try_start_0
    const-string v14, "BeamStatusReceiver"

    const-string v15, "Displays popup because there\'re not enough memory in device."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v8, Landroid/content/Intent;

    const-string v14, "com.samsung.nfc.AndroidBeamPopUp"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v8, "memoryPopupIntent":Landroid/content/Intent;
    const-string v14, "POPUP_MODE"

    const-string v15, "disk_full"

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const/high16 v14, 0x10000000

    invoke-virtual {v8, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 188
    .end local v8    # "memoryPopupIntent":Landroid/content/Intent;
    :catch_0
    move-exception v5

    .line 189
    .local v5, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v5}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 193
    .end local v5    # "e":Landroid/content/ActivityNotFoundException;
    .end local v6    # "handoverStatus":I
    :cond_7
    const-string v14, "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 194
    const-string v14, "android.nfc.handover.intent.extra.TRANSFER_PROGRESS"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v10

    .line 195
    .local v10, "progress":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v14, v10}, Lcom/android/nfc/beam/BeamTransferManager;->updateFileProgress(F)V

    goto/16 :goto_0

    .line 196
    .end local v10    # "progress":F
    :cond_8
    const-string v14, "android.nfc.handover.intent.action.HANDOVER_STARTED"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 197
    const-string v14, "android.nfc.handover.intent.extra.OBJECT_COUNT"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 198
    .local v4, "count":I
    if-lez v4, :cond_0

    .line 199
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v14, v4}, Lcom/android/nfc/beam/BeamTransferManager;->setObjectCount(I)V

    goto/16 :goto_0

    .line 202
    .end local v4    # "count":I
    :cond_9
    const-string v14, "android.nfc.handover.intent.action.HANDOVER_SESSION_COMPLETE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 203
    const-string v14, "BeamStatusReceiver"

    const-string v15, "[QC UI] Session complete"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v14}, Lcom/android/nfc/beam/BeamTransferManager;->finishSession()V

    goto/16 :goto_0

    .line 205
    :cond_a
    const-string v14, "android.nfc.handover.intent.action.HANDOVER_SESSION_STARTED"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 206
    const-string v14, "BeamStatusReceiver"

    const-string v15, "[QC UI] Transfer Session Started!!"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v14}, Lcom/android/nfc/beam/BeamTransferManager;->maybeCancelNotification()V

    goto/16 :goto_0
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.handover.intent.action.TRANSFER_DONE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v1, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v1, "android.nfc.handover.intent.action.HANDOVER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "android.nfc.handover.intent.action.HANDOVER_SESSION_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v1, "android.nfc.handover.intent.action.HANDOVER_SESSION_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.nfc.handover.intent.extra.HANDOVER_DATA_LINK_TYPE"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 108
    .local v1, "dataLinkType":I
    const-string v2, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/android/nfc/beam/BeamStatusReceiver;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v2}, Lcom/android/nfc/beam/BeamTransferManager;->cancel()V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const-string v2, "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.nfc.handover.intent.action.TRANSFER_DONE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.nfc.handover.intent.action.HANDOVER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.nfc.handover.intent.action.HANDOVER_SESSION_COMPLETE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.nfc.handover.intent.action.HANDOVER_SESSION_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    :cond_2
    invoke-direct {p0, p2, v1}, Lcom/android/nfc/beam/BeamStatusReceiver;->handleTransferEvent(Landroid/content/Intent;I)V

    goto :goto_0
.end method
