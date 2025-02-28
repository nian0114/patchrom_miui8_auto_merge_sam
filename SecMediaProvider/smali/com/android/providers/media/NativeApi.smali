.class public Lcom/android/providers/media/NativeApi;
.super Ljava/lang/Object;
.source "NativeApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static native addAsKeyFace(III)V
.end method

.method protected static native addFaceDataToUngrouped(III)I
.end method

.method protected static native createFR(III)I
.end method

.method protected static native createFaceCacheMgr(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected static native createGroups(I)V
.end method

.method protected static native destroyFR(I)V
.end method

.method protected static native destroyFaceCacheMgr(I)V
.end method

.method protected static native destroyGroups(I)V
.end method

.method protected static native faceDetect(ILjava/lang/String;)I
.end method

.method protected static native faceDetectRelease(I)V
.end method

.method protected static native faceGroupMatch(III)I
.end method

.method protected static native generateFaceData(II)Z
.end method

.method protected static native getFaceBottom(II)I
.end method

.method protected static native getFaceCount(II)I
.end method

.method protected static getFaceFreeDataIndex(Landroid/net/Uri;Landroid/content/Context;)I
    .locals 10
    .param p0, "uriDB"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    .local v6, "begin":I
    const/4 v8, -0x1

    .line 17
    .local v8, "faceDataIndex":I
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v2, v3

    .line 40
    :goto_0
    return v2

    .line 19
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 20
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v9, "select face_data from faces order by face_data"

    .line 21
    .local v9, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 22
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 24
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 25
    const/4 v6, 0x0

    .line 27
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 28
    if-le v8, v6, :cond_5

    .line 37
    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    .line 38
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v2, v6

    .line 40
    goto :goto_0

    .line 32
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 33
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 37
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_6

    .line 38
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method protected static getFaceFreeDataIndexNoFeature(Landroid/net/Uri;Landroid/content/Context;)I
    .locals 10
    .param p0, "uriDB"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 44
    const/4 v6, -0x1

    .line 45
    .local v6, "begin":I
    const/4 v8, -0x1

    .line 46
    .local v8, "faceDataIndex":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 47
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v9, "select face_data from faces  where face_data<0 order by face_data desc"

    .line 48
    .local v9, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 49
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 51
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    const/4 v6, -0x1

    .line 54
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 55
    if-ge v8, v6, :cond_3

    .line 64
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 65
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 67
    :cond_2
    return v6

    .line 59
    :cond_3
    add-int/lit8 v6, v6, -0x1

    .line 60
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_4

    .line 65
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method protected static native getFaceId(III)I
.end method

.method protected static native getFaceLeft(II)I
.end method

.method protected static native getFaceRight(II)I
.end method

.method protected static native getFaceTop(II)I
.end method

.method protected static native getGroupCount(I)I
.end method

.method protected static native getRawData(I)I
.end method

.method protected static getStringById(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 70
    const/4 v9, 0x0

    .line 71
    .local v9, "value":Ljava/lang/String;
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v10, v9

    .line 81
    .end local v9    # "value":Ljava/lang/String;
    .local v10, "value":Ljava/lang/String;
    :goto_0
    return-object v10

    .line 73
    .end local v10    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_1
    new-array v2, v0, [Ljava/lang/String;

    aput-object p2, v2, v1

    const-string v3, "_id=?"

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 75
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 78
    :cond_2
    if-eqz v8, :cond_3

    .line 79
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v10, v9

    .line 81
    .end local v9    # "value":Ljava/lang/String;
    .restart local v10    # "value":Ljava/lang/String;
    goto :goto_0

    .line 78
    .end local v10    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 79
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method protected static native groupMatch(III)I
.end method

.method protected static native groupMatchEx(III)I
.end method

.method protected static native loadGroup(I[IIZ)I
.end method

.method protected static native prepareUngroupedData(I[I[II)V
.end method

.method protected static native saveFace(II)V
.end method

.method protected static native setFaceThumbnaislSize(II)V
.end method

.method protected static native unLoadGroup(II)V
.end method
