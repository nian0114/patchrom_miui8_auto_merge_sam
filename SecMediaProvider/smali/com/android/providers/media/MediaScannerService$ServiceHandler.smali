.class final Lcom/android/providers/media/MediaScannerService$ServiceHandler;
.super Landroid/os/Handler;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaScannerService;


# direct methods
.method private constructor <init>(Lcom/android/providers/media/MediaScannerService;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/media/MediaScannerService;Lcom/android/providers/media/MediaScannerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/providers/media/MediaScannerService;
    .param p2, "x1"    # Lcom/android/providers/media/MediaScannerService$1;

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;-><init>(Lcom/android/providers/media/MediaScannerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 395
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 396
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 397
    const-string v10, "filepath"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 398
    .local v5, "filePath":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    iget-object v11, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-virtual {v11}, Lcom/android/providers/media/MediaScannerService;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    # invokes: Lcom/android/providers/media/MediaScannerService;->getExternalStorageSdPath(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/providers/media/MediaScannerService;->access$100(Lcom/android/providers/media/MediaScannerService;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, "externalStorageSdPath":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 402
    :try_start_0
    const-string v10, "listener"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 403
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_1

    const/4 v6, 0x0

    .line 405
    .local v6, "listener":Landroid/media/IMediaScannerListener;
    :goto_0
    const/4 v8, 0x0

    .line 407
    .local v8, "uri":Landroid/net/Uri;
    :try_start_1
    iget-object v10, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v11, "mimetype"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/providers/media/MediaScannerService;->scanFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v10, v5, v11}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 411
    :goto_1
    if-eqz v6, :cond_0

    .line 412
    :try_start_2
    invoke-interface {v6, v5, v8}, Landroid/media/IMediaScannerListener;->scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 450
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v4    # "externalStorageSdPath":Ljava/lang/String;
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v6    # "listener":Landroid/media/IMediaScannerListener;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_2
    iget-object v10, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Lcom/android/providers/media/MediaScannerService;->stopSelf(I)V

    .line 451
    return-void

    .line 403
    .restart local v1    # "binder":Landroid/os/IBinder;
    .restart local v4    # "externalStorageSdPath":Ljava/lang/String;
    .restart local v5    # "filePath":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-static {v1}, Landroid/media/IMediaScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerListener;

    move-result-object v6

    goto :goto_0

    .line 408
    .restart local v6    # "listener":Landroid/media/IMediaScannerListener;
    .restart local v8    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 409
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "MediaScannerService"

    const-string v11, "Exception scanning file"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 446
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "listener":Landroid/media/IMediaScannerListener;
    .end local v8    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v3

    .line 447
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v10, "MediaScannerService"

    const-string v11, "Exception in handleMessage"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 415
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_4
    const-string v10, "volume"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 416
    .local v9, "volume":Ljava/lang/String;
    const/4 v2, 0x0

    .line 418
    .local v2, "directories":[Ljava/lang/String;
    const-string v10, "internal"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 420
    const/4 v10, 0x2

    new-array v2, v10, [Ljava/lang/String;

    .end local v2    # "directories":[Ljava/lang/String;
    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/media"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/media"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    .line 439
    .restart local v2    # "directories":[Ljava/lang/String;
    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    .line 440
    const-string v10, "MediaScannerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!@start scanning volume "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v10, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    # invokes: Lcom/android/providers/media/MediaScannerService;->scan([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v2, v9, v4}, Lcom/android/providers/media/MediaScannerService;->access$400(Lcom/android/providers/media/MediaScannerService;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v10, "MediaScannerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!@done scanning volume "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 425
    :cond_4
    const-string v10, "external"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 427
    iget-object v10, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    # getter for: Lcom/android/providers/media/MediaScannerService;->mExternalStoragePaths:[Ljava/lang/String;
    invoke-static {v10}, Lcom/android/providers/media/MediaScannerService;->access$300(Lcom/android/providers/media/MediaScannerService;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 429
    :cond_5
    const-string v10, "external_sd"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 431
    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/String;

    .end local v2    # "directories":[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v4, v2, v10

    .restart local v2    # "directories":[Ljava/lang/String;
    goto :goto_3

    .line 433
    :cond_6
    const-string v10, "external_private"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 435
    iget-object v10, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-virtual {v10}, Lcom/android/providers/media/MediaScannerService;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/providers/media/MediaProvider;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 436
    .local v7, "privatePath":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/String;

    .end local v2    # "directories":[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v7, v2, v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .restart local v2    # "directories":[Ljava/lang/String;
    goto :goto_3
.end method
