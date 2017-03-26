.class public Lcom/sec/android/app/camera/engine/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/CameraHolder$CameraPolicyException;
    }
.end annotation


# static fields
.field private static CAMERA_ID_DUAL_BACK:I = 0x0

.field private static CAMERA_ID_DUAL_FRONT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraHolder"

.field private static sHolder:Lcom/sec/android/app/camera/engine/CameraHolder;


# instance fields
.field private mBackCameraId:I

.field private mCameraId:I

.field private mDeviceArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/seccamera/SecCamera;",
            ">;"
        }
    .end annotation
.end field

.field private mDualBackCameraId:I

.field private mDualFrontCameraId:I

.field private mFrontCameraId:I

.field private mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

.field private mNumberOfCameras:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0xa

    sput v0, Lcom/sec/android/app/camera/engine/CameraHolder;->CAMERA_ID_DUAL_BACK:I

    .line 49
    const/16 v0, 0xb

    sput v0, Lcom/sec/android/app/camera/engine/CameraHolder;->CAMERA_ID_DUAL_FRONT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    .line 54
    iput v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mCameraId:I

    .line 55
    iput v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mBackCameraId:I

    iput v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mFrontCameraId:I

    .line 56
    iput v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDualBackCameraId:I

    iput v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDualFrontCameraId:I

    .line 67
    invoke-static {}, Lcom/sec/android/seccamera/SecCamera;->getNumberOfCameras()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mNumberOfCameras:I

    .line 68
    iget v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mNumberOfCameras:I

    new-array v1, v1, [Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mNumberOfCameras:I

    if-ge v0, v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    new-instance v2, Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    invoke-direct {v2}, Lcom/sec/android/seccamera/SecCamera$CameraInfo;-><init>()V

    aput-object v2, v1, v0

    .line 71
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    aget-object v1, v1, v0

    invoke-static {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V

    .line 72
    iget v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mBackCameraId:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    if-nez v1, :cond_0

    .line 73
    iput v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mBackCameraId:I

    .line 75
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mFrontCameraId:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 76
    iput v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mFrontCameraId:I

    .line 69
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_2
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_DUALCAMERA:Z

    if-eqz v1, :cond_3

    .line 81
    sget v1, Lcom/sec/android/app/camera/engine/CameraHolder;->CAMERA_ID_DUAL_BACK:I

    iput v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDualBackCameraId:I

    .line 82
    sget v1, Lcom/sec/android/app/camera/engine/CameraHolder;->CAMERA_ID_DUAL_FRONT:I

    iput v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDualFrontCameraId:I

    .line 84
    :cond_3
    return-void
.end method

.method private static Assert(Z)V
    .locals 1
    .param p0, "cond"    # Z

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 90
    :cond_0
    return-void
.end method

.method protected static declared-synchronized instance()Lcom/sec/android/app/camera/engine/CameraHolder;
    .locals 2

    .prologue
    .line 93
    const-class v1, Lcom/sec/android/app/camera/engine/CameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/engine/CameraHolder;->sHolder:Lcom/sec/android/app/camera/engine/CameraHolder;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/sec/android/app/camera/engine/CameraHolder;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/CameraHolder;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/engine/CameraHolder;->sHolder:Lcom/sec/android/app/camera/engine/CameraHolder;

    .line 96
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/engine/CameraHolder;->sHolder:Lcom/sec/android/app/camera/engine/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static openCamera(Landroid/app/Activity;I)Lcom/sec/android/seccamera/SecCamera;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 102
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    new-instance v2, Lcom/sec/android/app/camera/engine/CameraHolder$CameraPolicyException;

    invoke-direct {v2}, Lcom/sec/android/app/camera/engine/CameraHolder$CameraPolicyException;-><init>()V

    throw v2

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isCameraRestricted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    const-string v2, "CameraHolder"

    const-string v3, "openCamera CAMERA disable"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v2, Lcom/sec/android/app/camera/engine/CameraHolder$CameraPolicyException;

    invoke-direct {v2}, Lcom/sec/android/app/camera/engine/CameraHolder$CameraPolicyException;-><init>()V

    throw v2

    .line 112
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/engine/CameraHolder;->instance()Lcom/sec/android/app/camera/engine/CameraHolder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/engine/CameraHolder;->open(I)Lcom/sec/android/seccamera/SecCamera;
    :try_end_0
    .catch Lcom/sec/android/seccamera/SecCamera$CameraBusyRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sec/android/seccamera/SecCamera$CameraMaxUsersRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    return-object v2

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Lcom/sec/android/seccamera/SecCamera$CameraBusyRuntimeException;
    throw v1

    .line 115
    .end local v1    # "e":Lcom/sec/android/seccamera/SecCamera$CameraBusyRuntimeException;
    :catch_1
    move-exception v1

    .line 116
    .local v1, "e":Lcom/sec/android/seccamera/SecCamera$CameraMaxUsersRuntimeException;
    throw v1

    .line 117
    .end local v1    # "e":Lcom/sec/android/seccamera/SecCamera$CameraMaxUsersRuntimeException;
    :catch_2
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "openCamera failed"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 123
    :cond_2
    throw v1
.end method


# virtual methods
.method protected getBackCameraId()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mBackCameraId:I

    return v0
.end method

.method protected getCameraDevice(I)Lcom/sec/android/seccamera/SecCamera;
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    const/4 v0, 0x0

    .line 133
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 141
    :goto_0
    return-object v0

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 138
    const-string v1, "CameraHolder"

    const-string v2, "Don\'t have prepared device"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/seccamera/SecCamera;

    goto :goto_0
.end method

.method protected getCameraInfo(I)Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 146
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_DUALCAMERA:Z

    if-eqz v0, :cond_1

    .line 147
    iget v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDualBackCameraId:I

    if-ne p1, v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    iget v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mBackCameraId:I

    aget-object v0, v0, v1

    .line 155
    :goto_0
    return-object v0

    .line 149
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDualFrontCameraId:I

    if-ne p1, v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    iget v1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mFrontCameraId:I

    aget-object v0, v0, v1

    goto :goto_0

    .line 152
    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mInfo:[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    aget-object v0, v0, p1

    goto :goto_0

    .line 155
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDualBackCameraId()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDualBackCameraId:I

    return v0
.end method

.method protected getDualFrontCameraId()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDualFrontCameraId:I

    return v0
.end method

.method protected getFrontCameraId()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mFrontCameraId:I

    return v0
.end method

.method protected getNumberOfCameras()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mNumberOfCameras:I

    return v0
.end method

.method protected declared-synchronized open(I)Lcom/sec/android/seccamera/SecCamera;
    .locals 6
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    if-nez v3, :cond_0

    .line 177
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    .line 180
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/seccamera/SecCamera;

    .line 182
    .local v0, "device":Lcom/sec/android/seccamera/SecCamera;
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_MULTI_INSTANCE_CAMERA:Z

    if-nez v3, :cond_1

    .line 183
    if-eqz v0, :cond_1

    iget v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mCameraId:I

    if-eq v3, p1, :cond_1

    .line 184
    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->release()V

    .line 185
    const/4 v0, 0x0

    .line 186
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    iget v4, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mCameraId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 187
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mCameraId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_1
    if-nez v0, :cond_2

    .line 193
    :try_start_1
    const-string v3, "CameraHolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {p1}, Lcom/sec/android/seccamera/SecCamera;->open(I)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    .line 195
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 196
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/seccamera/SecCamera;->setCameraUsage(I)V

    .line 197
    iput p1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mCameraId:I
    :try_end_1
    .catch Lcom/sec/android/seccamera/SecCamera$CameraBusyRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sec/android/seccamera/SecCamera$CameraMaxUsersRuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    :goto_0
    monitor-exit p0

    return-object v0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Lcom/sec/android/seccamera/SecCamera$CameraBusyRuntimeException;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    .end local v0    # "device":Lcom/sec/android/seccamera/SecCamera;
    .end local v1    # "e":Lcom/sec/android/seccamera/SecCamera$CameraBusyRuntimeException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 200
    .restart local v0    # "device":Lcom/sec/android/seccamera/SecCamera;
    :catch_1
    move-exception v1

    .line 201
    .local v1, "e":Lcom/sec/android/seccamera/SecCamera$CameraMaxUsersRuntimeException;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    .end local v1    # "e":Lcom/sec/android/seccamera/SecCamera$CameraMaxUsersRuntimeException;
    :catch_2
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/RuntimeException;
    const-wide/16 v4, 0xc8

    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 206
    invoke-static {p1}, Lcom/sec/android/seccamera/SecCamera;->open(I)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    .line 207
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 208
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/seccamera/SecCamera;->setCameraUsage(I)V

    .line 209
    iput p1, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mCameraId:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 210
    :catch_3
    move-exception v2

    .line 211
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_5
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 216
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_6
    const-string v3, "CameraHolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reconnect camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->reconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 218
    :catch_4
    move-exception v1

    .line 219
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    const-string v3, "CameraHolder"

    const-string v4, "reconnect failed."

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method protected prepareDevice(I)V
    .locals 6
    .param p1, "cameraId"    # I

    .prologue
    .line 227
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 228
    const-string v3, "CameraHolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraHolder prepareDevice - open Camera Id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x0

    .line 232
    .local v0, "device":Lcom/sec/android/seccamera/SecCamera;
    :try_start_0
    invoke-static {p1}, Lcom/sec/android/seccamera/SecCamera;->open(I)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    .line 233
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 234
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/seccamera/SecCamera;->setCameraUsage(I)V
    :try_end_0
    .catch Lcom/sec/android/seccamera/SecCamera$CameraNoResourceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    .end local v0    # "device":Lcom/sec/android/seccamera/SecCamera;
    :cond_0
    :goto_0
    return-void

    .line 235
    .restart local v0    # "device":Lcom/sec/android/seccamera/SecCamera;
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Lcom/sec/android/seccamera/SecCamera$CameraNoResourceException;
    throw v1

    .line 237
    .end local v1    # "e":Lcom/sec/android/seccamera/SecCamera$CameraNoResourceException;
    :catch_1
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/RuntimeException;
    const-wide/16 v4, 0xc8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 240
    invoke-static {p1}, Lcom/sec/android/seccamera/SecCamera;->open(I)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    .line 241
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 242
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/seccamera/SecCamera;->setCameraUsage(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 243
    :catch_2
    move-exception v2

    .line 244
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    const-string v3, "CameraHolder"

    const-string v4, "openCamera failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_1
    throw v1
.end method

.method protected declared-synchronized release()V
    .locals 5

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/sec/android/app/camera/engine/CameraHolder;->Assert(Z)V

    .line 256
    const-string v2, "CameraHolder"

    const-string v3, "CameraDevice.release()"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mNumberOfCameras:I

    if-ge v1, v2, :cond_2

    .line 258
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/seccamera/SecCamera;

    .line 259
    .local v0, "device":Lcom/sec/android/seccamera/SecCamera;
    if-eqz v0, :cond_0

    .line 260
    const-string v2, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopPreview()V

    .line 262
    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->release()V

    .line 263
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 257
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 254
    .end local v0    # "device":Lcom/sec/android/seccamera/SecCamera;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 266
    .restart local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 267
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    .line 271
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mCameraId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    .line 254
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected declared-synchronized releaseDevices(I)V
    .locals 5
    .param p1, "exceptCameraId"    # I

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/sec/android/app/camera/engine/CameraHolder;->Assert(Z)V

    .line 277
    const-string v2, "CameraHolder"

    const-string v3, "releaseDevices"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mNumberOfCameras:I

    if-ge v1, v2, :cond_2

    .line 279
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/seccamera/SecCamera;

    .line 280
    .local v0, "device":Lcom/sec/android/seccamera/SecCamera;
    if-eqz v0, :cond_0

    if-eq p1, v1, :cond_0

    .line 281
    const-string v2, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->release()V

    .line 283
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CameraHolder;->mDeviceArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 275
    .end local v0    # "device":Lcom/sec/android/seccamera/SecCamera;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 286
    .restart local v1    # "i":I
    :cond_2
    monitor-exit p0

    return-void

    .line 275
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
