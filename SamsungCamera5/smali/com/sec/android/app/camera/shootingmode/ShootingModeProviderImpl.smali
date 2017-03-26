.class public Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;
.super Ljava/lang/Object;
.source "ShootingModeProviderImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;
.implements Lcom/sec/android/app/camera/interfaces/Engine$PrepareSetShootingModeListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$PrepareStartingPreviewListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$TimerEventListener;


# static fields
.field private static final STATE_ACTIVATED:I = 0x2

.field private static final STATE_ACTIVATING:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_INACTIVATED:I = 0x4

.field private static final STATE_INACTIVATING:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "ShootingModeProviderImpl"


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

.field private mCurrentShootingModeId:I

.field private mCurrentShootingModeState:I

.field private mIsSingleCapturing:Z

.field private mShootingModeList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/interfaces/ShootingMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 48
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 50
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    .line 52
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    .line 53
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModeList:Landroid/util/SparseArray;

    .line 57
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 58
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 59
    return-void
.end method

.method private clearInactiveShootingMode()V
    .locals 6

    .prologue
    .line 334
    const-string v3, "ShootingModeProviderImpl"

    const-string v4, "clearInactiveShootingMode"

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModeList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 336
    .local v2, "shootingModeListClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/interfaces/ShootingMode;>;"
    const/4 v1, 0x0

    .line 337
    .local v1, "key":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 338
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 339
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModeList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    if-eq v3, v4, :cond_0

    .line 340
    const-string v3, "ShootingModeProviderImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearing shooting mode class - id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModeList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 337
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_1
    return-void
.end method

.method private declared-synchronized loadShootingMode(I)V
    .locals 5
    .param p1, "shootingModeId"    # I

    .prologue
    .line 352
    monitor-enter p0

    const/4 v0, 0x0

    .line 353
    .local v0, "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    sparse-switch p1, :sswitch_data_0

    .line 443
    :try_start_0
    const-string v2, "ShootingModeProviderImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong shooting mode id, Failed! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    :goto_0
    monitor-exit p0

    return-void

    .line 355
    :sswitch_0
    :try_start_1
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .local v1, "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 446
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModeList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 447
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 358
    :sswitch_1
    :try_start_2
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Antifog;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Antifog;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 359
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto :goto_1

    .line 361
    :sswitch_2
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Aqua;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Aqua;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 362
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto :goto_1

    .line 364
    :sswitch_3
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Auto;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Auto;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 365
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto :goto_1

    .line 367
    :sswitch_4
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Beauty;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Beauty;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 368
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto :goto_1

    .line 370
    :sswitch_5
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 371
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto :goto_1

    .line 373
    :sswitch_6
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Continuous;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Continuous;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 374
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto :goto_1

    .line 376
    :sswitch_7
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Dual;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Dual;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 377
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto :goto_1

    .line 379
    :sswitch_8
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Environment;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Environment;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 380
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto :goto_1

    .line 382
    :sswitch_9
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/FastMotion;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/FastMotion;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 383
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto :goto_1

    .line 385
    :sswitch_a
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Food;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Food;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 386
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto :goto_1

    .line 388
    :sswitch_b
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/HyperMotion;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 389
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 391
    :sswitch_c
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 392
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 394
    :sswitch_d
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Night;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Night;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 395
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 397
    :sswitch_e
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/NightScene;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/NightScene;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 398
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 400
    :sswitch_f
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Pro;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 401
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 403
    :sswitch_10
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/ProLite;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/ProLite;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 404
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 406
    :sswitch_11
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/RearSelfie;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 407
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 409
    :sswitch_12
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Recording;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Recording;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 410
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 412
    :sswitch_13
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/RichTone;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/RichTone;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 413
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 415
    :sswitch_14
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 416
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 418
    :sswitch_15
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Selfie;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Selfie;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 419
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 421
    :sswitch_16
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 422
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 424
    :sswitch_17
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/SlowMotion;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 425
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 427
    :sswitch_18
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 428
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 430
    :sswitch_19
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Sports;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Sports;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 431
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 433
    :sswitch_1a
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 434
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 436
    :sswitch_1b
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 437
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 439
    :sswitch_1c
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    move-object v0, v1

    .line 440
    .end local v1    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 353
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x3 -> :sswitch_12
        0x7 -> :sswitch_4
        0xe -> :sswitch_13
        0x17 -> :sswitch_d
        0x23 -> :sswitch_18
        0x27 -> :sswitch_e
        0x28 -> :sswitch_19
        0x2a -> :sswitch_2
        0x2d -> :sswitch_14
        0x2e -> :sswitch_16
        0x2f -> :sswitch_7
        0x31 -> :sswitch_1
        0x34 -> :sswitch_1c
        0x37 -> :sswitch_15
        0x38 -> :sswitch_11
        0x3a -> :sswitch_0
        0x3b -> :sswitch_f
        0x3e -> :sswitch_1b
        0x3f -> :sswitch_17
        0x40 -> :sswitch_9
        0x42 -> :sswitch_8
        0x43 -> :sswitch_1a
        0x44 -> :sswitch_a
        0x48 -> :sswitch_c
        0x4a -> :sswitch_b
        0x4b -> :sswitch_10
    .end sparse-switch
.end method


# virtual methods
.method public getMaxFileSizeOfImage()J
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 64
    const-wide/16 v0, 0x0

    .line 66
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->getMaxFileSizeOfImage()J

    move-result-wide v0

    goto :goto_0
.end method

.method public isActivated()Z
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActivating()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 76
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCapturing()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 81
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isZoomAvailable()Z
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->isZoomAvailable()Z

    move-result v0

    goto :goto_0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 4
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v3, 0x2

    .line 97
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    if-ne v0, v3, :cond_0

    .line 98
    const-string v0, "ShootingModeProviderImpl"

    const-string v1, "ShootingMode can not activate because it was already activated."

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string v0, "ShootingModeProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivate - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V

    .line 104
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    .line 105
    const-string v0, "ShootingModeProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivate done - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 110
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onChangeShootingModeParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 0
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    .line 119
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 6
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 123
    const-string v0, "ShootingModeProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateView - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V

    .line 125
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onImageStoringCompleted()Z

    move-result v0

    goto :goto_0
.end method

.method public onInactivate()V
    .locals 3

    .prologue
    .line 137
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 138
    const-string v0, "ShootingModeProviderImpl"

    const-string v1, "ShootingMode can not inactivate because it was not activated."

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string v0, "ShootingModeProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInactivate - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onInactivate()V

    .line 144
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 150
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 158
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 161
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized onLowMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->clearInactiveShootingMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onMenuSelected(II)Z
    .locals 2
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 171
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onMenuSelected(II)Z

    move-result v0

    goto :goto_0
.end method

.method public onRecordKeyReleased()Z
    .locals 2

    .prologue
    .line 179
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0

    .line 182
    :cond_0
    const-string v0, "ShootingModeProviderImpl"

    const-string v1, "onRecordKeyReleased"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onRecordKeyReleased()Z

    move-result v0

    goto :goto_0
.end method

.method public onSetShootingModePrepared(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 2
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    .line 188
    const-string v0, "ShootingModeProviderImpl"

    const-string v1, "onSetShootingModePrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 191
    const-string v0, "ShootingModeProviderImpl"

    const-string v1, "Recording mode does not Engine.setShootingMode at this time."

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setShootingMode(I)V

    goto :goto_0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 2

    .prologue
    .line 199
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 203
    :goto_0
    return v0

    .line 202
    :cond_0
    const-string v0, "ShootingModeProviderImpl"

    const-string v1, "onShutterKeyLongPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onShutterKeyLongPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onShutterKeyPressed()Z
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 211
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onShutterKeyPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 3
    .param p1, "captureMethod"    # I

    .prologue
    .line 216
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 220
    :goto_0
    return v0

    .line 219
    :cond_0
    const-string v0, "ShootingModeProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterKeyReleased - capture method : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onShutterKeyReleased(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onSingleCaptureCancelCompleted()V
    .locals 2

    .prologue
    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    .line 229
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onSingleCaptureEvent(I)V

    goto :goto_0
.end method

.method public onSingleCaptureCompleted()V
    .locals 2

    .prologue
    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    .line 241
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onSingleCaptureEvent(I)V

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 253
    return-void
.end method

.method public onSingleCaptureRequestCancelled()V
    .locals 2

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    .line 261
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onSingleCaptureEvent(I)V

    goto :goto_0
.end method

.method public onSingleCaptureRequested()V
    .locals 2

    .prologue
    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    .line 273
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 277
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onSingleCaptureEvent(I)V

    goto :goto_0
.end method

.method public onSingleCaptureStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    .line 285
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    if-eq v0, v1, :cond_0

    .line 289
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onSingleCaptureEvent(I)V

    goto :goto_0
.end method

.method public onStartingPreviewPrepared(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Lcom/sec/android/seccamera/SecCamera$Parameters;

    .prologue
    .line 293
    const-string v0, "ShootingModeProviderImpl"

    const-string v1, "onStartingPreviewPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onChangeShootingModeParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 295
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->clearInactiveShootingMode()V

    .line 300
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 305
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onTimerEvent(I)V

    goto :goto_0
.end method

.method public onVideoStoringCompleted()Z
    .locals 2

    .prologue
    .line 313
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 316
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onVideoStoringCompleted()Z

    move-result v0

    goto :goto_0
.end method

.method public setShootingMode(I)V
    .locals 4
    .param p1, "shootingModeId"    # I

    .prologue
    .line 321
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    if-eq v1, p1, :cond_0

    .line 322
    const-string v1, "ShootingModeProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShootingMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModeList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/ShootingMode;

    .line 324
    .local v0, "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    if-nez v0, :cond_1

    .line 325
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->loadShootingMode(I)V

    .line 329
    :goto_0
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    .line 331
    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    :cond_0
    return-void

    .line 327
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    :cond_1
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    goto :goto_0
.end method
