.class Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;
.super Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualActivityContainer"
.end annotation


# instance fields
.field mDrawn:Z

.field mSurface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;Landroid/app/IActivityContainerCallback;)V
    .locals 2
    .param p2, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "callback"    # Landroid/app/IActivityContainerCallback;

    .prologue
    .line 8312
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    .line 8313
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    .line 8310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mDrawn:Z

    .line 8314
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    .line 8315
    iput-object p3, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 8316
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mContainerState:I

    .line 8317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualActivityContainer{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mIdString:Ljava/lang/String;

    .line 8318
    return-void
.end method

.method private setSurfaceIfReadyLocked()V
    .locals 2

    .prologue
    .line 8401
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mDrawn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mContainerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 8402
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->setSurface(Landroid/view/Surface;)V

    .line 8403
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mContainerState:I

    .line 8405
    :cond_0
    return-void
.end method

.method private setSurfaceLocked(Landroid/view/Surface;III)V
    .locals 6
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8335
    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mContainerState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 8377
    :goto_0
    return-void

    .line 8338
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;

    .line 8340
    .local v0, "virtualActivityDisplay":Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;
    if-nez v0, :cond_1

    .line 8341
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;

    .end local v0    # "virtualActivityDisplay":Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;III)V

    .line 8343
    .restart local v0    # "virtualActivityDisplay":Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 8344
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/am/ActivityStackSupervisor;->access$1000(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mDisplayId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8345
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V

    .line 8348
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    .line 8349
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 8352
    :cond_2
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    .line 8353
    if-eqz p1, :cond_4

    .line 8354
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 8373
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->setSurfaceIfReadyLocked()V

    goto :goto_0

    .line 8356
    :cond_4
    iput v4, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mContainerState:I

    .line 8357
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->setSurface(Landroid/view/Surface;)V

    .line 8360
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_3

    .line 8361
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v3, v4, v3, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    goto :goto_1
.end method


# virtual methods
.method isAttachedLocked()Z
    .locals 1

    .prologue
    .line 8381
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEligibleForNewTasks()Z
    .locals 1

    .prologue
    .line 8395
    const/4 v0, 0x0

    return v0
.end method

.method setDrawn()V
    .locals 2

    .prologue
    .line 8386
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 8387
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mDrawn:Z

    .line 8388
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->setSurfaceIfReadyLocked()V

    .line 8389
    monitor-exit v1

    .line 8390
    return-void

    .line 8389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSurface(Landroid/view/Surface;III)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    .line 8322
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setSurface(Landroid/view/Surface;III)V

    .line 8324
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 8325
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 8327
    .local v0, "origId":J
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->setSurfaceLocked(Landroid/view/Surface;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8329
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8331
    monitor-exit v3

    .line 8332
    return-void

    .line 8329
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 8331
    .end local v0    # "origId":J
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method
