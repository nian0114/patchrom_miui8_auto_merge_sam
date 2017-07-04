.class Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
.super Ljava/lang/Object;
.source "GracefulNfcLedCoverController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/GracefulNfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NfcLedTouchListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

.field final token:Landroid/os/IBinder;

.field final type:I

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "type"    # I

    .prologue
    .line 979
    iput-object p1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 980
    iput-object p2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 981
    iput-object p3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    .line 982
    iput p4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    .line 983
    iput p5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    .line 984
    iput p6, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 985
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 989
    const-string v0, "CoverManager.GracefulNfcLedCoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    # getter for: Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->access$1100(Lcom/android/server/cover/GracefulNfcLedCoverController;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 991
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    # getter for: Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->access$1100(Lcom/android/server/cover/GracefulNfcLedCoverController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 992
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 994
    return-void

    .line 992
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCoverTouchAccept()V
    .locals 4

    .prologue
    .line 997
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_1

    .line 998
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v3, "null listener received TouchAccept!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 1004
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_0

    .line 1005
    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchAccept()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1007
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :catch_0
    move-exception v1

    .line 1008
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string v3, "Failed onCoverTouchAccept callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverTouchReject()V
    .locals 4

    .prologue
    .line 1013
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_1

    .line 1014
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v3, "null listener received TouchReject!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 1018
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 1020
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_0

    .line 1021
    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchReject()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1023
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :catch_0
    move-exception v1

    .line 1024
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string v3, "Failed onCoverTouchReject callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSystemCoverEvent(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1029
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_1

    .line 1030
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string/jumbo v3, "null listener received TouchReject!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 1036
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_0

    .line 1037
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1039
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :catch_0
    move-exception v1

    .line 1040
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string v3, "Failed onSystemCoverEvent callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
