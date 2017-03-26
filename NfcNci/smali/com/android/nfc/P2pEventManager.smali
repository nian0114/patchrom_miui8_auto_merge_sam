.class public Lcom/android/nfc/P2pEventManager;
.super Ljava/lang/Object;
.source "P2pEventManager.java"

# interfaces
.implements Lcom/android/nfc/P2pEventListener;
.implements Lcom/android/nfc/beam/SendUi$Callback;


# static fields
.field static final ACTION_P2P_CONNECT:Ljava/lang/String; = "com.samsung.nfc.action.P2P_CONNECT"

.field static final ACTION_P2P_DISCONNECT:Ljava/lang/String; = "com.samsung.nfc.action.P2P_DISCONNECT"

.field static final ACTION_P2P_SEND_COMPLETE:Ljava/lang/String; = "com.samsung.nfc.action.P2P_SEND_COMPLETE"

.field static final DBG:Z

.field static final TAG:Ljava/lang/String; = "NfcP2pEventManager"

.field static final VIBRATION_PATTERN:[J


# instance fields
.field final mCallback:Lcom/android/nfc/P2pEventListener$Callback;

.field final mContext:Landroid/content/Context;

.field mInDebounce:Z

.field mNdefReceived:Z

.field mNdefSent:Z

.field final mNfcService:Lcom/android/nfc/NfcService;

.field final mNotificationManager:Landroid/app/NotificationManager;

.field public mPacakgeList:[Ljava/lang/String;

.field final mSendUi:Lcom/android/nfc/beam/SendUi;

.field mSending:Z

.field final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/P2pEventManager;->DBG:Z

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x64
        0x2710
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/P2pEventListener$Callback;

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.sec.android.directshare"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "com.sec.android.directconnect"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mPacakgeList:[Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    .line 71
    iput-object p1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    .line 73
    const-string v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    .line 74
    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 77
    iput-boolean v4, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 78
    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v1, 0xf

    .line 80
    .local v0, "uiModeType":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v1, Lcom/android/nfc/beam/SendUi;

    invoke-direct {v1, p1, p0}, Lcom/android/nfc/beam/SendUi;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/SendUi$Callback;)V

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    goto :goto_0
.end method

.method private runVibrate()V
    .locals 5

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    const v1, 0xc36b

    const/4 v2, -0x1

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Vibrator$MagnitudeTypes;->NotificationMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 290
    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 261
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener$Callback;->onP2pCanceled()V

    .line 262
    return-void
.end method

.method public onP2pHandoverBusy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 200
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 202
    invoke-direct {p0}, Lcom/android/nfc/P2pEventManager;->runVibrate()V

    .line 204
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    const v2, 0x7f070011

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/nfc/beam/SendUi;->finishAndToast(ILjava/lang/String;)V

    .line 205
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 206
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 207
    return-void
.end method

.method public onP2pHandoverNotSupported()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 188
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 190
    invoke-direct {p0}, Lcom/android/nfc/P2pEventManager;->runVibrate()V

    .line 192
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/nfc/beam/SendUi;->finishAndToast(ILjava/lang/String;)V

    .line 194
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 195
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 196
    return-void
.end method

.method public onP2pInRange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 94
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "NfcP2pEventManager"

    const-string v2, "onP2pInRange :: InLockTaskMode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void

    .line 99
    :cond_0
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 100
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    .line 101
    iput-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 104
    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    iget-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    iget-boolean v3, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/nfc/NfcService;->isP2pSendCompleted(ZZ)V

    .line 106
    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v1}, Lcom/android/nfc/beam/SendUi;->takeScreenshot()V

    .line 111
    :cond_1
    const-string v1, "com.samsung.nfc.action.P2P_CONNECT"

    invoke-virtual {p0, v1}, Lcom/android/nfc/P2pEventManager;->sendP2pEventBroadcast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onP2pNfcTapRequested()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 118
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 119
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    .line 120
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 123
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    iget-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    iget-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/NfcService;->isP2pSendCompleted(ZZ)V

    .line 126
    invoke-direct {p0}, Lcom/android/nfc/P2pEventManager;->runVibrate()V

    .line 128
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->takeScreenshot()V

    .line 130
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->showPreSend(Z)V

    .line 132
    :cond_0
    return-void
.end method

.method public onP2pOutOfRange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 232
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 234
    iput-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 236
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0, v2}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 239
    :cond_1
    iput-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 242
    const-string v0, "com.samsung.nfc.action.P2P_DISCONNECT"

    invoke-virtual {p0, v0}, Lcom/android/nfc/P2pEventManager;->sendP2pEventBroadcast(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public onP2pReceiveComplete(Z)V
    .locals 3
    .param p1, "playSound"    # Z

    .prologue
    const/4 v2, 0x1

    .line 212
    invoke-direct {p0}, Lcom/android/nfc/P2pEventManager;->runVibrate()V

    .line 214
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 225
    :cond_1
    iput-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    .line 227
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    iget-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    iget-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/NfcService;->isP2pSendCompleted(ZZ)V

    .line 228
    return-void
.end method

.method public onP2pResumeSend()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 276
    invoke-direct {p0}, Lcom/android/nfc/P2pEventManager;->runVibrate()V

    .line 278
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 279
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->showStartSend()V

    .line 284
    :cond_0
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 285
    return-void
.end method

.method public onP2pSendComplete()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 168
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 170
    invoke-direct {p0}, Lcom/android/nfc/P2pEventManager;->runVibrate()V

    .line 172
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 175
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 176
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 179
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    iget-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    iget-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/NfcService;->isP2pSendCompleted(ZZ)V

    .line 182
    const-string v0, "com.samsung.nfc.action.P2P_SEND_COMPLETE"

    invoke-virtual {p0, v0}, Lcom/android/nfc/P2pEventManager;->sendP2pEventBroadcast(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public onP2pSendConfirmationRequested()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 145
    invoke-direct {p0}, Lcom/android/nfc/P2pEventManager;->runVibrate()V

    .line 147
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->showPreSend(Z)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener$Callback;->onP2pSendConfirmed()V

    goto :goto_0
.end method

.method public onP2pSendDebounce()V
    .locals 2

    .prologue
    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 267
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 268
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->showSendHint()V

    .line 271
    :cond_0
    return-void
.end method

.method public onP2pTimeoutWaitingForLink()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 139
    :cond_0
    return-void
.end method

.method public onSendConfirmed()V
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->showStartSend()V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener$Callback;->onP2pSendConfirmed()V

    .line 254
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 256
    return-void
.end method

.method public sendP2pEventBroadcast(Ljava/lang/String;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/P2pEventManager;->mPacakgeList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 157
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/nfc/P2pEventManager;->mPacakgeList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v2, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 162
    sget-boolean v2, Lcom/android/nfc/P2pEventManager;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NfcP2pEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send p2p "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " event to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/P2pEventManager;->mPacakgeList:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
