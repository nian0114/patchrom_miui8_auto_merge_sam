.class public Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;
.super Ljava/lang/Object;
.source "VirtualScreenManager.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VirtualScreenManager"


# instance fields
.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

.field private mVirtualScreenId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mContext:Ljava/lang/ref/WeakReference;

    const-string v0, "virtualscreen"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    iget-object v0, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v0, "VirtualScreenManager"

    const-string v1, "VirtualScreenManager created by Activity Context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "VirtualScreenManager"

    const-string v1, "VirtualScreenManager created by not Activity Context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public attachToDefaultDisplay()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->moveVirtualScreenToDisplay(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "packageName":Ljava/lang/String;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v2, v3

    goto :goto_0
.end method

.method public bindVirtualScreen()Z
    .locals 4

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    iget-object v2, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-interface {v3, v1, v2}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->bindVirtualScreen(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "packageName":Ljava/lang/String;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public createVirtualScreen(Landroid/graphics/Rect;)I
    .locals 2
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->createVirtualScreen(Landroid/graphics/Rect;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getDisplayId()I
    .locals 8

    .prologue
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .local v2, "context":Landroid/content/Context;
    instance-of v5, v2, Landroid/app/Activity;

    if-eqz v5, :cond_0

    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .local v1, "activity":Landroid/app/Activity;
    iget-object v5, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->getDisplayId(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v5

    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "context":Landroid/content/Context;
    :goto_0
    return v5

    .restart local v2    # "context":Landroid/content/Context;
    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v4

    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v4}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->getDisplayId(Landroid/os/IBinder;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v5, -0x1

    goto :goto_0
.end method

.method public getOffset()Landroid/graphics/Point;
    .locals 3

    .prologue
    :try_start_0
    iget v1, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    iget v2, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->getOffset(I)Landroid/graphics/Point;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->getDisplayId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->getOffset(I)Landroid/graphics/Point;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public getVirtualScreenSize()Landroid/graphics/Rect;
    .locals 3

    .prologue
    :try_start_0
    iget v1, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    iget v2, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->getVirtualScreenSize(I)Landroid/graphics/Rect;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->getDisplayId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->getVirtualScreenSize(I)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMoving()Z
    .locals 3

    .prologue
    :try_start_0
    iget v1, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    iget v2, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->isMoving(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->getDisplayId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->isMoving(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeVirtualScreen()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    invoke-interface {v1}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->removeVirtualScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setOffset(II)Z
    .locals 1
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->setOffset(IIZ)Z

    move-result v0

    return v0
.end method

.method public setOffset(IIZ)Z
    .locals 8
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I
    .param p3, "force"    # Z

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .local v6, "activity":Landroid/app/Activity;
    iget-object v0, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    invoke-virtual {v6}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, -0x1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->setOffset(Landroid/os/IBinder;IIIZ)Z

    move-result v0

    .end local v6    # "activity":Landroid/app/Activity;
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->setOffset(Landroid/os/IBinder;IIIZ)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->getDisplayId()I

    move-result v2

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->setOffset(Landroid/os/IBinder;IIIZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const-string v2, "VirtualScreenManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Bundle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    invoke-interface {v2, v1, p1, p2}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "packageName":Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mVirtualScreenId:I

    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unBindVirtualScreen()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->unBindVirtualScreen(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "packageName":Ljava/lang/String;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateDisplayOfWindow(Landroid/view/Window;I)Z
    .locals 6
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "displayId"    # I

    .prologue
    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string v3, "VirtualScreenManager"

    const-string v5, "updateDisplayOfWindow window is null. Invalid!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    :goto_0
    return v3

    :cond_0
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .local v1, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    iget-object v3, p0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3, p2}, Landroid/content/Context;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerImpl;

    .local v2, "wm":Landroid/view/WindowManagerImpl;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/view/WindowManagerImpl;->setDisplay(Landroid/view/Display;)V

    const/4 v3, 0x1

    goto :goto_0

    .end local v2    # "wm":Landroid/view/WindowManagerImpl;
    :cond_1
    move v3, v4

    goto :goto_0
.end method
