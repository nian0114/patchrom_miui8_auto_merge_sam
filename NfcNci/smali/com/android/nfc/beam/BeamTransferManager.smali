.class public Lcom/android/nfc/beam/BeamTransferManager;
.super Ljava/lang/Object;
.source "BeamTransferManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/beam/BeamTransferManager$Callback;
    }
.end annotation


# static fields
.field static final ACTION_STOP_BLUETOOTH_TRANSFER:Ljava/lang/String; = "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

.field static final ACTION_WHITELIST_DEVICE:Ljava/lang/String; = "android.btopp.intent.action.WHITELIST_DEVICE"

.field static final ALIVE_CHECK_MS:I = 0xc350

.field static final BEAM_DIR:Ljava/lang/String;

.field public static final BIGDATA_LOGGING_P2P:Ljava/lang/String; = "com.samsung.nfc.p2p.ERROR"

.field static final DATA_LINK_TYPE_BLUETOOTH:I = 0x1

.field static final DBG:Ljava/lang/Boolean;

.field static final MSG_NEXT_TRANSFER_TIMER:I = 0x0

.field static final MSG_TRANSFER_TIMEOUT:I = 0x1

.field public static final QC_PACKAGE:Ljava/lang/String; = "com.samsung.android.qconnect"

.field static final STATE_CANCELLED:I = 0x6

.field static final STATE_CANCELLING:I = 0x7

.field static final STATE_FAILED:I = 0x4

.field static final STATE_IN_PROGRESS:I = 0x1

.field static final STATE_NEW:I = 0x0

.field static final STATE_SUCCESS:I = 0x5

.field static final STATE_W4_MEDIA_SCANNER:I = 0x3

.field static final STATE_W4_NEXT_TRANSFER:I = 0x2

.field static final TAG:Ljava/lang/String; = "BeamTransferManager"

.field static final WAIT_FOR_NEXT_TRANSFER_MS:I = 0x1f40


# instance fields
.field mBluetoothTransferId:I

.field final mCallback:Lcom/android/nfc/beam/BeamTransferManager$Callback;

.field mCalledBack:Z

.field final mCancelIntent:Landroid/app/PendingIntent;

.field final mContext:Landroid/content/Context;

.field mCurrentCount:I

.field mDataLinkType:I

.field final mHandler:Landroid/os/Handler;

.field final mIncoming:Z

.field mLastUpdate:Ljava/lang/Long;

.field mMediaUris:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mMimeTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mNotificationManager:Landroid/app/NotificationManager;

.field mOutgoingUris:[Landroid/net/Uri;

.field mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPendingComplete:Z

.field mProgress:F

.field final mRemoteActivating:Z

.field final mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field mStartTime:Ljava/lang/Long;

.field mState:I

.field mSuccessCount:I

.field final mSupportQuickConnectUI:Z

.field mTotalCount:I

.field final mTransferId:I

.field mTransferMimeTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mUrisScanned:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    .line 110
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    sput-object v0, Lcom/android/nfc/beam/BeamTransferManager;->BEAM_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/beam/BeamTransferManager$Callback;
    .param p3, "pendingTransfer"    # Lcom/android/nfc/beam/BeamTransferRecord;
    .param p4, "incoming"    # Z

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    .line 200
    iput-object p2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCallback:Lcom/android/nfc/beam/BeamTransferManager$Callback;

    .line 201
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 202
    iput-boolean p4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    .line 203
    iget v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->id:I

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    .line 204
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    .line 205
    iget v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mDataLinkType:I

    .line 206
    iget-boolean v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->remoteActivating:Z

    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteActivating:Z

    .line 207
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    .line 209
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    array-length v0, v0

    :goto_0
    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    .line 210
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mLastUpdate:Ljava/lang/Long;

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mProgress:F

    .line 212
    iput v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    .line 213
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferMimeTypes:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMediaUris:Ljava/util/HashMap;

    .line 220
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->buildCancelIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCancelIntent:Landroid/app/PendingIntent;

    .line 221
    iput v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUrisScanned:I

    .line 222
    iput v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    .line 223
    iput v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    .line 224
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mOutgoingUris:[Landroid/net/Uri;

    .line 225
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    .line 226
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0xc350

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 227
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 230
    invoke-direct {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isSupportQuickConnectUI()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSupportQuickConnectUI:Z

    .line 231
    return-void

    :cond_0
    move v0, v1

    .line 209
    goto :goto_0

    .line 213
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/beam/BeamTransferManager$Callback;
    .param p3, "incoming"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCallback:Lcom/android/nfc/beam/BeamTransferManager$Callback;

    .line 165
    iput-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 166
    iput-boolean p3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    .line 167
    iput v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    .line 169
    iput v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mDataLinkType:I

    .line 170
    iput-boolean v5, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteActivating:Z

    .line 171
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    .line 173
    iput v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mLastUpdate:Ljava/lang/Long;

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mProgress:F

    .line 176
    iput v5, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferMimeTypes:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMediaUris:Ljava/util/HashMap;

    .line 182
    iput-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCancelIntent:Landroid/app/PendingIntent;

    .line 183
    iput v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUrisScanned:I

    .line 184
    iput v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    .line 185
    iput v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    .line 186
    iput-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mOutgoingUris:[Landroid/net/Uri;

    .line 187
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    .line 188
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xc350

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 189
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 192
    invoke-direct {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isSupportQuickConnectUI()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSupportQuickConnectUI:Z

    .line 193
    iput-boolean v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPendingComplete:Z

    .line 194
    return-void
.end method

.method static checkMediaStorage(Ljava/io/File;)Z
    .locals 4
    .param p0, "path"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 621
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 622
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 623
    const-string v1, "BeamTransferManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not dir or not mkdir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :goto_0
    return v0

    .line 626
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 628
    :cond_1
    const-string v1, "BeamTransferManager"

    const-string v2, "External storage not mounted, can\'t store file."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static generateMultiplePath(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "beamRoot"    # Ljava/lang/String;

    .prologue
    .line 656
    const-string v1, "yyyy-MM-dd"

    .line 657
    .local v1, "format":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 658
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "beam-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 659
    .local v3, "newPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 660
    .local v2, "newFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 661
    .local v0, "count":I
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 662
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "beam-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 664
    new-instance v2, Ljava/io/File;

    .end local v2    # "newFile":Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 665
    .restart local v2    # "newFile":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    :cond_0
    return-object v2
.end method

.method static generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 634
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 635
    .local v1, "dotIndex":I
    const/4 v3, 0x0

    .line 636
    .local v3, "extension":Ljava/lang/String;
    const/4 v4, 0x0

    .line 637
    .local v4, "fileNameWithoutExtension":Ljava/lang/String;
    if-gez v1, :cond_0

    .line 638
    const-string v3, ""

    .line 639
    move-object v4, p1

    .line 644
    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 645
    .local v2, "dstFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 646
    .local v0, "count":I
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 647
    new-instance v2, Ljava/io/File;

    .end local v2    # "dstFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 649
    .restart local v2    # "dstFile":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 641
    .end local v0    # "count":I
    .end local v2    # "dstFile":Ljava/io/File;
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 642
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 651
    .restart local v0    # "count":I
    .restart local v2    # "dstFile":Ljava/io/File;
    :cond_1
    return-object v2
.end method

.method private isSupportQuickConnectUI()Z
    .locals 4

    .prologue
    .line 672
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 674
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.samsung.android.qconnect"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    const-string v2, "BeamTransferManager"

    const-string v3, "[QC UI] This device support QuickConnect UI"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 675
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "BeamTransferManager"

    const-string v3, "[QC UI] QuickConnect is not found. show GED UI"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendBluetoothCancelIntentAndUpdateState()V
    .locals 3

    .prologue
    .line 356
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, "cancelIntent":Landroid/content/Intent;
    const-string v1, "android.nfc.handover.intent.extra.TRANSFER_ID"

    iget v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 359
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 360
    return-void
.end method


# virtual methods
.method buildCancelIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 610
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.nfc.handover.intent.extra.ADDRESS"

    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    const-string v3, "com.android.nfc.handover.extra.INCOMING"

    iget-boolean v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 614
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 617
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1

    .line 612
    .end local v1    # "pi":Landroid/app/PendingIntent;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method buildViewIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 596
    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    .line 606
    :goto_0
    return-object v3

    .line 598
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 600
    .local v3, "viewIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 601
    .local v0, "filePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMediaUris:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 602
    .local v1, "mediaUri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 604
    .local v2, "uri":Landroid/net/Uri;
    :goto_1
    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    const v4, 0x10008000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 602
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1
.end method

.method cancel()V
    .locals 6

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 353
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-boolean v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v3, :cond_2

    .line 336
    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 337
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 339
    const-string v3, "BeamTransferManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In cancel(), File "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exists so delete."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 346
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 348
    invoke-direct {p0}, Lcom/android/nfc/beam/BeamTransferManager;->sendBluetoothCancelIntentAndUpdateState()V

    goto :goto_0

    .line 350
    :cond_3
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto :goto_0
.end method

.method public finishSession()V
    .locals 3

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPendingComplete:Z

    if-eqz v0, :cond_0

    .line 685
    const-string v0, "BeamTransferManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QC UI] finishSession :: mState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCallback:Lcom/android/nfc/beam/BeamTransferManager$Callback;

    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, p0, v0}, Lcom/android/nfc/beam/BeamTransferManager$Callback;->onTransferComplete(Lcom/android/nfc/beam/BeamTransferManager;Z)V

    .line 688
    :cond_0
    return-void

    .line 686
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 281
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 283
    :cond_0
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    .line 284
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 285
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    .line 286
    sget-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BeamTransferManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer success, uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mimeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mProgress:F

    .line 288
    if-nez p3, :cond_2

    .line 289
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/nfc/beam/MimeTypeUtil;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    .line 291
    :cond_2
    if-eqz p3, :cond_4

    .line 292
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 304
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    if-ne v0, v1, :cond_8

    .line 305
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v0, :cond_6

    .line 306
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->processFiles()V

    goto :goto_0

    .line 295
    :cond_4
    sget-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "BeamTransferManager"

    const-string v1, "Could not get mimeType for file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 298
    :cond_5
    const-string v0, "BeamTransferManager"

    const-string v1, "Handover transfer failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSupportQuickConnectUI:Z

    if-eqz v0, :cond_3

    .line 301
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->maybeCancelNotification()V

    goto :goto_1

    .line 308
    :cond_6
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    if-lez v0, :cond_7

    const/4 v0, 0x5

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x4

    goto :goto_2

    .line 311
    :cond_8
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 312
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 557
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_4

    .line 560
    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 561
    :cond_0
    const-string v1, "BeamTransferManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive MSG_NEXT_TRANSFER_TIMER but mState is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " so return true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 579
    :goto_0
    return v1

    .line 565
    :cond_1
    iget-boolean v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v3, :cond_2

    .line 566
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->processFiles()V

    :goto_1
    move v1, v2

    .line 570
    goto :goto_0

    .line 568
    :cond_2
    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    if-lez v3, :cond_3

    const/4 v1, 0x5

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto :goto_1

    .line 571
    :cond_4
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v2, :cond_6

    .line 573
    sget-object v2, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "BeamTransferManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transfer timed out for id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_5
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->maybeCancelNotification()V

    .line 575
    invoke-virtual {p0, v1}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 576
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.nfc.p2p.ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v0, "bigdataIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.permission.ABEAM_ERROR"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 579
    .end local v0    # "bigdataIntent":Landroid/content/Intent;
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 318
    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 320
    const/4 v0, 0x0

    .line 322
    :cond_0
    return v0
.end method

.method public maybeCancelNotification()V
    .locals 3

    .prologue
    .line 691
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSupportQuickConnectUI:Z

    if-eqz v0, :cond_0

    .line 692
    const-string v0, "BeamTransferManager"

    const-string v1, "[QC UI] cancel notification!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 695
    :cond_0
    return-void
.end method

.method public declared-synchronized onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 583
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BeamTransferManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scan completed, path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_0
    if-eqz p2, :cond_1

    .line 585
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMediaUris:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :cond_1
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUrisScanned:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUrisScanned:I

    .line 588
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUrisScanned:I

    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 590
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    :cond_2
    monitor-exit p0

    return-void

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method processFiles()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    .line 468
    iget-boolean v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSupportQuickConnectUI:Z

    if-eqz v7, :cond_1

    .line 469
    const-string v7, "BeamTransferManager"

    const-string v8, "[QC UI] processFiles. skip this process."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    if-lez v7, :cond_0

    iget v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    iget v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    if-ne v7, v8, :cond_0

    .line 471
    const-string v7, "BeamTransferManager"

    const-string v8, "[QC UI] state success"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 554
    :goto_0
    return-void

    .line 474
    :cond_0
    const-string v7, "BeamTransferManager"

    const-string v8, "[QC UI] state failed"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {p0, v10}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto :goto_0

    .line 480
    :cond_1
    const-string v7, "BeamTransferManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processFiles : mUris size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, "extRoot":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/nfc/beam/BeamTransferManager;->BEAM_DIR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 486
    .local v1, "beamPath":Ljava/io/File;
    invoke-static {v1}, Lcom/android/nfc/beam/BeamTransferManager;->checkMediaStorage(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 487
    :cond_2
    const-string v7, "BeamTransferManager"

    const-string v8, "Media storage not valid or no uris received."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {p0, v10}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto :goto_0

    .line 505
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 506
    iget-object v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 507
    .local v6, "uri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 509
    .local v4, "mimeType":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 511
    .local v5, "srcFile":Ljava/io/File;
    iget-object v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 543
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "srcFile":Ljava/io/File;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_4
    iget-object v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v0, v7, [Ljava/lang/String;

    .line 544
    .local v0, "arrayPaths":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v8, v7, v9, p0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 545
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto/16 :goto_0
.end method

.method public declared-synchronized setBluetoothTransferId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, -0x1

    .line 272
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    if-ne v0, v1, :cond_0

    if-eq p1, v1, :cond_0

    .line 273
    iput p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    .line 274
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/android/nfc/beam/BeamTransferManager;->sendBluetoothCancelIntentAndUpdateState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_0
    monitor-exit p0

    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setObjectCount(I)V
    .locals 0
    .param p1, "objectCount"    # I

    .prologue
    .line 327
    iput p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    .line 328
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    .line 248
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-nez v0, :cond_0

    .line 249
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mDataLinkType:I

    sget v1, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-ne v0, v1, :cond_0

    .line 250
    new-instance v0, Lcom/android/nfc/beam/BluetoothOppHandover;

    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteActivating:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/nfc/beam/BluetoothOppHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/util/ArrayList;Z)V

    invoke-virtual {v0}, Lcom/android/nfc/beam/BluetoothOppHandover;->start()V

    goto :goto_0
.end method

.method public updateFileProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 260
    iput p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mProgress:F

    .line 268
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto :goto_0
.end method

.method updateNotification()V
    .locals 13

    .prologue
    const/16 v12, 0x64

    const v7, 0x1080089

    const v6, 0x1080082

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 364
    iget-boolean v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSupportQuickConnectUI:Z

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-eqz v8, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 372
    .local v2, "notBuilder":Landroid/app/Notification$Builder;
    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 374
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 376
    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 378
    iget-boolean v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v8, :cond_7

    .line 379
    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v9, 0x7f070008

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "beamString":Ljava/lang/String;
    :goto_1
    iget v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-eq v8, v11, :cond_2

    iget v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    iget v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_a

    .line 385
    :cond_2
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 386
    iget-boolean v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v6, :cond_8

    const v6, 0x1080081

    :goto_2
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 388
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 389
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 390
    iget-boolean v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSupportQuickConnectUI:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-eqz v6, :cond_4

    .line 391
    :cond_3
    const v6, 0x7f020005

    iget-object v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v8, 0x7f07000d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCancelIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6, v7, v8}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 394
    :cond_4
    const/4 v3, 0x0

    .line 395
    .local v3, "progress":F
    iget v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    if-lez v6, :cond_5

    .line 396
    const/high16 v6, 0x3f800000    # 1.0f

    iget v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 397
    .local v4, "progressUnit":F
    iget v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    iget v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mProgress:F

    mul-float/2addr v7, v4

    add-float v3, v6, v7

    .line 399
    .end local v4    # "progressUnit":F
    :cond_5
    iget v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    if-lez v6, :cond_9

    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-lez v6, :cond_9

    .line 400
    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-virtual {v2, v12, v6, v10}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 405
    :goto_3
    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 438
    .end local v3    # "progress":F
    :cond_6
    :goto_4
    iget-object v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 381
    .end local v0    # "beamString":Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v9, 0x7f070009

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "beamString":Ljava/lang/String;
    goto :goto_1

    .line 386
    :cond_8
    const v6, 0x1080088

    goto :goto_2

    .line 402
    .restart local v3    # "progress":F
    :cond_9
    invoke-virtual {v2, v12, v10, v11}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_3

    .line 407
    .end local v3    # "progress":F
    :cond_a
    iget v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_c

    .line 408
    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 409
    iget-boolean v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v8, :cond_b

    :goto_5
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 411
    iget-object v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v7, 0x7f07000a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 412
    iget-object v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v7, 0x7f07000a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 414
    iget-boolean v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v6, :cond_6

    .line 415
    iget-object v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v7, 0x7f07000e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 416
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->buildViewIntent()Landroid/content/Intent;

    move-result-object v5

    .line 417
    .local v5, "viewIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v5, v10, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 420
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_4

    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v5    # "viewIntent":Landroid/content/Intent;
    :cond_b
    move v6, v7

    .line 409
    goto :goto_5

    .line 422
    :cond_c
    iget v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_e

    .line 423
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 424
    iget-boolean v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v8, :cond_d

    :goto_6
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 426
    iget-object v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v7, 0x7f07000b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 427
    iget-object v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v7, 0x7f07000b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_4

    :cond_d
    move v6, v7

    .line 424
    goto :goto_6

    .line 428
    :cond_e
    iget v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v9, 0x6

    if-eq v8, v9, :cond_f

    iget v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_0

    .line 429
    :cond_f
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 430
    iget-boolean v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v8, :cond_10

    :goto_7
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 432
    iget-object v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v7, 0x7f07000c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 433
    iget-object v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v7, 0x7f07000c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_4

    :cond_10
    move v6, v7

    .line 430
    goto :goto_7
.end method

.method updateStateAndNotification(I)V
    .locals 5
    .param p1, "newState"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x1

    .line 442
    iput p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    .line 443
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mLastUpdate:Ljava/lang/Long;

    .line 445
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 446
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xc350

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 451
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->updateNotification()V

    .line 453
    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCalledBack:Z

    if-nez v1, :cond_2

    .line 455
    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCalledBack:Z

    .line 457
    iget-boolean v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSupportQuickConnectUI:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    iget v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    if-lez v1, :cond_3

    .line 458
    const-string v1, "BeamTransferManager"

    const-string v2, "[QC UI] Pending call onTransferComplete!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPendingComplete:Z

    .line 465
    :cond_2
    :goto_0
    return-void

    .line 461
    :cond_3
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCallback:Lcom/android/nfc/beam/BeamTransferManager$Callback;

    iget v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-ne v2, v4, :cond_4

    :goto_1
    invoke-interface {v1, p0, v0}, Lcom/android/nfc/beam/BeamTransferManager$Callback;->onTransferComplete(Lcom/android/nfc/beam/BeamTransferManager;Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method whitelistOppDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 234
    sget-object v1, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BeamTransferManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Whitelisting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for BT OPP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.WHITELIST_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 237
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 238
    return-void
.end method
