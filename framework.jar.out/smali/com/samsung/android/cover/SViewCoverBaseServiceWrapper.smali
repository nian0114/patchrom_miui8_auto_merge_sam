.class public Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;
.super Ljava/lang/Object;
.source "SViewCoverBaseServiceWrapper.java"

# interfaces
.implements Lcom/samsung/android/cover/ISViewCoverBaseService;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mService:Lcom/samsung/android/cover/ISViewCoverBaseService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/cover/ISViewCoverBaseService;)V
    .locals 1
    .param p1, "service"    # Lcom/samsung/android/cover/ISViewCoverBaseService;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SViewCoverBaseServiceWrapper"

    iput-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->mService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->mService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v0}, Lcom/samsung/android/cover/ISViewCoverBaseService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isCoverViewShowing()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, "value":Z
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->mService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v3}, Lcom/samsung/android/cover/ISViewCoverBaseService;->isCoverViewShowing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    move v2, v1

    .end local v1    # "value":Z
    .local v2, "value":I
    :goto_0
    return v2

    .end local v2    # "value":I
    .restart local v1    # "value":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Remote Exception"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .restart local v2    # "value":I
    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "value":I
    :catchall_0
    move-exception v3

    move v2, v1

    .restart local v2    # "value":I
    goto :goto_0
.end method

.method public onCoverAppCovered(Z)I
    .locals 3
    .param p1, "covered"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->mService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->onCoverAppCovered(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSViewCoverHide()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->mService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->onSViewCoverHide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSViewCoverShow()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->mService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->onSViewCoverShow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSystemReady()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->mService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->onSystemReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->mService:Lcom/samsung/android/cover/ISViewCoverBaseService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cover/ISViewCoverBaseService;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
