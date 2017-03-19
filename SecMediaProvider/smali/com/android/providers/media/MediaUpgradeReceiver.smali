.class public Lcom/android/providers/media/MediaUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaUpgradeReceiver.java"


# static fields
.field static final PREF_DB_VERSION:Ljava/lang/String; = "db_version"

.field static final TAG:Ljava/lang/String; = "MediaUpgradeReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    const-string v3, "MediaUpgradeReceiver"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 52
    .local v14, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "db_version"

    const/4 v5, 0x0

    invoke-interface {v14, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 53
    .local v13, "prefVersion":I
    invoke-static/range {p1 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseVersion(Landroid/content/Context;)I

    move-result v10

    .line 54
    .local v10, "dbVersion":I
    if-ne v13, v10, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "db_version"

    invoke-interface {v3, v5, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    :try_start_0
    const-string v3, "foo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 61
    .local v9, "dbDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v11

    .line 62
    .local v11, "files":[Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 63
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    array-length v3, v11

    if-ge v12, v3, :cond_0

    .line 64
    aget-object v4, v11, v12

    .line 65
    .local v4, "file":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->isMediaDatabaseName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 67
    .local v16, "startTime":J
    const-string v3, "MediaUpgradeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---> Start upgrade of media database "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    const/4 v8, 0x0

    .line 70
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    new-instance v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->isInternalMediaDatabaseName(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 73
    .local v2, "helper":Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    invoke-virtual {v2}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 77
    if-eqz v8, :cond_2

    .line 78
    :try_start_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 81
    .end local v2    # "helper":Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :cond_2
    :goto_2
    const-string v3, "MediaUpgradeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<--- Finished upgrade of media database "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v16

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 63
    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v16    # "startTime":J
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 74
    .restart local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v16    # "startTime":J
    :catch_0
    move-exception v15

    .line 75
    .local v15, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v3, "MediaUpgradeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during upgrade of media db "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v15}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    if-eqz v8, :cond_2

    .line 78
    :try_start_4
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 85
    .end local v4    # "file":Ljava/lang/String;
    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "dbDir":Ljava/io/File;
    .end local v11    # "files":[Ljava/lang/String;
    .end local v12    # "i":I
    .end local v15    # "t":Ljava/lang/Throwable;
    .end local v16    # "startTime":J
    :catch_1
    move-exception v15

    .line 87
    .restart local v15    # "t":Ljava/lang/Throwable;
    const-string v3, "MediaUpgradeReceiver"

    const-string v5, "Error during upgrade attempt."

    invoke-static {v3, v5, v15}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 77
    .end local v15    # "t":Ljava/lang/Throwable;
    .restart local v4    # "file":Ljava/lang/String;
    .restart local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "dbDir":Ljava/io/File;
    .restart local v11    # "files":[Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v16    # "startTime":J
    :catchall_0
    move-exception v3

    if-eqz v8, :cond_4

    .line 78
    :try_start_5
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v3
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
.end method
