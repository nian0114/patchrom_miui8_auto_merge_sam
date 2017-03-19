.class Lcom/android/providers/media/MediaProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DatabaseHelper"
.end annotation


# instance fields
.field mAlbumCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mArtistCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mEarlyUpgrade:Z

.field final mInternal:Z

.field final mName:Ljava/lang/String;

.field mNumDeletes:I

.field mNumInserts:I

.field mNumQueries:I

.field mNumUpdates:I

.field final mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

.field mScanStartTime:J

.field mScanStopTime:J

.field mUpgradeAttempted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "internal"    # Z
    .param p4, "earlyUpgrade"    # Z
    .param p5, "objectRemovedCallback"    # Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    .prologue
    .line 1421
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseVersion(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1415
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    .line 1416
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    .line 1422
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 1423
    iput-object p2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    .line 1424
    iput-boolean p3, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    .line 1425
    iput-boolean p4, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mEarlyUpgrade:Z

    .line 1426
    iput-object p5, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    .line 1427
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 1428
    return-void
.end method


# virtual methods
.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    .line 1463
    monitor-enter p0

    const/4 v1, 0x0

    .line 1464
    .local v1, "result":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1466
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1478
    :cond_0
    if-nez v1, :cond_1

    :try_start_2
    iget-boolean v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z

    if-eqz v2, :cond_1

    .line 1479
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1480
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 1482
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1467
    :catch_0
    move-exception v0

    .line 1468
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to open database : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1470
    iget-boolean v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_0

    .line 1471
    const/4 v2, 0x0

    goto :goto_0

    .line 1463
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v3, 0x0

    .line 1436
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->LGTVAS_DB:Z

    if-eqz v0, :cond_0

    const-string v0, "lgtvas.db"

    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/providers/media/MediaProvider;->getDatabaseVersion(Landroid/content/Context;)I

    move-result v1

    # invokes: Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V
    invoke-static {v0, p1, v3, v3, v1}, Lcom/android/providers/media/MediaProvider;->access$2000(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 1442
    :goto_0
    return-void

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->getDatabaseVersion(Landroid/content/Context;)I

    move-result v2

    # invokes: Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V
    invoke-static {v0, p1, v1, v3, v2}, Lcom/android/providers/media/MediaProvider;->access$2000(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V

    goto :goto_0
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 27
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1495
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 1580
    :cond_0
    return-void

    .line 1497
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mEarlyUpgrade:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 1500
    const-string v24, "_OBJECT_REMOVED"

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->addCustomFunction(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 1504
    :cond_2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 1507
    new-instance v9, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1508
    .local v9, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1510
    .local v18, "now":J
    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    move-result v24

    if-nez v24, :cond_3

    .line 1511
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "onOpen()::file.setLastModified(now) failed"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v7

    .line 1519
    .local v7, "databases":[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1520
    .local v8, "dbList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v4, v7

    .local v4, "arr$":[Ljava/lang/String;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_5

    aget-object v6, v4, v11

    .line 1521
    .local v6, "database":Ljava/lang/String;
    if-eqz v6, :cond_4

    const-string v24, ".db"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 1522
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1520
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1525
    .end local v6    # "database":Ljava/lang/String;
    :cond_5
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "databases":[Ljava/lang/String;
    check-cast v7, [Ljava/lang/String;

    .line 1527
    .restart local v7    # "databases":[Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1528
    array-length v5, v7

    .line 1529
    .local v5, "count":I
    const/4 v13, 0x3

    .line 1532
    .local v13, "limit":I
    const-wide v24, 0x134fd9000L

    sub-long v22, v18, v24

    .line 1533
    .local v22, "twoMonthsAgo":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v0, v7

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v10, v0, :cond_a

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    aget-object v25, v7, v10

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 1535
    .local v15, "other":Ljava/io/File;
    const-string v24, "internal.db"

    aget-object v25, v7, v10

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    invoke-virtual {v9, v15}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 1536
    :cond_6
    const/16 v24, 0x0

    aput-object v24, v7, v10

    .line 1537
    add-int/lit8 v5, v5, -0x1

    .line 1538
    invoke-virtual {v9, v15}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 1541
    add-int/lit8 v13, v13, -0x1

    .line 1533
    :cond_7
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1544
    :cond_8
    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v20

    .line 1545
    .local v20, "time":J
    cmp-long v24, v20, v22

    if-gez v24, :cond_7

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    aget-object v25, v7, v10

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1548
    const/16 v24, 0x0

    aput-object v24, v7, v10

    .line 1549
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 1571
    .end local v15    # "other":Ljava/io/File;
    .end local v20    # "time":J
    .local v14, "lruIndex":I
    .local v16, "lruTime":J
    :cond_9
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v14, v0, :cond_a

    .line 1573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    aget-object v25, v7, v14

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1574
    const/16 v24, 0x0

    aput-object v24, v7, v14

    .line 1575
    add-int/lit8 v5, v5, -0x1

    .line 1556
    .end local v14    # "lruIndex":I
    .end local v16    # "lruTime":J
    :cond_a
    if-le v5, v13, :cond_0

    .line 1557
    const/4 v14, -0x1

    .line 1558
    .restart local v14    # "lruIndex":I
    const-wide/16 v16, 0x0

    .line 1560
    .restart local v16    # "lruTime":J
    const/4 v10, 0x0

    :goto_3
    array-length v0, v7

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v10, v0, :cond_9

    .line 1561
    aget-object v24, v7, v10

    if-eqz v24, :cond_c

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    aget-object v25, v7, v10

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->lastModified()J

    move-result-wide v20

    .line 1563
    .restart local v20    # "time":J
    const-wide/16 v24, 0x0

    cmp-long v24, v16, v24

    if-eqz v24, :cond_b

    cmp-long v24, v20, v16

    if-gez v24, :cond_c

    .line 1564
    :cond_b
    move v14, v10

    .line 1565
    move-wide/from16 v16, v20

    .line 1560
    .end local v20    # "time":J
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_3
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldV"    # I
    .param p3, "newV"    # I

    .prologue
    const/4 v2, 0x0

    .line 1450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z

    .line 1452
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->LGTVAS_DB:Z

    if-eqz v0, :cond_0

    const-string v0, "lgtvas.db"

    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/providers/media/MediaProvider;->updateLGTDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V
    invoke-static {v0, p1, v2, p2, p3}, Lcom/android/providers/media/MediaProvider;->access$2100(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 1454
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V
    invoke-static {v0, p1, v2, p2, p3}, Lcom/android/providers/media/MediaProvider;->access$2000(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 1459
    :goto_0
    return-void

    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    # invokes: Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V
    invoke-static {v0, p1, v1, p2, p3}, Lcom/android/providers/media/MediaProvider;->access$2000(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V

    goto :goto_0
.end method
