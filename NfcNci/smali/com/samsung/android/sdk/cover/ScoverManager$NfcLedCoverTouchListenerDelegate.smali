.class Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;
.super Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;
.source "ScoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/cover/ScoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NfcLedCoverTouchListenerDelegate"
.end annotation


# static fields
.field private static final MSG_LISTEN_COVER_TOUCH_ACCEPT:I = 0x0

.field private static final MSG_LISTEN_COVER_TOUCH_REJECT:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

.field final synthetic this$0:Lcom/samsung/android/sdk/cover/ScoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/cover/ScoverManager;Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;Landroid/os/Handler;)V
    .locals 2
    .param p2, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;->this$0:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 1177
    invoke-direct {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;-><init>()V

    .line 1178
    iput-object p2, p0, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    .line 1180
    if-nez p3, :cond_0

    # getter for: Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->access$000(Lcom/samsung/android/sdk/cover/ScoverManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1183
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate$1;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 1200
    return-void

    .line 1180
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    return-object v0
.end method


# virtual methods
.method public getListener()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    return-object v0
.end method

.method public onCoverTouchAccept()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1209
    return-void
.end method

.method public onCoverTouchReject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1214
    return-void
.end method

.method public onSystemCoverEvent(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1219
    return-void
.end method
