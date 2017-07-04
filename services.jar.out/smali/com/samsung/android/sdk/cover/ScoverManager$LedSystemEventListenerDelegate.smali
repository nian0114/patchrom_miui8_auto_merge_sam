.class Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate;
.super Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;
.source "ScoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/cover/ScoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LedSystemEventListenerDelegate"
.end annotation


# static fields
.field private static final MSG_SYSTEM_COVER_EVENT:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;

.field final synthetic this$0:Lcom/samsung/android/sdk/cover/ScoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/cover/ScoverManager;Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;Landroid/os/Handler;)V
    .locals 2
    .param p2, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1454
    iput-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate;->this$0:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 1455
    invoke-direct {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;-><init>()V

    .line 1456
    iput-object p2, p0, Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;

    .line 1458
    if-nez p3, :cond_0

    # getter for: Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->access$000(Lcom/samsung/android/sdk/cover/ScoverManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1461
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate$1;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 1475
    return-void

    .line 1458
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate;

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;

    return-object v0
.end method


# virtual methods
.method public getListener()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;

    return-object v0
.end method

.method public onCoverTouchAccept()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1484
    return-void
.end method

.method public onCoverTouchReject()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1489
    return-void
.end method

.method public onSystemCoverEvent(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1493
    iget-object v1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1494
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1495
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1496
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1497
    return-void
.end method
