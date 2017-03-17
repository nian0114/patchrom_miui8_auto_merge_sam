.class Lcom/ipsec/service/IPsecServiceCallbackList;
.super Ljava/lang/Object;
.source "IPsecServiceCallbackList.java"


# static fields
.field private static final COMPONENT:Ljava/lang/String; = "IPsecServiceCallbackList"

.field private static final TAG:Ljava/lang/String; = "VPNC"


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/ipsec/client/IIPsecServiceCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/ipsec/service/IPsecServiceCallbackList;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method register(Lcom/ipsec/client/IIPsecServiceCallback;I)V
    .locals 2
    .param p1, "cb"    # Lcom/ipsec/client/IIPsecServiceCallback;
    .param p2, "pid"    # I

    .prologue
    iget-object v0, p0, Lcom/ipsec/service/IPsecServiceCallbackList;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    return-void
.end method

.method unregister(Lcom/ipsec/client/IIPsecServiceCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/ipsec/client/IIPsecServiceCallback;

    .prologue
    iget-object v0, p0, Lcom/ipsec/service/IPsecServiceCallbackList;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method valueChanged(ILandroid/os/Bundle;)V
    .locals 10
    .param p1, "pid"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    if-ne p1, v7, :cond_0

    const/4 v6, 0x1

    :cond_0
    :try_start_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .local v5, "isBroadcast":Ljava/lang/Boolean;
    iget-object v6, p0, Lcom/ipsec/service/IPsecServiceCallbackList;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .local v2, "callbackCount":I
    const-string v6, "VPNC"

    const-string v7, "IPsecServiceCallbackList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " callbacks"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    const-string v6, "VPNC"

    const-string v7, "IPsecServiceCallbackList"

    const-string v8, "Trying callback"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/ipsec/service/IPsecServiceCallbackList;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "applicationPid":I
    if-eq p1, v0, :cond_1

    .end local v0    # "applicationPid":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/ipsec/service/IPsecServiceCallbackList;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/ipsec/client/IIPsecServiceCallback;

    .local v1, "callback":Lcom/ipsec/client/IIPsecServiceCallback;
    invoke-interface {v1, p2}, Lcom/ipsec/client/IIPsecServiceCallback;->valueChanged(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v1    # "callback":Lcom/ipsec/client/IIPsecServiceCallback;
    .end local v2    # "callbackCount":I
    .end local v4    # "i":I
    .end local v5    # "isBroadcast":Ljava/lang/Boolean;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v6, "VPNC"

    const-string v7, "IPsecServiceCallbackList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "valueChanged callback exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v6, p0, Lcom/ipsec/service/IPsecServiceCallbackList;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .restart local v2    # "callbackCount":I
    .restart local v4    # "i":I
    .restart local v5    # "isBroadcast":Ljava/lang/Boolean;
    :cond_2
    iget-object v6, p0, Lcom/ipsec/service/IPsecServiceCallbackList;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_2

    .end local v2    # "callbackCount":I
    .end local v4    # "i":I
    .end local v5    # "isBroadcast":Ljava/lang/Boolean;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/ipsec/service/IPsecServiceCallbackList;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v6
.end method

.method valueChanged(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/ipsec/service/IPsecServiceCallbackList;->valueChanged(ILandroid/os/Bundle;)V

    return-void
.end method
