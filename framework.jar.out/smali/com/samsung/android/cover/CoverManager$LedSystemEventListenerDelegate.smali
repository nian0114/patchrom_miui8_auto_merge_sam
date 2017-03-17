.class Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate;
.super Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;
.source "CoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/CoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LedSystemEventListenerDelegate"
.end annotation


# static fields
.field private static final MSG_SYSTEM_COVER_EVENT:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

.field final synthetic this$0:Lcom/samsung/android/cover/CoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/cover/CoverManager;Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;Landroid/os/Handler;)V
    .locals 2
    .param p2, "listener"    # Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate;->this$0:Lcom/samsung/android/cover/CoverManager;

    .line 1072
    invoke-direct {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;-><init>()V

    .line 1073
    iput-object p2, p0, Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

    .line 1075
    if-nez p3, :cond_0

    # getter for: Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/cover/CoverManager;->access$000(Lcom/samsung/android/cover/CoverManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1078
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    new-instance v1, Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate$1;-><init>(Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager;)V

    iput-object v1, p0, Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 1092
    return-void

    .line 1075
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$400(Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate;)Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate;

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

    return-object v0
.end method


# virtual methods
.method public getListener()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

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
    .line 1101
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
    .line 1106
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
    .line 1110
    iget-object v1, p0, Lcom/samsung/android/cover/CoverManager$LedSystemEventListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1111
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1112
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1113
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1114
    return-void
.end method
