.class public Lcom/android/nfc/handover/HandoverDataParser;
.super Ljava/lang/Object;
.source "HandoverDataParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;,
        Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    }
.end annotation


# static fields
.field public static final BT_HANDOVER_LE_ROLE_CENTRAL_ONLY:I = 0x1

.field private static final BT_HANDOVER_TYPE_COD:I = 0xd

.field private static final BT_HANDOVER_TYPE_LE_ROLE:I = 0x1c

.field private static final BT_HANDOVER_TYPE_LONG_LOCAL_NAME:I = 0x9

.field private static final BT_HANDOVER_TYPE_MAC:I = 0x1b

.field private static final BT_HANDOVER_TYPE_SHORT_LOCAL_NAME:I = 0x8

.field private static final CARRIER_POWER_STATE_ACTIVATING:I = 0x2

.field private static final CARRIER_POWER_STATE_ACTIVE:I = 0x1

.field private static final CARRIER_POWER_STATE_INACTIVE:I = 0x0

.field private static final CARRIER_POWER_STATE_UNKNOWN:I = 0x3

.field private static final DBG:Z = false

.field private static final RTD_COLLISION_RESOLUTION:[B

.field private static final TAG:Ljava/lang/String; = "NfcHandover"

.field private static final TYPE_BLE_OOB:[B

.field private static final TYPE_BT_OOB:[B

.field private static final TYPE_NOKIA:[B


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mLocalBluetoothAddress:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "application/vnd.bluetooth.ep.oob"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    .line 46
    const-string v0, "application/vnd.bluetooth.le.oob"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BLE_OOB:[B

    .line 49
    const-string v0, "nokia.com:bt"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_NOKIA:[B

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->RTD_COLLISION_RESOLUTION:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x63t
        0x72t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLock:Ljava/lang/Object;

    .line 97
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 98
    return-void
.end method

.method static addressToReverseBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 489
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, "split":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [B

    .line 492
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 494
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    aget-object v4, v2, v0

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 497
    :cond_0
    return-object v1
.end method

.method static createCollisionRecord()Landroid/nfc/NdefRecord;
    .locals 5

    .prologue
    .line 101
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 102
    .local v0, "random":[B
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 103
    new-instance v1, Landroid/nfc/NdefRecord;

    const/4 v2, 0x1

    sget-object v3, Lcom/android/nfc/handover/HandoverDataParser;->RTD_COLLISION_RESOLUTION:[B

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1
.end method

.method private parseMacFromBluetoothRecord(Ljava/nio/ByteBuffer;)[B
    .locals 4
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 476
    const/4 v3, 0x6

    new-array v0, v3, [B

    .line 477
    .local v0, "address":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 480
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    .line 481
    aget-byte v2, v0, v1

    .line 482
    .local v2, "temp":B
    rsub-int/lit8 v3, v1, 0x5

    aget-byte v3, v0, v3

    aput-byte v3, v0, v1

    .line 483
    rsub-int/lit8 v3, v1, 0x5

    aput-byte v2, v0, v3

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 485
    .end local v2    # "temp":B
    :cond_0
    return-object v0
.end method

.method private tryBluetoothHandoverRequest(Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Landroid/nfc/NdefMessage;
    .locals 3
    .param p1, "bluetoothData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    .prologue
    .line 250
    const/4 v1, 0x0

    .line 251
    .local v1, "selectMessage":Landroid/nfc/NdefMessage;
    if-eqz p1, :cond_0

    .line 259
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 262
    .local v0, "bluetoothActivating":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothHandoverSelectMessage(Z)Landroid/nfc/NdefMessage;

    move-result-object v1

    .line 267
    .end local v0    # "bluetoothActivating":Z
    :cond_0
    return-object v1

    .line 259
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;
    .locals 5
    .param p1, "activating"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 107
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 108
    .local v0, "payload":[B
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 110
    aput-byte v3, v0, v3

    .line 111
    const/16 v1, 0x62

    aput-byte v1, v0, v2

    .line 112
    const/4 v1, 0x3

    aput-byte v4, v0, v1

    .line 113
    new-instance v1, Landroid/nfc/NdefRecord;

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1

    :cond_0
    move v1, v3

    .line 108
    goto :goto_0
.end method

.method createBluetoothHandoverSelectMessage(Z)Landroid/nfc/NdefMessage;
    .locals 5
    .param p1, "activating"    # Z

    .prologue
    .line 168
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    return-object v0
.end method

.method createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 118
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 123
    .local v1, "payload":[B
    array-length v2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 124
    array-length v2, v1

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 126
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 134
    const/4 v2, 0x0

    monitor-exit v3

    .line 141
    :goto_0
    return-object v2

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/nfc/handover/HandoverDataParser;->addressToReverseBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 138
    .local v0, "addressBytes":[B
    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-static {v0, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 139
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    new-instance v2, Landroid/nfc/NdefRecord;

    sget-object v3, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    new-array v4, v7, [B

    const/16 v5, 0x62

    aput-byte v5, v4, v6

    invoke-direct {v2, v8, v3, v4, v1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    goto :goto_0

    .line 139
    .end local v0    # "addressBytes":[B
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public createHandoverRequestMessage()Landroid/nfc/NdefMessage;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 149
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-object v1

    .line 153
    :cond_1
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/nfc/NdefRecord;

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v2

    aput-object v2, v0, v3

    .line 157
    .local v0, "dataRecords":[Landroid/nfc/NdefRecord;
    aget-object v2, v0, v3

    if-eqz v2, :cond_0

    .line 162
    new-instance v1, Landroid/nfc/NdefMessage;

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverRequestRecord()Landroid/nfc/NdefRecord;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    goto :goto_0
.end method

.method createHandoverRequestRecord()Landroid/nfc/NdefRecord;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 189
    new-array v0, v8, [Landroid/nfc/NdefRecord;

    invoke-virtual {p0, v6}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v5

    aput-object v5, v0, v6

    .line 193
    .local v0, "messages":[Landroid/nfc/NdefRecord;
    new-instance v1, Landroid/nfc/NdefMessage;

    invoke-static {}, Lcom/android/nfc/handover/HandoverDataParser;->createCollisionRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-direct {v1, v5, v0}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 195
    .local v1, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v2

    .line 197
    .local v2, "nestedPayload":[B
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 198
    .local v3, "payload":Ljava/nio/ByteBuffer;
    const/16 v5, 0x12

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 199
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 201
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    new-array v4, v5, [B

    .line 202
    .local v4, "payloadBytes":[B
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 203
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 204
    new-instance v5, Landroid/nfc/NdefRecord;

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    const/4 v7, 0x0

    invoke-direct {v5, v8, v6, v7, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v5
.end method

.method createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;
    .locals 8
    .param p1, "alternateCarrier"    # Landroid/nfc/NdefRecord;

    .prologue
    const/4 v5, 0x0

    .line 174
    new-instance v0, Landroid/nfc/NdefMessage;

    new-array v4, v5, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, p1, v4}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 175
    .local v0, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v1

    .line 177
    .local v1, "nestedPayload":[B
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 178
    .local v2, "payload":Ljava/nio/ByteBuffer;
    const/16 v4, 0x12

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 179
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 181
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    new-array v3, v4, [B

    .line 182
    .local v3, "payloadBytes":[B
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 183
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 184
    new-instance v4, Landroid/nfc/NdefRecord;

    const/4 v5, 0x1

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v4
.end method

.method public getIncomingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    .locals 10
    .param p1, "handoverRequest"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v7, 0x0

    .line 213
    if-nez p1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-object v7

    .line 214
    :cond_1
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v8, :cond_0

    .line 218
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v3, v8, v9

    .line 219
    .local v3, "handoverRequestRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 223
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v8

    sget-object v9, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, "bluetoothData":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v2, v0, v5

    .line 230
    .local v2, "dataRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 231
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v8

    sget-object v9, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 232
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/nfc/handover/HandoverDataParser;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v1

    .line 229
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 237
    .end local v2    # "dataRecord":Landroid/nfc/NdefRecord;
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/nfc/handover/HandoverDataParser;->tryBluetoothHandoverRequest(Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Landroid/nfc/NdefMessage;

    move-result-object v4

    .line 238
    .local v4, "hs":Landroid/nfc/NdefMessage;
    if-eqz v4, :cond_0

    .line 239
    new-instance v7, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;

    invoke-direct {v7, v4, v1}, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;-><init>(Landroid/nfc/NdefMessage;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)V

    goto :goto_0
.end method

.method public getOutgoingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 1
    .param p1, "handoverSelect"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    return-object v0
.end method

.method isCarrierActivating(Landroid/nfc/NdefRecord;[B)Z
    .locals 17
    .param p1, "handoverRec"    # Landroid/nfc/NdefRecord;
    .param p2, "carrierId"    # [B

    .prologue
    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v12

    .line 274
    .local v12, "payload":[B
    if-eqz v12, :cond_0

    array-length v14, v12

    const/4 v15, 0x1

    if-gt v14, v15, :cond_1

    :cond_0
    const/4 v14, 0x0

    .line 302
    :goto_0
    return v14

    .line 276
    :cond_1
    array-length v14, v12

    add-int/lit8 v14, v14, -0x1

    new-array v13, v14, [B

    .line 277
    .local v13, "payloadNdef":[B
    const/4 v14, 0x1

    const/4 v15, 0x0

    array-length v0, v12

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-static {v12, v14, v13, v15, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 280
    :try_start_0
    new-instance v11, Landroid/nfc/NdefMessage;

    invoke-direct {v11, v13}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .local v11, "msg":Landroid/nfc/NdefMessage;
    invoke-virtual {v11}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    .local v3, "arr$":[Landroid/nfc/NdefRecord;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v10, :cond_5

    aget-object v2, v3, v9

    .line 286
    .local v2, "alt":Landroid/nfc/NdefRecord;
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    .line 287
    .local v1, "acPayload":[B
    if-eqz v1, :cond_4

    .line 288
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 289
    .local v4, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit8 v7, v14, 0x3

    .line 290
    .local v7, "cps":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v6, v14, 0xff

    .line 291
    .local v6, "carrierRefLength":I
    move-object/from16 v0, p2

    array-length v14, v0

    if-eq v6, v14, :cond_2

    const/4 v14, 0x0

    goto :goto_0

    .line 281
    .end local v1    # "acPayload":[B
    .end local v2    # "alt":Landroid/nfc/NdefRecord;
    .end local v3    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v6    # "carrierRefLength":I
    .end local v7    # "cps":I
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "msg":Landroid/nfc/NdefMessage;
    :catch_0
    move-exception v8

    .line 282
    .local v8, "e":Landroid/nfc/FormatException;
    const/4 v14, 0x0

    goto :goto_0

    .line 293
    .end local v8    # "e":Landroid/nfc/FormatException;
    .restart local v1    # "acPayload":[B
    .restart local v2    # "alt":Landroid/nfc/NdefRecord;
    .restart local v3    # "arr$":[Landroid/nfc/NdefRecord;
    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    .restart local v6    # "carrierRefLength":I
    .restart local v7    # "cps":I
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    .restart local v11    # "msg":Landroid/nfc/NdefMessage;
    :cond_2
    new-array v5, v6, [B

    .line 294
    .local v5, "carrierRefId":[B
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 295
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 297
    const/4 v14, 0x2

    if-ne v7, v14, :cond_3

    const/4 v14, 0x1

    goto :goto_0

    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 285
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v5    # "carrierRefId":[B
    .end local v6    # "carrierRefLength":I
    .end local v7    # "cps":I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 302
    .end local v1    # "acPayload":[B
    .end local v2    # "alt":Landroid/nfc/NdefRecord;
    :cond_5
    const/4 v14, 0x1

    goto :goto_0
.end method

.method public isHandoverSupported()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method parseBleOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 10
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 431
    new-instance v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    invoke-direct {v4}, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;-><init>()V

    .line 432
    .local v4, "result":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    iput-boolean v7, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 433
    const/4 v7, 0x2

    iput v7, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->transport:I

    .line 437
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-lez v7, :cond_1

    .line 439
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 440
    .local v2, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 441
    .local v6, "type":I
    sparse-switch v6, :sswitch_data_0

    .line 462
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 466
    .end local v2    # "len":I
    .end local v6    # "type":I
    :catch_0
    move-exception v1

    .line 467
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "NfcHandover"

    const-string v8, "BT OOB: invalid BT address"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_1
    iget-boolean v7, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v7, :cond_2

    iget-object v7, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v7, :cond_2

    const-string v7, ""

    iput-object v7, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 472
    :cond_2
    :goto_2
    return-object v4

    .line 443
    .restart local v2    # "len":I
    .restart local v6    # "type":I
    :sswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseMacFromBluetoothRecord(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 444
    .local v0, "address":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 445
    iget-object v7, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    iput-object v7, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 446
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 468
    .end local v0    # "address":[B
    .end local v2    # "len":I
    .end local v6    # "type":I
    :catch_1
    move-exception v1

    .line 469
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    const-string v7, "NfcHandover"

    const-string v8, "BT OOB: payload shorter than expected"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 449
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v2    # "len":I
    .restart local v6    # "type":I
    :sswitch_1
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 450
    .local v5, "role":B
    if-ne v5, v9, :cond_0

    .line 452
    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    goto :goto_2

    .line 457
    .end local v5    # "role":B
    :sswitch_2
    add-int/lit8 v7, v2, -0x1

    new-array v3, v7, [B

    .line 458
    .local v3, "nameBytes":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 459
    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v3, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v7, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 441
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0x1b -> :sswitch_0
        0x1c -> :sswitch_1
    .end sparse-switch
.end method

.method public parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 6
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x2

    .line 329
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 330
    .local v0, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v1

    .line 331
    .local v1, "tnf":S
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    .line 334
    .local v2, "type":[B
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v4, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverDataParser;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    .line 354
    :goto_0
    return-object v3

    .line 339
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v3

    if-ne v3, v5, :cond_1

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v4, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BLE_OOB:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverDataParser;->parseBleOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    goto :goto_0

    .line 344
    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    sget-object v3, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 346
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetoothHandoverSelect(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    goto :goto_0

    .line 350
    :cond_2
    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    sget-object v3, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_NOKIA:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 351
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverDataParser;->parseNokia(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    goto :goto_0

    .line 354
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method parseBluetoothHandoverSelect(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 8
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v7, 0x2

    .line 309
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 310
    .local v4, "oob":Landroid/nfc/NdefRecord;
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v5

    if-ne v5, v7, :cond_1

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    sget-object v6, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 312
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/nfc/handover/HandoverDataParser;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v1

    .line 313
    .local v1, "data":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getId()[B

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/nfc/handover/HandoverDataParser;->isCarrierActivating(Landroid/nfc/NdefRecord;[B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 314
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    .line 325
    .end local v1    # "data":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .end local v4    # "oob":Landroid/nfc/NdefRecord;
    :cond_0
    :goto_1
    return-object v1

    .line 319
    .restart local v4    # "oob":Landroid/nfc/NdefRecord;
    :cond_1
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v5

    if-ne v5, v7, :cond_2

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    sget-object v6, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BLE_OOB:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 321
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/nfc/handover/HandoverDataParser;->parseBleOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v1

    goto :goto_1

    .line 309
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    .end local v4    # "oob":Landroid/nfc/NdefRecord;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 12
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 382
    new-instance v6, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    invoke-direct {v6}, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;-><init>()V

    .line 383
    .local v6, "result":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    const/4 v9, 0x0

    iput-boolean v9, v6, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 386
    const/4 v9, 0x2

    :try_start_0
    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 387
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseMacFromBluetoothRecord(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 388
    .local v0, "address":[B
    iget-object v9, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    iput-object v9, v6, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 389
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 391
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-lez v9, :cond_1

    .line 393
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 394
    .local v2, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    .line 395
    .local v8, "type":I
    packed-switch v8, :pswitch_data_0

    .line 417
    :pswitch_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 421
    .end local v0    # "address":[B
    .end local v2    # "len":I
    .end local v8    # "type":I
    :catch_0
    move-exception v1

    .line 422
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v9, "NfcHandover"

    const-string v10, "BT OOB: invalid BT address"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_1
    iget-boolean v9, v6, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v9, :cond_2

    iget-object v9, v6, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v9, :cond_2

    const-string v9, ""

    iput-object v9, v6, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 427
    :cond_2
    return-object v6

    .line 397
    .restart local v0    # "address":[B
    .restart local v2    # "len":I
    .restart local v8    # "type":I
    :pswitch_1
    add-int/lit8 v9, v2, -0x1

    :try_start_1
    new-array v5, v9, [B

    .line 398
    .local v5, "nameBytes":[B
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 399
    new-instance v9, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v5, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v9, v6, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 423
    .end local v0    # "address":[B
    .end local v2    # "len":I
    .end local v5    # "nameBytes":[B
    .end local v8    # "type":I
    :catch_1
    move-exception v1

    .line 424
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    const-string v9, "NfcHandover"

    const-string v10, "BT OOB: payload shorter than expected"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 402
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v0    # "address":[B
    .restart local v2    # "len":I
    .restart local v8    # "type":I
    :pswitch_2
    :try_start_2
    iget-object v9, v6, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 403
    add-int/lit8 v9, v2, -0x1

    new-array v5, v9, [B

    .line 404
    .restart local v5    # "nameBytes":[B
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 405
    new-instance v9, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v5, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v9, v6, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    goto :goto_0

    .line 409
    .end local v5    # "nameBytes":[B
    :pswitch_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 410
    .local v4, "minor":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 411
    .local v3, "major":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 412
    .local v7, "service":I
    shl-int/lit8 v9, v7, 0x10

    shl-int/lit8 v10, v3, 0x8

    add-int/2addr v9, v10

    add-int/2addr v9, v4

    const v10, 0xffffff

    and-int/2addr v9, v10

    iput v9, v6, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->cod:I

    .line 413
    const-string v9, "NfcHandover"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "minor: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", major: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", service: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", btclass: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->cod:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method parseNokia(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 7
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 358
    new-instance v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    invoke-direct {v4}, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;-><init>()V

    .line 359
    .local v4, "result":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 362
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 363
    const/4 v5, 0x6

    new-array v0, v5, [B

    .line 364
    .local v0, "address":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 365
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    iput-object v5, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 366
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 367
    const/16 v5, 0xe

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 368
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 369
    .local v3, "nameLength":I
    new-array v2, v3, [B

    .line 370
    .local v2, "nameBytes":[B
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 371
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v5, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    .line 377
    .end local v0    # "address":[B
    .end local v2    # "nameBytes":[B
    .end local v3    # "nameLength":I
    :goto_0
    iget-boolean v5, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v5, ""

    iput-object v5, v4, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 378
    :cond_0
    return-object v4

    .line 372
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "NfcHandover"

    const-string v6, "nokia: invalid BT address"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 375
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    const-string v5, "NfcHandover"

    const-string v6, "nokia: payload shorter than expected"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
