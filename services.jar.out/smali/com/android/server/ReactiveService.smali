.class public final Lcom/android/server/ReactiveService;
.super Lcom/samsung/android/service/reactive/IReactiveService$Stub;
.source "ReactiveService.java"


# static fields
.field private static final CONNECT_AT_DISTRIBUTOR:I = 0x0

.field private static final CONNECT_DATA_DISTRIBUTOR:I = 0x1

.field public static final DIGEST_SIZE_BYTES:I = 0x20

.field private static final FLAG_ACTIVATED:I = 0x1

.field private static final FLAG_DEACTIVATED:I = 0x0

.field private static final FLAG_TRIGGERED:I = 0x2

.field private static final FRP_FLAG:I = 0x2

.field private static final FRP_SERIVCE_OPERATION_FAILED:I = -0x7

.field private static final JIG_STATE:Ljava/lang/String; = "SWITCH_NAME"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final REACTIVATION_FLAG:I = 0x0

.field private static final REACTIVE_SERVICE_OPERATION_FAILED:I = -0x6

.field private static final REACTIVE_SERVICE_RETURN_FLAG_IS_NOT_EXIST:I = -0x3

.field private static final REACTIVE_SERVICE_RETURN_NATIVE_ERROR:I = -0x1

.field private static final REACTIVE_SERVICE_RETURN_NO_ERROR:I = 0x0

.field private static final REACTIVE_SERVICE_RETURN_PERMISSION_DENIED:I = -0x5

.field private static final REACTIVE_SERVICE_RETURN_STRING_IS_NOT_EXIST:I = -0x4

.field private static final REACTIVE_SERVICE_RETURN_UNSUPPORTED_OPERATION:I = -0x2

.field private static final SERVICE_FLAG:I = 0x1

.field private static final SERVICE_GOOGLE_NWD_SUPPORTED:I = 0x4

.field private static final SERVICE_IS_NOT_SUPPORTED:I = 0x0

.field private static final SERVICE_SAMSUNG_NWD_SUPPORTED:I = 0x2

.field private static final SERVICE_SAMSUNG_SWD_SUPPORTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReactiveService"

.field private static mContext:Landroid/content/Context;

.field private static final mLock:Ljava/lang/Object;

.field private static final mLockUEvent:Ljava/lang/Object;


# instance fields
.field private final mDataBlockFile:Ljava/lang/String;

.field private mErrorCode:I

.field private mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

.field private mServiceSupport:I

.field private mThreadUart:Ljava/lang/Thread;

.field private mThreadUartGoWait:Z

.field private mThreadUsb:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ReactiveService;->mLockUEvent:Ljava/lang/Object;

    const-string v0, "terrier"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ReactiveService;->mThreadUartGoWait:Z

    sput-object p1, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeInit()V

    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeGetSystemSolution()I

    move-result v0

    iput v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    const-string v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ReactiveService;->mDataBlockFile:Ljava/lang/String;

    return-void
.end method

.method private hasPermission(ILjava/lang/String;)Z
    .locals 18
    .param p1, "callingPid"    # I
    .param p2, "callingMethodName"    # Ljava/lang/String;

    .prologue
    const-string v2, "com.osp.app.signin"

    .local v2, "SAMSUNG_ACCOUNT_PKG_NAME":Ljava/lang/String;
    new-instance v14, Landroid/content/pm/Signature;

    const-string v15, "308201c13082012aa00302010202044e5cba90300d06092a864886f70d010105050030243110300e060355040b130773616d73756e673110300e0603550403130773616d73756e673020170d3131303833303130323532305a180f32313131303830363130323532305a30243110300e060355040b130773616d73756e673110300e0603550403130773616d73756e6730819f300d06092a864886f70d010101050003818d0030818902818100d80c410cec5799bb3607d27e0c992c9c35238c42e8726a5ecbb190f6dfb59aee9fa3b1a8812620bafb25b24ce4fc777d4b98da1f7fda95f4a7788a70c635fca893e022a676ae40c906ee83a63d953a310da47d3789af59219621aafb551ebe866f977298c70a9d60e5251270db0d35869cb7c5522b7a82c951189cb5d2b9b19d0203010001300d06092a864886f70d0101050500038181007f6820e6cfd72e67afeba80043da6eccc5ec5b0b994974669d2d7c8876f7e1fa9767dbc930549f875c1604cd8a6ea7d84b66ec500c7bf11526ee4ff77d0720036d61454e9354f5291c0545a43ddf26f9d09e64226239cbd0b98945578d596aa9f9ff7a05c140a2f05fe0260f574bfce94f50273558101f896a9c70be6b05496b"

    invoke-direct {v14, v15}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .local v14, "sigSA":Landroid/content/pm/Signature;
    const-string v5, ""

    .local v5, "currentPkgName":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "ret":Z
    sget-object v15, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const-string v16, "activity"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .local v3, "am":Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v11, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v15, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v0, p1

    if-ne v15, v0, :cond_0

    iget-object v5, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .end local v11    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    sget-object v15, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .local v10, "pm":Landroid/content/pm/PackageManager;
    const/16 v15, 0x40

    :try_start_0
    invoke-virtual {v10, v5, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .local v9, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v15, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    const-string v15, "ReactiveService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "NOT Allowed : pkg does not match uid("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_0
    if-eqz v12, :cond_6

    const-string v15, "ReactiveService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Requested package name = ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v12

    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    :try_start_1
    const-string v15, "android"

    invoke-virtual {v10, v15, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/android/server/ReactiveService;->nativeHasPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    goto :goto_0

    :cond_4
    const-string v15, "com.osp.app.signin"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    iget-object v4, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v4, "arr$":[Landroid/content/pm/Signature;
    array-length v8, v4

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v8, :cond_2

    aget-object v13, v4, v7

    .local v13, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v14, v13}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/android/server/ReactiveService;->nativeHasPermission(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    goto :goto_0

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v4    # "arr$":[Landroid/content/pm/Signature;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v13    # "sig":Landroid/content/pm/Signature;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const-string v15, "ReactiveService"

    const-string v16, "Fail to get packageinfo."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v15, "ReactiveService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Permission denied. Package name = ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private native nativeFinishedSetupWizard()Z
.end method

.method private native nativeGetFlag(I)I
.end method

.method private native nativeGetRandom()[B
.end method

.method private native nativeGetString()Ljava/lang/String;
.end method

.method private native nativeGetSystemSolution()I
.end method

.method private native nativeHasPermission(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeInit()V
.end method

.method private native nativeRemoveString()I
.end method

.method private native nativeSessionAccept([B)[B
.end method

.method private native nativeSessionComplete([B)I
.end method

.method private native nativeSetFlag(IILjava/lang/String;)I
.end method

.method private native nativeSetString(Ljava/lang/String;)I
.end method

.method private native nativeVerify(Ljava/lang/String;I)I
.end method

.method private native nativeisCsUnlockRequest()Z
.end method

.method private wipeLength()V
    .locals 6

    .prologue
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/ReactiveService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .local v3, "outputStream":Ljava/io/FileOutputStream;
    const-string v4, "ReactiveService"

    const-string v5, "Wipe length of data for Persistent partition."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x4

    new-array v1, v4, [B

    .local v1, "data":[B
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .local v0, "ch":Ljava/nio/channels/FileChannel;
    const-wide/16 v4, 0x24

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local v0    # "ch":Ljava/nio/channels/FileChannel;
    .end local v1    # "data":[B
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v4, "ReactiveService"

    const-string v5, "partition not available?"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "data":[B
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "ReactiveService"

    const-string v5, "failed to reset length"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v0
.end method

.method public getFlag(I)I
    .locals 6
    .param p1, "flag"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v3, -0x3

    iput v3, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :goto_0
    return v2

    :pswitch_1
    iget v3, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v3, v3, 0x1

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_1

    :cond_0
    sget-object v4, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->nativeGetFlag(I)I

    move-result v2

    .local v2, "ret":I
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-gez v2, :cond_6

    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :goto_2
    const-string v3, "ReactiveService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFlag() : flag=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], ret=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "ret":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_1
    const/4 v2, -0x2

    .restart local v2    # "ret":I
    goto :goto_1

    .end local v2    # "ret":I
    :pswitch_2
    iget v3, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_5

    sget-object v3, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const-string v4, "persistent_data_block"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object v3, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    iget-object v3, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez v3, :cond_2

    const-string v3, "ReactiveService"

    const-string v4, "Failed to load FRP Manager"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x7

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v3}, Landroid/service/persistentdata/PersistentDataBlockManager;->isEnabled()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .local v1, "frp_flag":Z
    if-eqz v1, :cond_4

    sget-object v4, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeFinishedSetupWizard()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    .restart local v2    # "ret":I
    :goto_3
    monitor-exit v4

    goto :goto_1

    .end local v2    # "ret":I
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .end local v1    # "frp_flag":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, -0x6

    iput v3, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "frp_flag":Z
    :cond_3
    const/4 v2, 0x2

    .restart local v2    # "ret":I
    goto :goto_3

    .end local v2    # "ret":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "ret":I
    goto :goto_1

    .end local v1    # "frp_flag":Z
    .end local v2    # "ret":I
    :cond_5
    const/4 v2, -0x2

    .restart local v2    # "ret":I
    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getRandom()[B
    .locals 5

    .prologue
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v2, :cond_1

    const/4 v2, -0x2

    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, -0x5

    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    move-object v0, v1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeGetRandom()[B

    move-result-object v0

    .local v0, "ret":[B
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v2, -0x4

    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    move-object v0, v1

    goto :goto_0

    .end local v0    # "ret":[B
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getServiceSupport()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v1, :cond_1

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeGetString()Ljava/lang/String;

    move-result-object v0

    .local v0, "ret":Ljava/lang/String;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, -0x4

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    .end local v0    # "ret":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeString()I
    .locals 4

    .prologue
    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v1, :cond_1

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeRemoveString()I

    move-result v0

    .local v0, "ret":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public sessionAccept([B)[B
    .locals 5
    .param p1, "input"    # [B

    .prologue
    iget v2, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v2, :cond_1

    const/4 v2, -0x2

    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    sget-object v3, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->nativeSessionAccept([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "ret":[B
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    .end local v1    # "ret":[B
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1    # "ret":[B
    :try_start_2
    const-string v2, "ReactiveService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ret":[B
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public sessionComplete([B)I
    .locals 5
    .param p1, "input"    # [B

    .prologue
    iget v2, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v2, :cond_0

    const/4 v2, -0x2

    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :goto_0
    return v1

    :cond_0
    sget-object v3, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->nativeSessionComplete([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "ret":I
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v2, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_2

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeisCsUnlockRequest()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const-string v3, "persistent_data_block"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object v2, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    iget-object v2, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez v2, :cond_1

    const-string v2, "ReactiveService"

    const-string v3, "Failed to load FRP Manager"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x7

    goto :goto_0

    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    .restart local v1    # "ret":I
    :try_start_2
    const-string v2, "ReactiveService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ret":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v1    # "ret":I
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->wipeLength()V

    iget-object v2, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v2}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public setFlag(IILjava/lang/String;)I
    .locals 4
    .param p1, "flag"    # I
    .param p2, "value"    # I
    .param p3, "string"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    const/4 v1, -0x3

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v1, v1, 0x1

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v1, v1, 0x2

    if-gtz v1, :cond_1

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ReactiveService;->nativeSetFlag(IILjava/lang/String;)I

    move-result v0

    .local v0, "ret":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_3

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :goto_1
    const-string v1, "ReactiveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFlag() : flag=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], value=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], ret=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v0    # "ret":I
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_1
.end method

.method public setString(Ljava/lang/String;)I
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v1, :cond_1

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->nativeSetString(Ljava/lang/String;)I

    move-result v0

    .local v0, "ret":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public verify(Ljava/lang/String;I)I
    .locals 4
    .param p1, "vt"    # Ljava/lang/String;
    .param p2, "operation"    # I

    .prologue
    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v1, :cond_1

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/ReactiveService;->nativeVerify(Ljava/lang/String;I)I

    move-result v0

    .local v0, "ret":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
