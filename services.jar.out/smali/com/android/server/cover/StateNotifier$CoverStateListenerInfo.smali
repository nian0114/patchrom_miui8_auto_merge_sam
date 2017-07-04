.class Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
.super Ljava/lang/Object;
.source "StateNotifier.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/StateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverStateListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/cover/StateNotifier;

.field final token:Landroid/os/IBinder;

.field final type:I

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/cover/StateNotifier;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "type"    # I

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/cover/StateNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    .line 152
    iput-object p3, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->component:Landroid/content/ComponentName;

    .line 153
    iput p4, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->pid:I

    .line 154
    iput p5, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->uid:I

    .line 155
    iput p6, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->type:I

    .line 156
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 160
    const-string v0, "CoverManager.StateNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/cover/StateNotifier;

    # getter for: Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cover/StateNotifier;->access$300(Lcom/android/server/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/cover/StateNotifier;

    # getter for: Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cover/StateNotifier;->access$300(Lcom/android/server/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 163
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 165
    return-void

    .line 163
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCoverAppCovered(Z)V
    .locals 4
    .param p1, "covered"    # Z

    .prologue
    .line 222
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_1

    .line 223
    const-string v2, "CoverManager.StateNotifier"

    const-string/jumbo v3, "null listener received CoverState!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->type:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 228
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/ICoverWindowStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverWindowStateListenerCallback;

    move-result-object v0

    .line 230
    .local v0, "callback":Lcom/samsung/android/cover/ICoverWindowStateListenerCallback;
    if-eqz v0, :cond_0

    .line 231
    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverWindowStateListenerCallback;->onCoverAppCovered(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    .end local v0    # "callback":Lcom/samsung/android/cover/ICoverWindowStateListenerCallback;
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.StateNotifier"

    const-string v3, "Failed onCoverAppCovered callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverAttachStateChanged(Z)V
    .locals 4
    .param p1, "attached"    # Z

    .prologue
    .line 204
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_1

    .line 205
    const-string v2, "CoverManager.StateNotifier"

    const-string/jumbo v3, "null listener received CoverState!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->type:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 210
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverStateListenerCallback;

    move-result-object v0

    .line 212
    .local v0, "callback":Lcom/samsung/android/cover/ICoverStateListenerCallback;
    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverStateListenerCallback;->onCoverAttachStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    .end local v0    # "callback":Lcom/samsung/android/cover/ICoverStateListenerCallback;
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.StateNotifier"

    const-string v3, "Failed onCoverAttachStateChanged callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverSwitchStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 168
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_1

    .line 169
    const-string v2, "CoverManager.StateNotifier"

    const-string/jumbo v3, "null listener received CoverState!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 174
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/ICoverManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManagerCallback;

    move-result-object v0

    .line 176
    .local v0, "callback":Lcom/samsung/android/cover/ICoverManagerCallback;
    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverManagerCallback;->coverCallback(Lcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v0    # "callback":Lcom/samsung/android/cover/ICoverManagerCallback;
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.StateNotifier"

    const-string v3, "Failed onCoverStateChanged coverCallback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverSwitchStateChanged(Z)V
    .locals 4
    .param p1, "switchState"    # Z

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_1

    .line 187
    const-string v2, "CoverManager.StateNotifier"

    const-string/jumbo v3, "null listener received CoverState!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->type:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 192
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverStateListenerCallback;

    move-result-object v0

    .line 194
    .local v0, "callback":Lcom/samsung/android/cover/ICoverStateListenerCallback;
    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverStateListenerCallback;->onCoverSwitchStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    .end local v0    # "callback":Lcom/samsung/android/cover/ICoverStateListenerCallback;
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.StateNotifier"

    const-string v3, "Failed onCoverSwitchStateChanged callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
