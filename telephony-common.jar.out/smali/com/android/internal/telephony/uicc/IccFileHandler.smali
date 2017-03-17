.class public abstract Lcom/android/internal/telephony/uicc/IccFileHandler;
.super Landroid/os/Handler;
.source "IccFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;,
        Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;,
        Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    }
.end annotation


# static fields
.field protected static final COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final COMMAND_READ_BINARY:I = 0xb0

.field protected static final COMMAND_READ_RECORD:I = 0xb2

.field protected static final COMMAND_SEEK:I = 0xa2

.field protected static final COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final COMMAND_UPDATE_RECORD:I = 0xdc

.field protected static final EF_TYPE_CYCLIC:I = 0x3

.field protected static final EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final EVENT_GET_BIG_BINARY_SIZE_DONE:I = 0x76

.field protected static final EVENT_GET_BINARY_SIZE_DONE:I = 0x4

.field protected static final EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field protected static final EVENT_GET_IMG_RECORD_SIZE_DONE:I = 0x70

.field private static final EVENT_GET_ITEM_SIZE_DONE:I = 0x6e

.field private static final EVENT_GET_RECORD_INFO_DONE:I = 0x73

.field protected static final EVENT_GET_RECORD_SIZE_DONE:I = 0x6

.field protected static final EVENT_GET_RECORD_SIZE_IMG_DONE:I = 0xb

.field protected static final EVENT_GET_SIM_FILE_STATUS_DONE:I = 0x74

.field protected static final EVENT_GET_USIM_PB_CAPA_DONE:I = 0x72

.field private static final EVENT_READ_ADN_DONE:I = 0x6f

.field protected static final EVENT_READ_BIG_BINARY_DONE:I = 0x77

.field protected static final EVENT_READ_BINARY_DONE:I = 0x5

.field protected static final EVENT_READ_ICON_DONE:I = 0xa

.field protected static final EVENT_READ_IMG_DONE:I = 0x9

.field protected static final EVENT_READ_IMG_RECORD_DONE:I = 0x71

.field protected static final EVENT_READ_RECORD_DONE:I = 0x7

.field protected static final EVENT_UPDATE_ADN_DONE:I = 0x75

.field protected static final GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field protected static final MAX_SEC_SIM_DATA_STRING:I = 0xfd

.field protected static final READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_1:I = 0x8

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_2:I = 0x9

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_3:I = 0xa

.field protected static final RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final RESPONSE_DATA_FILE_STATUS:I = 0xb

.field protected static final RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final RESPONSE_DATA_LENGTH:I = 0xc

.field protected static final RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final RESPONSE_DATA_RFU_1:I = 0x0

.field protected static final RESPONSE_DATA_RFU_2:I = 0x1

.field protected static final RESPONSE_DATA_RFU_3:I = 0x7

.field protected static final RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final TYPE_DF:I = 0x2

.field protected static final TYPE_EF:I = 0x4

.field protected static final TYPE_MF:I = 0x1

.field protected static final TYPE_RFU:I


# instance fields
.field protected final mAid:Ljava/lang/String;

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 234
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 235
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 236
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 237
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 238
    return-void
.end method

.method private processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z
    .locals 5
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x0

    .line 550
    const/4 v0, 0x0

    .line 551
    .local v0, "flag":Z
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 552
    .local v2, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 553
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 554
    const/4 v0, 0x1

    .line 562
    :cond_0
    :goto_0
    return v0

    .line 556
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v1

    .line 557
    .local v1, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v1, :cond_0

    .line 558
    invoke-direct {p0, p1, v4, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 559
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 539
    if-nez p1, :cond_0

    .line 546
    :goto_0
    return-void

    .line 543
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 545
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public getAdnLikesRecordInfo(ILandroid/os/Message;)V
    .locals 2
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 1301
    const/16 v1, 0x73

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1304
    .local v0, "response":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookStorageInfo(ILandroid/os/Message;)V

    .line 1305
    return-void
.end method

.method public getAdnLikesSimStatusInfo(ILandroid/os/Message;)V
    .locals 11
    .param p1, "efid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 1320
    const/16 v0, 0x74

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 1322
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1324
    return-void
.end method

.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "efid"    # I

    .prologue
    .line 1198
    sparse-switch p1, :sswitch_data_0

    .line 1266
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1211
    :sswitch_0
    const-string v0, "3F007F10"

    goto :goto_0

    .line 1219
    :sswitch_1
    const-string v0, "3F00"

    goto :goto_0

    .line 1222
    :sswitch_2
    const-string v0, "3F007F105F3A"

    goto :goto_0

    .line 1224
    :sswitch_3
    const-string v0, "3F007F105F50"

    goto :goto_0

    .line 1227
    :sswitch_4
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 1241
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIntType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1242
    const-string v0, "3F007F20"

    goto :goto_0

    .line 1244
    :cond_0
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 1248
    :sswitch_6
    const-string v0, "3F007FFF5F1F"

    goto :goto_0

    .line 1259
    :sswitch_7
    const-string v0, "3F00"

    goto :goto_0

    .line 1263
    :sswitch_8
    const-string v0, "3F007F10"

    goto :goto_0

    .line 1198
    :sswitch_data_0
    .sparse-switch
        0x2f05 -> :sswitch_1
        0x2f30 -> :sswitch_7
        0x2f40 -> :sswitch_7
        0x2f41 -> :sswitch_7
        0x2f42 -> :sswitch_7
        0x2f43 -> :sswitch_7
        0x2f50 -> :sswitch_7
        0x2fe2 -> :sswitch_1
        0x2fe7 -> :sswitch_1
        0x2ff0 -> :sswitch_1
        0x4f1c -> :sswitch_6
        0x4f20 -> :sswitch_3
        0x4f30 -> :sswitch_2
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f3e -> :sswitch_4
        0x6f40 -> :sswitch_0
        0x6f42 -> :sswitch_0
        0x6f43 -> :sswitch_8
        0x6f49 -> :sswitch_0
        0x6f4a -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4c -> :sswitch_0
        0x6f4e -> :sswitch_0
        0x6f60 -> :sswitch_5
        0x6f61 -> :sswitch_5
        0x6f73 -> :sswitch_5
        0x6f78 -> :sswitch_5
        0x6f7b -> :sswitch_5
        0x6f7e -> :sswitch_5
        0x6fb7 -> :sswitch_5
        0x6fe3 -> :sswitch_5
        0x6fe5 -> :sswitch_0
    .end sparse-switch
.end method

.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V

    .line 352
    return-void
.end method

.method public getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 333
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "efPath":Ljava/lang/String;
    :goto_0
    const/16 v0, 0x8

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, v3, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILjava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 337
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 339
    return-void

    .end local v3    # "efPath":Ljava/lang/String;
    .end local v10    # "response":Landroid/os/Message;
    :cond_0
    move-object v3, p2

    .line 333
    goto :goto_0
.end method

.method protected abstract getEFPath(I)Ljava/lang/String;
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    .line 1331
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUsimPBCapa(Landroid/os/Message;)V
    .locals 2
    .param p1, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 1313
    const/16 v1, 0x72

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1315
    .local v0, "response":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getUsimPBCapa(Landroid/os/Message;)V

    .line 1316
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 59
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 575
    const/16 v51, 0x0

    .line 594
    .local v51, "response":Landroid/os/Message;
    const/16 v47, 0x0

    .line 597
    .local v47, "path":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move-object/from16 v13, v47

    .line 1185
    .end local v47    # "path":Ljava/lang/String;
    .local v13, "path":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 599
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 600
    .local v38, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 601
    .local v46, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 602
    .local v52, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 604
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v13, v47

    .line 605
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto :goto_1

    .line 608
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v40, v0

    .line 610
    .local v40, "data":[B
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v40, v4

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_3

    .line 612
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v40    # "data":[B
    .end local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :catch_0
    move-exception v41

    move-object/from16 v13, v47

    .line 1179
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    .local v41, "exc":Ljava/lang/Exception;
    :goto_2
    if-eqz v51, :cond_3c

    .line 1180
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 615
    .end local v13    # "path":Ljava/lang/String;
    .end local v41    # "exc":Ljava/lang/Exception;
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    .restart local v40    # "data":[B
    .restart local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .restart local v47    # "path":Ljava/lang/String;
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_3
    const/4 v3, 0x3

    :try_start_1
    new-array v0, v3, [I

    move-object/from16 v50, v0

    .line 616
    .local v50, "recordSize":[I
    const/4 v3, 0x0

    const/16 v4, 0xe

    aget-byte v4, v40, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v50, v3

    .line 617
    const/4 v3, 0x1

    const/4 v4, 0x2

    aget-byte v4, v40, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v6, 0x3

    aget-byte v6, v40, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    aput v4, v50, v3

    .line 619
    const/4 v3, 0x2

    const/4 v4, 0x1

    aget v4, v50, v4

    const/4 v6, 0x0

    aget v6, v50, v6

    div-int/2addr v4, v6

    aput v4, v50, v3

    .line 621
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 622
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 627
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v40    # "data":[B
    .end local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v50    # "recordSize":[I
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 628
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 629
    .restart local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 630
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 632
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v13, v47

    .line 633
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 636
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v40, v0

    .line 637
    .restart local v40    # "data":[B
    move-object/from16 v0, v46

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 639
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, v46

    iget v5, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    .line 640
    .local v5, "fileid":I
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    move/from16 v49, v0

    .line 643
    .local v49, "recordNum":I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_5

    .line 644
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1178
    .end local v5    # "fileid":I
    .end local v40    # "data":[B
    .end local v49    # "recordNum":I
    :catch_1
    move-exception v41

    goto/16 :goto_2

    .line 648
    .restart local v5    # "fileid":I
    .restart local v40    # "data":[B
    .restart local v49    # "recordNum":I
    :cond_5
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_6

    const/4 v3, 0x3

    const/16 v4, 0xd

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_6

    .line 650
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 653
    :cond_6
    const/16 v3, 0xe

    aget-byte v3, v40, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v46

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .line 655
    const/4 v3, 0x2

    aget-byte v3, v40, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v40, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 658
    .local v9, "size":I
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    div-int v3, v9, v3

    move-object/from16 v0, v46

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    .line 660
    move-object/from16 v0, v46

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-eqz v3, :cond_7

    .line 661
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v46

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 664
    :cond_7
    if-nez v13, :cond_3d

    .line 665
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v13

    move-object/from16 v47, v13

    .line 667
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    move-object/from16 v0, v46

    iget v5, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    .end local v5    # "fileid":I
    move-object/from16 v0, v46

    iget v6, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v46

    iget v7, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/4 v8, 0x4

    move-object/from16 v0, v46

    iget v9, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .end local v9    # "size":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/4 v14, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v13, v47

    .line 672
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 674
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v40    # "data":[B
    .end local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v49    # "recordNum":I
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 675
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v51, v0

    .line 676
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 678
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v13, v47

    .line 679
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 682
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v40, v0

    .line 684
    .restart local v40    # "data":[B
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 686
    .restart local v5    # "fileid":I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_9

    .line 687
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 690
    :cond_9
    const/16 v3, 0xd

    aget-byte v3, v40, v3

    if-eqz v3, :cond_a

    .line 691
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 694
    :cond_a
    const/4 v3, 0x2

    aget-byte v3, v40, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v40, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 697
    .restart local v9    # "size":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/4 v14, 0x5

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v14, v5, v15, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v13, v47

    .line 701
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 707
    .end local v5    # "fileid":I
    .end local v9    # "size":I
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v40    # "data":[B
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 708
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 709
    .restart local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 710
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 711
    move-object/from16 v0, v46

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 713
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 717
    move-object/from16 v0, v46

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-nez v3, :cond_b

    .line 718
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 720
    :cond_b
    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v52

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v46

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 724
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    if-le v3, v4, :cond_c

    .line 725
    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 727
    :cond_c
    if-nez v13, :cond_d

    .line 728
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    .line 731
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb2

    move-object/from16 v0, v46

    iget v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, v46

    iget v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/4 v15, 0x4

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v10 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 745
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_4
    :try_start_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 746
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v51, v0

    .line 747
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 749
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v13, v47

    .line 750
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 753
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 754
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 757
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_5
    const-string v3, "IccFileHandler: get record size img done"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 758
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 759
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 760
    .restart local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 761
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 763
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_f

    .line 764
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 765
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 768
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 770
    .local v45, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_10

    .line 771
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 772
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 775
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v40, v0

    .line 776
    .restart local v40    # "data":[B
    move-object/from16 v0, v46

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 777
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    const/16 v3, 0xe

    :try_start_6
    aget-byte v3, v40, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v46

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .line 779
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v40, v4

    if-ne v3, v4, :cond_11

    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_12

    .line 781
    :cond_11
    const-string v3, "IccFileHandler: File type mismatch: Throw Exception"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 782
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 785
    :cond_12
    const-string v3, "IccFileHandler: read EF IMG"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 786
    if-nez v13, :cond_13

    .line 787
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    .line 789
    :cond_13
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb2

    move-object/from16 v0, v46

    iget v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, v46

    iget v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/4 v15, 0x4

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v3, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v10 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 797
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v40    # "data":[B
    .end local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_6
    :try_start_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 798
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 799
    .restart local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 800
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 801
    move-object/from16 v0, v46

    iget-object v13, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 803
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    :try_start_8
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_14

    .line 804
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 808
    :cond_14
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 809
    .restart local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_15

    .line 810
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 814
    :cond_15
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    .line 817
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_7
    :try_start_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 818
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v51, v0

    .line 819
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 821
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_16

    .line 822
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 823
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 826
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_16
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 827
    .restart local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_17

    .line 828
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 829
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 832
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 833
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 838
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 839
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;

    .line 840
    .local v55, "tc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 841
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 843
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_18

    .line 844
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 845
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 848
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_18
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 850
    .restart local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_19

    .line 851
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 852
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 855
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v40, v0

    .line 856
    .restart local v40    # "data":[B
    move-object/from16 v0, v55

    iget v5, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mEfid:I

    .line 858
    .restart local v5    # "fileid":I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_1a

    .line 859
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 862
    :cond_1a
    const/16 v3, 0xd

    aget-byte v3, v40, v3

    if-eqz v3, :cond_1b

    .line 863
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 867
    :cond_1b
    const/4 v3, 0x2

    aget-byte v3, v40, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v40, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 872
    .restart local v9    # "size":I
    const/4 v3, 0x0

    move-object/from16 v0, v55

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    .line 873
    move-object/from16 v0, v55

    iput v9, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mBinSize:I

    .line 874
    div-int/lit16 v3, v9, 0xfd

    move-object/from16 v0, v55

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mCountPhases:I

    .line 875
    const/16 v3, 0xfd

    if-le v9, v3, :cond_1c

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, v55

    iput-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mLoadAll:Z

    .line 876
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v55

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mCountPhases:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v55

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->results:Ljava/util/ArrayList;

    .line 877
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v15, 0xb0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v3, 0xfd

    if-le v9, v3, :cond_1d

    const/16 v20, 0xfd

    :goto_5
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v3, 0x77

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    move/from16 v16, v5

    invoke-interface/range {v14 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v13, v47

    .line 884
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 875
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_1c
    const/4 v3, 0x0

    goto :goto_4

    :cond_1d
    move/from16 v20, v9

    .line 877
    goto :goto_5

    .line 888
    .end local v5    # "fileid":I
    .end local v9    # "size":I
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v40    # "data":[B
    .end local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .end local v55    # "tc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 889
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;

    .line 890
    .restart local v55    # "tc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 891
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 893
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1e

    .line 894
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 895
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 898
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_1e
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 900
    .restart local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_1f

    .line 901
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 902
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 905
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, v55

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mLoadAll:Z

    if-nez v3, :cond_20

    .line 906
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 908
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_20
    move-object/from16 v0, v55

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v52

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v55

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    .line 913
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    move-object/from16 v0, v55

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mCountPhases:I

    if-le v3, v4, :cond_22

    .line 914
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mBinSize:I

    new-array v0, v3, [B

    move-object/from16 v53, v0

    .line 915
    .local v53, "resultData":[B
    const/16 v44, 0x0

    .local v44, "i":I
    :goto_6
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    move/from16 v0, v44

    if-ge v0, v3, :cond_21

    .line 916
    move-object/from16 v0, v55

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->results:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object/from16 v56, v0

    .line 917
    .local v56, "tempData":[B
    const/4 v3, 0x0

    move/from16 v0, v44

    mul-int/lit16 v4, v0, 0xfd

    move-object/from16 v0, v56

    array-length v6, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v53

    invoke-static {v0, v3, v1, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 915
    add-int/lit8 v44, v44, 0x1

    goto :goto_6

    .line 920
    .end local v56    # "tempData":[B
    :cond_21
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 921
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 922
    .end local v13    # "path":Ljava/lang/String;
    .end local v44    # "i":I
    .end local v53    # "resultData":[B
    .restart local v47    # "path":Ljava/lang/String;
    :cond_22
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    mul-int/lit16 v3, v3, 0xfd

    shr-int/lit8 v18, v3, 0x8

    .line 923
    .local v18, "iccIoP1":I
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    mul-int/lit16 v3, v3, 0xfd

    and-int/lit16 v0, v3, 0xff

    move/from16 v19, v0

    .line 925
    .local v19, "IccIoP2":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v15, 0xb0

    move-object/from16 v0, v55

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mEfid:I

    move/from16 v16, v0

    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mEfid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    move-object/from16 v0, v55

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mCountPhases:I

    if-ge v3, v4, :cond_23

    const/16 v20, 0xfd

    :goto_7
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v3, 0x77

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    invoke-interface/range {v14 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v13, v47

    .line 934
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 925
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_23
    move-object/from16 v0, v55

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mBinSize:I

    move-object/from16 v0, v55

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    mul-int/lit16 v4, v4, 0xfd

    sub-int v20, v3, v4

    goto :goto_7

    .line 939
    .end local v18    # "iccIoP1":I
    .end local v19    # "IccIoP2":I
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .end local v55    # "tc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 940
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 941
    .restart local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 942
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 944
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_24

    .line 945
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 946
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 949
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_24
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 951
    .restart local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_25

    .line 952
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 953
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 956
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 957
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 961
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_b
    const/16 v57, 0x0

    .line 962
    .local v57, "total":I
    const/16 v58, 0x0

    .line 963
    .local v58, "used":I
    const/16 v43, 0x0

    .line 965
    .local v43, "firstIndex":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 967
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_26

    .line 974
    :goto_8
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;

    .line 975
    .local v48, "pblc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 977
    move/from16 v0, v58

    move-object/from16 v1, v48

    iput v0, v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mUsedRecords:I

    .line 978
    move/from16 v0, v43

    move-object/from16 v1, v48

    iput v0, v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mRecordNum:I

    .line 980
    const/4 v3, 0x0

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mCountRecords:I

    .line 982
    if-nez v58, :cond_27

    .line 986
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mTotalRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v48

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    .line 987
    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 988
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 969
    .end local v13    # "path":Ljava/lang/String;
    .end local v48    # "pblc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v57, v3, v4

    .line 970
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x1

    aget v58, v3, v4

    .line 971
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x2

    aget v43, v3, v4

    goto :goto_8

    .line 991
    .restart local v48    # "pblc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    :cond_27
    move-object/from16 v0, v48

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mLoadAll:Z

    if-eqz v3, :cond_28

    .line 992
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mTotalRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v48

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    .line 995
    :cond_28
    move-object/from16 v0, v48

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mCountRecords:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mCountRecords:I

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v20, v0

    const/16 v21, 0xb2

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mEfid:I

    move/from16 v22, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mRecordNum:I

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v3, 0x6f

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    invoke-interface/range {v20 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V

    move-object/from16 v13, v47

    .line 998
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1001
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v43    # "firstIndex":I
    .end local v48    # "pblc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    .end local v57    # "total":I
    .end local v58    # "used":I
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 1002
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;

    .line 1004
    .restart local v48    # "pblc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v54, v0

    check-cast v54, Lcom/android/internal/telephony/uicc/SimPBEntryResult;

    .line 1005
    .local v54, "resultPB":Lcom/android/internal/telephony/uicc/SimPBEntryResult;
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 1007
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_29

    .line 1008
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1009
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1011
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pblc EFID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mEfid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "record number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mRecordNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "total record = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mTotalRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Used Record = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mUsedRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "count record = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mCountRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 1013
    move-object/from16 v0, v48

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mLoadAll:Z

    if-nez v3, :cond_2a

    .line 1014
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1015
    .local v25, "emails":[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v54

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    aput-object v4, v25, v3

    .line 1016
    new-instance v20, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mEfid:I

    move/from16 v21, v0

    move-object/from16 v0, v54

    iget v0, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->recordIndex:I

    move/from16 v22, v0

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v23, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v24, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v26, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v27, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v28, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v29, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v30, v3, v4

    invoke-direct/range {v20 .. v30}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    .local v20, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1018
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1019
    .end local v13    # "path":Ljava/lang/String;
    .end local v20    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v25    # "emails":[Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_2a
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1020
    .restart local v25    # "emails":[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v54

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    aput-object v4, v25, v3

    .line 1021
    new-instance v20, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mEfid:I

    move/from16 v21, v0

    move-object/from16 v0, v54

    iget v0, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->recordIndex:I

    move/from16 v22, v0

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v23, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v24, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v26, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v27, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v28, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->numbers:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v29, v3, v4

    move-object/from16 v0, v54

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v30, v3, v4

    invoke-direct/range {v20 .. v30}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    .restart local v20    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    move-object/from16 v0, v54

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->nextIndex:I

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mRecordNum:I

    .line 1024
    move-object/from16 v0, v48

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mUsedRecords:I

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mCountRecords:I

    if-le v3, v4, :cond_2b

    move-object/from16 v0, v54

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->nextIndex:I

    const v4, 0xffff

    if-ne v3, v4, :cond_2b

    .line 1026
    const-string v3, "Read ADN finished unexpected, Try again"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 1027
    move-object/from16 v0, v48

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mEfid:I

    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadItemInPhoneBookStorageAll(ILandroid/os/Message;)V

    :goto_9
    move-object/from16 v13, v47

    .line 1037
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1029
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_2b
    move-object/from16 v0, v48

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mUsedRecords:I

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mCountRecords:I

    if-eq v3, v4, :cond_2c

    move-object/from16 v0, v54

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->nextIndex:I

    const v4, 0xffff

    if-ne v3, v4, :cond_2d

    .line 1030
    :cond_2c
    move-object/from16 v0, v48

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 1032
    :cond_2d
    move-object/from16 v0, v48

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mCountRecords:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mCountRecords:I

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v26, v0

    const/16 v27, 0xb2

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mEfid:I

    move/from16 v28, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mRecordNum:I

    move/from16 v29, v0

    const/16 v30, 0x0

    const/16 v3, 0x6f

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v31

    invoke-interface/range {v26 .. v31}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_9

    .line 1041
    .end local v20    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v25    # "emails":[Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v48    # "pblc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    .end local v54    # "resultPB":Lcom/android/internal/telephony/uicc/SimPBEntryResult;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 1042
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 1043
    .restart local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1044
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 1046
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2e

    .line 1047
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1048
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1051
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_2e
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 1053
    .restart local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_2f

    .line 1054
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1055
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1058
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_2f
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v40, v0

    .line 1059
    .restart local v40    # "data":[B
    move-object/from16 v0, v46

    iget v5, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    .line 1060
    .restart local v5    # "fileid":I
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    move/from16 v49, v0

    .line 1062
    .restart local v49    # "recordNum":I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_30

    .line 1063
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1066
    :cond_30
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_31

    .line 1067
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1070
    :cond_31
    const/16 v3, 0xe

    aget-byte v3, v40, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v46

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .line 1072
    const/4 v3, 0x2

    aget-byte v3, v40, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v40, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 1075
    .restart local v9    # "size":I
    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    div-int v3, v9, v3

    move-object/from16 v0, v46

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    .line 1077
    move-object/from16 v0, v46

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-eqz v3, :cond_32

    .line 1078
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v46

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 1081
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v26, v0

    const/16 v27, 0xb2

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move/from16 v28, v0

    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    move/from16 v30, v0

    const/16 v31, 0x4

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    move/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v3, 0x71

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v36

    invoke-interface/range {v26 .. v36}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v13, v47

    .line 1086
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1090
    .end local v5    # "fileid":I
    .end local v9    # "size":I
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v40    # "data":[B
    .end local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v49    # "recordNum":I
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 1091
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v51, v0

    .line 1093
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_33

    .line 1094
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1095
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1098
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_33
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v39, v0

    .line 1099
    .local v39, "capaResult":[I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1100
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1104
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v39    # "capaResult":[I
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 1105
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v51, v0

    .line 1106
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v42, v0

    .line 1107
    .local v42, "fileStatus":[I
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_34

    .line 1108
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1109
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1112
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_34
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1114
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_35

    .line 1115
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1116
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1119
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_35
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 1121
    .restart local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_36

    .line 1122
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1123
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1126
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_36
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v40, v0

    .line 1128
    .restart local v40    # "data":[B
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_37

    .line 1129
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1132
    :cond_37
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_38

    const/4 v3, 0x3

    const/16 v4, 0xd

    aget-byte v4, v40, v4

    if-eq v3, v4, :cond_38

    .line 1133
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 1135
    :cond_38
    const/4 v3, 0x0

    const/16 v4, 0xb

    aget-byte v4, v40, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v42, v3

    .line 1136
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1137
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1141
    .end local v13    # "path":Ljava/lang/String;
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v40    # "data":[B
    .end local v42    # "fileStatus":[I
    .end local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 1142
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v51, v0

    .line 1144
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_39

    .line 1145
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1146
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1149
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_39
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object/from16 v37, v0

    .line 1150
    .local v37, "RecordInfo":[I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1151
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1156
    .end local v13    # "path":Ljava/lang/String;
    .end local v37    # "RecordInfo":[I
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .restart local v47    # "path":Ljava/lang/String;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 1157
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 1158
    .restart local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1159
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v51, v0

    .line 1161
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3a

    .line 1162
    const/4 v3, 0x0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1163
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1166
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_3a
    invoke-virtual/range {v52 .. v52}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v45

    .line 1168
    .restart local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v45, :cond_3b

    .line 1169
    const-string v3, "getException not null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 1171
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v13, v47

    .line 1172
    .end local v47    # "path":Ljava/lang/String;
    .restart local v13    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1175
    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    :cond_3b
    move-object/from16 v0, v52

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 1182
    .end local v38    # "ar":Landroid/os/AsyncResult;
    .end local v45    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v47    # "path":Ljava/lang/String;
    .end local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v13    # "path":Ljava/lang/String;
    .restart local v41    # "exc":Ljava/lang/Exception;
    :cond_3c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uncaught exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v41    # "exc":Ljava/lang/Exception;
    .restart local v5    # "fileid":I
    .restart local v9    # "size":I
    .restart local v38    # "ar":Landroid/os/AsyncResult;
    .restart local v40    # "data":[B
    .restart local v46    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .restart local v49    # "recordNum":I
    .restart local v52    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_3d
    move-object/from16 v47, v13

    .end local v13    # "path":Ljava/lang/String;
    .restart local v47    # "path":Ljava/lang/String;
    goto/16 :goto_3

    .line 597
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_1
        0x7 -> :sswitch_3
        0x8 -> :sswitch_0
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_5
        0x6e -> :sswitch_b
        0x6f -> :sswitch_c
        0x70 -> :sswitch_d
        0x71 -> :sswitch_a
        0x72 -> :sswitch_e
        0x73 -> :sswitch_10
        0x74 -> :sswitch_f
        0x75 -> :sswitch_11
        0x76 -> :sswitch_8
        0x77 -> :sswitch_9
    .end sparse-switch
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 11
    .param p1, "recordNum"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 290
    const/16 v0, 0xb

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 294
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/16 v6, 0xa

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 298
    return-void
.end method

.method public loadEFImgLinearFixedSTK(ILandroid/os/Message;)V
    .locals 11
    .param p1, "recordNum"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 311
    const/16 v0, 0x70

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 316
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const-string v3, "img"

    const/4 v5, 0x4

    const/16 v6, 0xa

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 319
    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 12
    .param p1, "fileid"    # I
    .param p2, "highOffset"    # I
    .param p3, "lowOffset"    # I
    .param p4, "length"    # I
    .param p5, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 444
    const/16 v1, 0xa

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 447
    .local v11, "response":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IccFileHandler: loadEFImgTransparent fileid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x4f20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " highOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lowOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb0

    const/16 v3, 0x4f20

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 459
    return-void
.end method

.method public loadEFImgTransparentSTK(IIIILandroid/os/Message;)V
    .locals 12
    .param p1, "fileid"    # I
    .param p2, "highOffset"    # I
    .param p3, "lowOffset"    # I
    .param p4, "length"    # I
    .param p5, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 492
    const/4 v1, 0x4

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 494
    .local v11, "response":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xc0

    const-string v4, "img"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 497
    return-void
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V

    .line 278
    return-void
.end method

.method public loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "recordNum"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 257
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "efPath":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p3, v3, p4}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILjava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 262
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 264
    return-void

    .end local v3    # "efPath":Ljava/lang/String;
    .end local v10    # "response":Landroid/os/Message;
    :cond_0
    move-object v3, p2

    .line 257
    goto :goto_0
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    .line 384
    return-void
.end method

.method public loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 365
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "efPath":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, v3, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILjava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 369
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const/16 v6, 0xf

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 371
    return-void

    .end local v3    # "efPath":Ljava/lang/String;
    .end local v10    # "response":Landroid/os/Message;
    :cond_0
    move-object v3, p2

    .line 365
    goto :goto_0
.end method

.method public loadEFTransparent(IILandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "size"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 425
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, v4, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 428
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move v6, p2

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 430
    return-void
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0xc0

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 398
    const-string v0, "LGT"

    const-string v2, "CMCC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    const/16 v0, 0x76

    new-instance v2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 402
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 412
    :goto_0
    return-void

    .line 405
    .end local v10    # "response":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v4, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 408
    .restart local v10    # "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method loadItemInPhoneBookStorageAll(ILandroid/os/Message;)V
    .locals 3
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 1285
    const/16 v1, 0x6e

    new-instance v2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1288
    .local v0, "response":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookStorageInfo(ILandroid/os/Message;)V

    .line 1289
    return-void
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 12
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "data"    # [B
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 512
    const/16 v1, 0x75

    new-instance v2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    move-object/from16 v0, p5

    invoke-direct {v2, p1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 515
    .local v11, "response":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xdc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    array-length v7, p3

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    move v5, p2

    move-object/from16 v9, p4

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 519
    return-void
.end method

.method public updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "recordNum"    # I
    .param p4, "data"    # [B
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 473
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, "efPath":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xdc

    const/4 v5, 0x4

    array-length v6, p4

    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v4, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 477
    return-void

    .end local v3    # "efPath":Ljava/lang/String;
    :cond_0
    move-object v3, p2

    .line 473
    goto :goto_0
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "data"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd6

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    array-length v6, p2

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v2, p1

    move v5, v4

    move-object v10, p3

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 530
    return-void
.end method
