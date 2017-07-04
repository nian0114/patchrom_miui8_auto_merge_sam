.class public Landroid/sec/clipboard/data/ClipboardDataMgr;
.super Ljava/lang/Object;
.source "ClipboardDataMgr.java"

# interfaces
.implements Landroid/sec/clipboard/data/IClipboardDataList;


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardDataMgr"


# instance fields
.field private final mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

.field private mContext:Landroid/content/Context;

.field private mCurrentListIndex:I

.field private mCurrentListOwnerUid:I

.field private mDataArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/FileManager;",
            ">;"
        }
    .end annotation
.end field

.field private mDataList:Landroid/sec/clipboard/data/file/FileManager;

.field private mIsShared:Z

.field private final mMaxSize:I

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

.field private mUserManager:Landroid/os/UserManager;

.field private tempDeleteItem:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Z)V
    .locals 3
    .param p1, "size"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "shared"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/data/ClipboardDataMgr$1;-><init>(Landroid/sec/clipboard/data/ClipboardDataMgr;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    .line 127
    iput v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    .line 129
    iput-boolean v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mIsShared:Z

    .line 132
    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Landroid/sec/clipboard/data/ClipboardData;

    .line 133
    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    .line 134
    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

    .line 135
    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    .line 139
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    .line 140
    iput-object p2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    .line 141
    iput-boolean p3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mIsShared:Z

    .line 142
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    .line 143
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    .line 144
    invoke-direct {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->initializeClipboardDataMgr(I)V

    .line 145
    return-void
.end method

.method private createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;
    .locals 6
    .param p1, "cat"    # I

    .prologue
    const/4 v5, 0x0

    .line 364
    const/4 v0, 0x0

    .line 366
    .local v0, "fm":Landroid/sec/clipboard/data/file/FileManager;
    add-int/lit16 v3, p1, -0x3e8

    invoke-static {v3}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 367
    invoke-virtual {p0, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v1

    .line 368
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 369
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/data/file/FileManager;

    .line 411
    :goto_0
    return-object v3

    .line 371
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/clipboard"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v2, "rootPath":Ljava/io/File;
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    new-instance v3, Ljava/io/File;

    const-string v4, "clips.info"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v5, v4}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    .line 374
    .restart local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v0

    .line 375
    goto :goto_0

    .line 378
    .end local v1    # "index":I
    .end local v2    # "rootPath":Ljava/io/File;
    :cond_1
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v1

    .line 379
    .restart local v1    # "index":I
    if-ltz v1, :cond_2

    .line 380
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_0

    .line 383
    :cond_2
    const/16 v3, 0x66

    if-ne p1, v3, :cond_4

    .line 384
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/clipboard/secontainer/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 385
    .restart local v2    # "rootPath":Ljava/io/File;
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    new-instance v3, Ljava/io/File;

    const-string v4, "clips.info"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p1, v4}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    .line 386
    .restart local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createUserDBAndConnect, good container, cat:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_3
    invoke-static {v2}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-object v3, v0

    .line 389
    goto :goto_0

    .line 390
    .end local v2    # "rootPath":Ljava/io/File;
    :cond_4
    const/16 v3, 0xc9

    if-lt p1, v3, :cond_6

    const/16 v3, 0x1f4

    if-gt p1, v3, :cond_6

    .line 391
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/clipboard/secontainer/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 392
    .restart local v2    # "rootPath":Ljava/io/File;
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    new-instance v3, Ljava/io/File;

    const-string v4, "clips.info"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p1, v4}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    .line 393
    .restart local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createUserDBAndConnect, third party container, cat:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/clipboard/secontainer/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    move-object v3, v0

    .line 396
    goto/16 :goto_0

    .line 399
    .end local v2    # "rootPath":Ljava/io/File;
    :cond_6
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/clipboard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    .restart local v2    # "rootPath":Ljava/io/File;
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    new-instance v3, Ljava/io/File;

    const-string v4, "clips.info"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p1, v4}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    .line 401
    .restart local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->SUPPORT_KNOX:Z

    if-nez v3, :cond_7

    .line 404
    const/16 v3, 0x44c

    if-gt v3, p1, :cond_7

    const/16 v3, 0x4aa

    if-gt p1, v3, :cond_7

    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/clipboard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v3, v4}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    .line 408
    :cond_7
    if-eqz p1, :cond_8

    add-int/lit16 v3, p1, -0x3e8

    invoke-virtual {p0, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/clipboard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v3, v4}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    :cond_8
    move-object v3, v0

    .line 411
    goto/16 :goto_0
.end method

.method private getAllSEContainerCategory()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 448
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v7, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-object v7

    .line 453
    :cond_1
    const-string v0, "content://com.sec.knox.provider/SeamsPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 454
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "getAllSEContainerCategory"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 455
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 457
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 459
    :cond_2
    const-string v0, "ClipboardDataMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllSEContainerCategory, cat result from query:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getAllSEContainerCategory"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v0, "getAllSEContainerCategory"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 463
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 472
    const-string v0, "ClipboardDataMgr"

    const-string v2, "getAllSEContainerCategory success, return res"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 466
    :cond_3
    const-string v0, "ClipboardDataMgr"

    const-string v2, "getAllSEContainerCategory query error, return -1"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    if-eqz v6, :cond_0

    .line 468
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getPersonaManager()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 153
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v0, :cond_0

    .line 161
    :goto_0
    return v1

    .line 156
    :cond_0
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v0, :cond_1

    .line 157
    const-string v0, "ClipboardDataMgr"

    const-string/jumbo v2, "personaManager is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    .line 161
    :cond_1
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getUserId()I
    .locals 4

    .prologue
    .line 165
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 166
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 167
    .local v1, "userId":I
    invoke-static {v1}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    const/4 v1, 0x0

    .line 169
    const-string v2, "ClipboardDataMgr"

    const-string v3, "getUserId is BBC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    return v1
.end method

.method private initializeClipboardDataMgr(I)V
    .locals 13
    .param p1, "size"    # I

    .prologue
    const/16 v12, 0x64

    const/4 v11, 0x0

    .line 219
    iput v11, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    .line 221
    new-instance v6, Ljava/io/File;

    const-string v8, "/data/clipboard"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .local v6, "rootPath":Ljava/io/File;
    const-string v8, "ClipboardDataMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ClipboardDefine.SUPPORT_KNOX :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Landroid/sec/clipboard/data/ClipboardConstants;->SUPPORT_KNOX:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v2, "clips.info"

    .line 228
    .local v2, "clipFile":Ljava/lang/String;
    new-instance v8, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v11, v10}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    iput-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    .line 229
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iput v11, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    .line 233
    const/4 v7, 0x0

    .line 234
    .local v7, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    if-eqz v8, :cond_4

    .line 235
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 236
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    .line 237
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 238
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v8

    if-nez v8, :cond_1

    .line 240
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v5, v8, Landroid/content/pm/UserInfo;->id:I

    .line 241
    .local v5, "id":I
    const-string v8, "ClipboardDataMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add multi user db...id :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "cat":I
    if-lt v5, v12, :cond_2

    const/16 v8, 0xc2

    if-gt v5, v8, :cond_2

    .line 244
    add-int/lit16 v0, v5, 0x3e8

    .line 245
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "ClipboardDataMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RS:add multi user db...cat :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    .line 237
    .end local v0    # "cat":I
    .end local v5    # "id":I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    .restart local v0    # "cat":I
    .restart local v5    # "id":I
    :cond_2
    if-eqz v5, :cond_1

    if-ge v5, v12, :cond_1

    invoke-virtual {p0, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v5}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 249
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "ClipboardDataMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "secondary user usecase :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_3
    add-int/lit16 v0, v5, 0x3e8

    .line 251
    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_1

    .line 257
    .end local v0    # "cat":I
    .end local v3    # "i":I
    .end local v5    # "id":I
    :cond_4
    const/4 v1, 0x0

    .line 258
    .local v1, "category":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getAllSEContainerCategory()Ljava/util/List;

    move-result-object v1

    .line 259
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 260
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 261
    .restart local v3    # "i":I
    invoke-direct {p0, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_2

    .line 264
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method


# virtual methods
.method public declared-synchronized addData(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 11
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v9, 0x0

    .line 624
    monitor-enter p0

    const/4 v1, 0x1

    .line 625
    .local v1, "Result":Z
    :try_start_0
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v5

    .line 626
    .local v5, "iSize":I
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_0

    .line 627
    move-object v0, p1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 628
    .local v7, "textValue":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    .line 659
    .end local v7    # "textValue":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return v8

    .line 634
    :cond_0
    const/4 v6, -0x1

    .line 635
    .local v6, "index":I
    :try_start_1
    iget v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    if-lt v5, v8, :cond_5

    .line 636
    add-int/lit8 v4, v5, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_2

    .line 637
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8, v4}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 638
    .local v2, "deleteData":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v2, :cond_4

    .line 639
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 640
    const-string v8, "ClipboardDataMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[addData] deleteData.GetProtectState() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_1
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v8

    if-nez v8, :cond_4

    .line 643
    move v6, v4

    .line 648
    .end local v2    # "deleteData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_2
    if-ltz v6, :cond_3

    .line 649
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8, v6}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v8

    iput-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Landroid/sec/clipboard/data/ClipboardData;

    .line 650
    invoke-virtual {p0, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    .line 651
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, p1}, Landroid/sec/clipboard/data/file/FileManager;->add(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    .end local v4    # "i":I
    :cond_3
    :goto_2
    move v8, v1

    .line 659
    goto :goto_0

    .line 636
    .restart local v2    # "deleteData":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v4    # "i":I
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 654
    .end local v2    # "deleteData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v4    # "i":I
    :cond_5
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, p1}, Landroid/sec/clipboard/data/file/FileManager;->add(ILandroid/sec/clipboard/data/ClipboardData;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_2

    .line 656
    :catch_0
    move-exception v3

    .line 657
    .local v3, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_2

    .line 624
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "iSize":I
    .end local v6    # "index":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    return-object v0
.end method

.method public findFileManagerIndex(I)I
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 267
    const-string v2, "ClipboardDataMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findFileManagerIndex. id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v1, 0x0

    .line 269
    .local v1, "mgr":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 270
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 271
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mgr":Landroid/sec/clipboard/data/file/FileManager;
    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    .line 272
    .restart local v1    # "mgr":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 273
    const-string v2, "ClipboardDataMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findFileManagerIndex. find DB... id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", i :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 270
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "i":I
    :cond_1
    const-string v2, "ClipboardDataMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not find file manager. id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getCurrentListOwnerUid()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    return v0
.end method

.method public getFileManagerList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/FileManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 12
    .param p1, "index"    # I

    .prologue
    .line 564
    iget-object v9, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v9}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v7

    .line 565
    .local v7, "myListSize":I
    const/4 v0, 0x0

    .line 566
    .local v0, "Result":Landroid/sec/clipboard/data/ClipboardData;
    if-ge p1, v7, :cond_1

    .line 567
    iget-object v9, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v9, p1}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    :cond_0
    :goto_0
    move-object v9, v0

    .line 598
    :goto_1
    return-object v9

    .line 569
    :cond_1
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaManager()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 570
    iget-object v9, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 571
    .local v1, "arrayListSize":I
    iget-object v9, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v9}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v3

    .line 573
    .local v3, "ids":[I
    if-eqz v3, :cond_0

    array-length v9, v3

    if-lez v9, :cond_0

    .line 574
    const/4 v5, 0x0

    .line 575
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/ClipboardData;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    move v8, v7

    .local v8, "totalSize":I
    const/4 v6, 0x0

    .local v6, "listSize":I
    const/4 v4, 0x0

    .local v4, "idsIndex":I
    :goto_2
    if-ge v2, v1, :cond_0

    .line 576
    array-length v9, v3

    if-ge v4, v9, :cond_4

    .line 577
    aget v9, v3, v4

    invoke-virtual {p0, v9}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getKnoxPolicy(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 578
    iget-object v9, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/sec/clipboard/data/file/FileManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClips(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 579
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 580
    add-int v9, v8, v6

    if-ge p1, v9, :cond_2

    .line 581
    const-string v9, "ClipboardDataMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "return : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-int v11, p1, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    sub-int v9, p1, v8

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/sec/clipboard/data/ClipboardData;

    goto :goto_1

    .line 584
    :cond_2
    add-int/2addr v8, v6

    .line 585
    const-string v9, "ClipboardDataMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "next : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v3, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :goto_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 588
    :cond_3
    const-string v9, "ClipboardDataMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not allow! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v3, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 591
    :cond_4
    const-string v9, "ClipboardDataMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "overflow! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getKnoxPolicy(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 416
    :try_start_0
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaManager()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

    if-nez v1, :cond_0

    .line 418
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    const-string/jumbo v2, "persona_policy"

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaPolicyManager;

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

    .line 421
    :cond_0
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

    if-eqz v1, :cond_1

    .line 422
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p1}, Landroid/os/PersonaPolicyManager;->isShareClipboardDataToOwnerAllowed(I)Z

    move-result v1

    .line 430
    :goto_0
    return v1

    .line 424
    :cond_1
    const-string v1, "ClipboardDataMgr"

    const-string/jumbo v2, "mPersonaPolicyManager is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getPersonaId()I
    .locals 2

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "userId":I
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v1, :cond_1

    .line 177
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaManager()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1}, Landroid/os/PersonaManager;->getFocusedUser()I

    move-result v0

    .line 185
    :goto_0
    return v0

    .line 180
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_0

    .line 183
    :cond_1
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getUserId()I

    move-result v0

    goto :goto_0
.end method

.method public getScrapItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 602
    const/4 v1, 0x0

    .line 604
    .local v1, "Result":Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v4

    .line 605
    .local v4, "userId":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .local v3, "nonDeletedlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/ClipboardData;>;"
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v5, v4}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClips(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 607
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/sec/clipboard/data/ClipboardData;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    .end local v3    # "nonDeletedlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/ClipboardData;>;"
    .end local v4    # "userId":I
    :goto_0
    return-object v1

    .line 608
    :catch_0
    move-exception v2

    .line 609
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getTopItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 11
    .param p1, "index"    # I

    .prologue
    const/4 v10, 0x0

    .line 752
    const/4 v3, 0x0

    .line 753
    .local v3, "latestData":Landroid/sec/clipboard/data/ClipboardData;
    const-wide/16 v6, 0x0

    .line 754
    .local v6, "timestamp":J
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 755
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v5, v10}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    .line 756
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v5, v10}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardData;->getTimestamp()J

    move-result-wide v6

    .line 757
    const-string v5, "ClipboardDataMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in own condtn"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_0
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v5}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v1

    .line 760
    .local v1, "ids":[I
    if-eqz v1, :cond_2

    .line 761
    const/4 v4, 0x0

    .line 762
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/ClipboardData;>;"
    const/4 v2, 0x0

    .line 763
    .local v2, "knoxData":Landroid/sec/clipboard/data/ClipboardData;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_2

    .line 764
    aget v5, v1, v0

    invoke-virtual {p0, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getKnoxPolicy(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 765
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v5, v10}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClips(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 766
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 767
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "knoxData":Landroid/sec/clipboard/data/ClipboardData;
    check-cast v2, Landroid/sec/clipboard/data/ClipboardData;

    .line 768
    .restart local v2    # "knoxData":Landroid/sec/clipboard/data/ClipboardData;
    const-string v5, "ClipboardDataMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "knoxdata"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getTimestamp()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-lez v5, :cond_1

    .line 770
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getTimestamp()J

    move-result-wide v6

    .line 771
    move-object v3, v2

    .line 772
    const-string v5, "ClipboardDataMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in knox condtn"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 778
    .end local v0    # "i":I
    .end local v2    # "knoxData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/ClipboardData;>;"
    :cond_2
    const-string v5, "ClipboardDataMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "before return latestdatal"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    return-object v3
.end method

.method public getdeletedItem()Landroid/sec/clipboard/data/ClipboardData;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Landroid/sec/clipboard/data/ClipboardData;

    return-object v0
.end method

.method public isManagedProfile(I)Z
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v8, -0x1

    .line 193
    const-wide/16 v2, -0x1

    .line 194
    .local v2, "origId":J
    const/4 v1, 0x0

    .line 196
    .local v1, "isManagedProfile":Z
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 197
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 198
    .local v4, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    .line 199
    const-string v5, "ClipboardDataMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isManagedProfile for userId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    cmp-long v5, v2, v8

    if-eqz v5, :cond_0

    .line 206
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 209
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    :goto_0
    const-string v5, "ClipboardDataMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isManagedProfile for userId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "ClipboardDataMgr"

    const-string v6, "isManagedProfile() Exception!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    const/4 v1, 0x0

    .line 205
    cmp-long v5, v2, v8

    if-eqz v5, :cond_0

    .line 206
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 205
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    cmp-long v6, v2, v8

    if-eqz v6, :cond_1

    .line 206
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    throw v5
.end method

.method public loadSEContainerDB(I)V
    .locals 4
    .param p1, "category"    # I

    .prologue
    .line 434
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardDataMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSEContainerDB, category:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", previous category:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 436
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v0

    .line 437
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 438
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    .line 439
    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    .line 445
    .end local v0    # "index":I
    :cond_1
    :goto_0
    return-void

    .line 441
    .restart local v0    # "index":I
    :cond_2
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "ClipboardDataMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSEContainerDB, findFileManagerIndex returned -1, create db, category :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_3
    invoke-direct {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    move-result-object v1

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_0
.end method

.method public multiUserMode(ILjava/lang/String;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x64

    const/4 v6, -0x1

    .line 318
    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "multiUserMode_Called mode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentListIndex :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "cat":I
    if-lt p1, v7, :cond_1

    const/16 v3, 0xc2

    if-gt p1, v3, :cond_1

    .line 323
    add-int/lit16 v0, p1, 0x3e8

    .line 329
    :goto_0
    if-eqz p2, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 330
    const-string v3, "ADDED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 331
    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    .line 361
    :cond_0
    :goto_1
    return-void

    .line 324
    :cond_1
    if-eqz p1, :cond_2

    if-ge p1, v7, :cond_2

    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p1}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 325
    add-int/lit16 v0, p1, 0x3e8

    goto :goto_0

    .line 327
    :cond_2
    move v0, p1

    goto :goto_0

    .line 332
    :cond_3
    const-string v3, "REMOVED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 333
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v1

    .line 334
    .local v1, "deleteIndex":I
    if-eq v1, v6, :cond_4

    .line 335
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/FileManager;

    .line 336
    .local v2, "mgr":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v2, :cond_0

    .line 337
    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager;->removeClipboardDB()V

    .line 338
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 339
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v0}, Landroid/sec/clipboard/data/file/FileManager;->resetOwnerClips(I)V

    goto :goto_1

    .line 342
    .end local v2    # "mgr":Landroid/sec/clipboard/data/file/FileManager;
    :cond_4
    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findFileManagerIndex return an invalid index. id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 344
    .end local v1    # "deleteIndex":I
    :cond_5
    const-string v3, "SWITCHED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 345
    iget v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    if-ne v0, v3, :cond_6

    .line 346
    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USER_SWITCHED, but same user : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", category: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentListIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 349
    :cond_6
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v3

    iput v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    .line 350
    iget v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    if-eq v3, v6, :cond_7

    .line 351
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    iget v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/data/file/FileManager;

    iput-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    .line 352
    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RS, multiUserMode, findFileManagerIndex returned index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", now getting relevant datalist with handleid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 354
    :cond_7
    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findFileManagerIndex return an invalid index. id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    goto/16 :goto_1

    .line 358
    :cond_8
    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "multiUserMode_Called wrong mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public reAddForKnox(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 6
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 738
    const-string v3, "ClipboardDataMgr"

    const-string/jumbo v4, "reAddForKnox"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/4 v2, 0x0

    .line 740
    .local v2, "listData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    .line 741
    .local v0, "dataListSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 742
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v1}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 743
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 744
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v1}, Landroid/sec/clipboard/data/file/FileManager;->reAddForKnox(I)V

    .line 745
    const-string v3, "ClipboardDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_0
    return-void

    .line 741
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->refresh()V

    .line 314
    :cond_0
    return-void
.end method

.method public removeAll()Z
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 663
    const-string v10, "ClipboardDataMgr"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "inside remove all method in data mgr mshared is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mIsShared:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v0, 0x0

    .line 665
    .local v0, "bRes":Z
    const/4 v9, 0x0

    .line 666
    .local v9, "ownRes":Z
    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v10

    if-nez v10, :cond_1

    move v6, v11

    .line 668
    .local v6, "isOwner":Z
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaManager()Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz v6, :cond_3

    .line 669
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v10}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v3

    .line 670
    .local v3, "ids":[I
    if-eqz v3, :cond_3

    .line 671
    const/4 v8, 0x0

    .line 672
    .local v8, "listSize":I
    const/4 v7, 0x0

    .line 673
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    const/4 v4, 0x0

    .local v4, "idsIndex":I
    :goto_1
    array-length v10, v3

    if-ge v4, v10, :cond_3

    .line 674
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/sec/clipboard/data/file/FileManager;

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClipsFromKnox(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 675
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 676
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 677
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_2
    if-ge v5, v8, :cond_2

    .line 678
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v10}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v10

    invoke-virtual {v10}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v10

    if-nez v10, :cond_0

    .line 679
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/sec/clipboard/data/file/WrapFileClipData;

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    .line 680
    const/4 v9, 0x1

    .line 677
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v2    # "i":I
    .end local v3    # "ids":[I
    .end local v4    # "idsIndex":I
    .end local v5    # "index":I
    .end local v6    # "isOwner":Z
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    .end local v8    # "listSize":I
    :cond_1
    move v6, v12

    .line 666
    goto :goto_0

    .line 673
    .restart local v2    # "i":I
    .restart local v3    # "ids":[I
    .restart local v4    # "idsIndex":I
    .restart local v6    # "isOwner":Z
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    .restart local v8    # "listSize":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 687
    .end local v2    # "i":I
    .end local v3    # "ids":[I
    .end local v4    # "idsIndex":I
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    .end local v8    # "listSize":I
    :cond_3
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    iget-boolean v13, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mIsShared:Z

    if-nez v13, :cond_5

    :goto_3
    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/sec/clipboard/data/file/FileManager;->removeAll(ZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 691
    :goto_4
    if-eqz v6, :cond_4

    if-eqz v9, :cond_4

    .line 692
    const/4 v0, 0x1

    .line 694
    :cond_4
    return v0

    :cond_5
    move v11, v12

    .line 687
    goto :goto_3

    .line 688
    :catch_0
    move-exception v1

    .line 689
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public removeData(I)Z
    .locals 13
    .param p1, "index"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 704
    const-string v8, "ClipboardDataMgr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "inside removeData method"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :try_start_0
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v6

    .line 708
    .local v6, "size":I
    if-ge p1, v6, :cond_2

    .line 709
    iget-object v11, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    iget-boolean v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mIsShared:Z

    if-nez v8, :cond_0

    move v8, v9

    :goto_0
    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v12

    invoke-virtual {v11, v8, v12, p1}, Landroid/sec/clipboard/data/file/FileManager;->remove(ZII)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v8

    if-eqz v8, :cond_1

    move v8, v9

    .line 734
    .end local v6    # "size":I
    :goto_1
    return v8

    .restart local v6    # "size":I
    :cond_0
    move v8, v10

    .line 709
    goto :goto_0

    :cond_1
    move v8, v10

    goto :goto_1

    .line 711
    :cond_2
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaManager()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 712
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 713
    .local v0, "arrayListSize":I
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v8}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v3

    .line 714
    .local v3, "ids":[I
    if-eqz v3, :cond_4

    array-length v8, v3

    if-lez v8, :cond_4

    .line 715
    const/4 v4, 0x0

    .line 716
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    move v7, v6

    .local v7, "totalSize":I
    const/4 v5, 0x0

    .local v5, "listSize":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 717
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/sec/clipboard/data/file/FileManager;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClipsFromKnox(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 718
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 719
    add-int v8, v7, v5

    if-ge p1, v8, :cond_3

    .line 720
    const-string v8, "ClipboardDataMgr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "return : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-int v12, p1, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    sub-int v8, p1, v7

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/sec/clipboard/data/file/WrapFileClipData;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    move v8, v9

    .line 722
    goto :goto_1

    .line 724
    :cond_3
    add-int/2addr v7, v5

    .line 725
    const-string v8, "ClipboardDataMgr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "next : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v3, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 731
    .end local v0    # "arrayListSize":I
    .end local v2    # "i":I
    .end local v3    # "ids":[I
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    .end local v5    # "listSize":I
    .end local v6    # "size":I
    .end local v7    # "totalSize":I
    :catch_0
    move-exception v1

    .line 732
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    move v8, v10

    .line 734
    goto/16 :goto_1
.end method

.method public removeScrapData(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V
    .locals 9
    .param p1, "dataList"    # Landroid/sec/clipboard/data/ClipboardDataMgr;
    .param p2, "userId"    # I

    .prologue
    const/16 v8, 0x64

    const/4 v7, -0x1

    .line 283
    const-string v4, "ClipboardDataMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "replaceWithTargetForUser : userId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "cat":I
    if-lt p2, v8, :cond_1

    const/16 v4, 0xc2

    if-gt p2, v4, :cond_1

    .line 286
    add-int/lit16 v0, p2, 0x3e8

    .line 292
    :goto_0
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v3

    .line 293
    .local v3, "targetId":I
    if-eq v3, v7, :cond_0

    .line 294
    const-string v4, "ClipboardDataMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "replaceWithTargetForUser : targetId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p1, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v2

    .line 296
    .local v2, "sourceId":I
    if-eq v2, v7, :cond_0

    .line 297
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    .line 298
    .local v1, "sourceDataList":Landroid/sec/clipboard/data/file/FileManager;
    const-string v4, "ClipboardDataMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 300
    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    .line 301
    iput v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    .line 304
    .end local v1    # "sourceDataList":Landroid/sec/clipboard/data/file/FileManager;
    .end local v2    # "sourceId":I
    :cond_0
    return-void

    .line 287
    .end local v3    # "targetId":I
    :cond_1
    if-eqz p2, :cond_2

    if-ge p2, v8, :cond_2

    invoke-virtual {p0, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p2}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 288
    add-int/lit16 v0, p2, 0x3e8

    goto :goto_0

    .line 290
    :cond_2
    move v0, p2

    goto :goto_0
.end method

.method public scrapSize()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public secontainerClipboardMode(Ljava/lang/String;I)V
    .locals 5
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "category"    # I

    .prologue
    .line 477
    const-string v2, "android.intent.action.SECONTAINER_REMOVED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 478
    invoke-virtual {p0, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v0

    .line 479
    .local v0, "deleteIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 480
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    .line 481
    .local v1, "mgr":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v1, :cond_0

    .line 482
    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->removeClipboardDB()V

    .line 483
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 484
    invoke-virtual {v1, p2}, Landroid/sec/clipboard/data/file/FileManager;->resetOwnerClips(I)V

    .line 493
    .end local v0    # "deleteIndex":I
    .end local v1    # "mgr":Landroid/sec/clipboard/data/file/FileManager;
    :cond_0
    :goto_0
    return-void

    .line 487
    .restart local v0    # "deleteIndex":I
    :cond_1
    const-string v2, "ClipboardDataMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findFileManagerIndex return an invalid index. id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 489
    .end local v0    # "deleteIndex":I
    :cond_2
    const-string v2, "android.intent.action.SECONTAINER_ADDED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    const-string v2, "ClipboardDataMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action secontainer added for category:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", creating clipboard db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-direct {p0, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_0
.end method

.method public setdeletedItem(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 808
    iput-object p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Landroid/sec/clipboard/data/ClipboardData;

    .line 809
    return-void
.end method

.method public sharedSize()I
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/data/file/FileManager;->sharedSize(I)I

    move-result v0

    .line 535
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 8

    .prologue
    .line 500
    const/4 v0, 0x0

    .line 502
    .local v0, "finalSize":I
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaManager()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v5

    if-nez v5, :cond_2

    .line 503
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v5}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v3

    .line 504
    .local v3, "ids":[I
    if-eqz v3, :cond_2

    .line 505
    const/4 v1, 0x0

    .line 506
    .local v1, "fm":Landroid/sec/clipboard/data/file/FileManager;
    const/4 v4, 0x0

    .line 507
    .local v4, "isAllowed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_2

    .line 508
    aget v5, v3, v2

    invoke-virtual {p0, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getKnoxPolicy(I)Z

    move-result v4

    .line 509
    const-string v5, "ClipboardDataMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "policy is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    if-eqz v4, :cond_0

    .line 512
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v2, :cond_1

    .line 513
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    .line 514
    .restart local v1    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v1, :cond_0

    .line 515
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/sec/clipboard/data/file/FileManager;->sharedSize(I)I

    move-result v5

    add-int/2addr v0, v5

    .line 507
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 518
    :cond_1
    const-string v5, "ClipboardDataMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data list is less than "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 525
    .end local v1    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    .end local v2    # "i":I
    .end local v3    # "ids":[I
    .end local v4    # "isAllowed":Z
    :cond_2
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v5, :cond_3

    .line 526
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v5

    add-int/2addr v0, v5

    .line 528
    .end local v0    # "finalSize":I
    :cond_3
    return v0
.end method

.method public updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "clipData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v1, 0x0

    .line 784
    if-eqz p2, :cond_1

    .line 785
    :try_start_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p1, p2}, Landroid/sec/clipboard/data/file/FileManager;->set(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 794
    :cond_0
    :goto_0
    return v1

    .line 787
    :cond_1
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 788
    const-string v2, "ClipboardDataMgr"

    const-string/jumbo v3, "updateData-ClipboardData is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateFotaClips(ILjava/util/ArrayList;)V
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/FileManager;

    .line 540
    .local v0, "fmg":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v0, :cond_1

    .line 541
    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v3

    .line 542
    .local v3, "size":I
    const/4 v4, 0x0

    .line 543
    .local v4, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    const-string v2, ""

    .line 544
    .local v2, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 545
    invoke-virtual {v0, v1}, Landroid/sec/clipboard/data/file/FileManager;->getWrap(I)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v4

    .line 546
    if-eqz v4, :cond_0

    .line 547
    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 548
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 549
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 550
    invoke-virtual {v4, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    .line 544
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 555
    .end local v1    # "i":I
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "size":I
    .end local v4    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_1
    return-void
.end method

.method public updateScrapData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "clipData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method
